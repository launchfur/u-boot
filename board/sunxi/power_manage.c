/*
 * Copyright (C) 2019 Allwinner.
 * weidonghui <weidonghui@allwinnertech.com>
 *
 * SPDX-License-Identifier: GPL-2.0+
 */

#include <sunxi_power/power_manage.h>
#include <sys_config.h>
#include <sunxi_board.h>
#include <spare_head.h>
#include <sunxi_display2.h>
#include <console.h>
/*
 * Global data (for the gd->bd)
 */
DECLARE_GLOBAL_DATA_PTR;

//直接代码修改，不用dts那套;;;
#define SAFE_VOLTAGE 3300  

int set_gpio_bias(void)
{
	char bias_name[32];
	int bias_vol;
	int val;
	int nodeoffset = -1, offset;
	const struct fdt_property *prop;
	const char *pname;
	const int *pdata;
	nodeoffset = fdt_path_offset(working_fdt, FDT_PATH_GPIO_BIAS);
	for (offset = fdt_first_property_offset(working_fdt, nodeoffset);
	     offset > 0; offset = fdt_next_property_offset(working_fdt, offset)) {
		prop  = fdt_get_property_by_offset(working_fdt, offset, NULL);
		pname = fdt_string(working_fdt, fdt32_to_cpu(prop->nameoff));
		pdata = (const int *)prop->data;
		bias_vol = fdt32_to_cpu(pdata[0]);
		memset(bias_name, 0, sizeof(bias_name));
		strcpy(bias_name, pname);
		if (strstr((const char *)bias_name, "bias") == NULL) {
			continue;
		}
		printf("bias_name:%s\t bias_vol:%d\n", bias_name, bias_vol);
		if (bias_name[1] == 'l') {
			val = readl(SUNXI_R_PIO_BASE + 0x340);
			if (bias_vol <= 1800) {
				val |= (1 << 0);
			} else {
				val &= ~(1 << 0);
			}
			writel(val, SUNXI_R_PIO_BASE + 0x340);
		} else if ((bias_name[1] <= 'j') && (bias_name[1] >= 'a')) {
			val = readl(SUNXI_PIO_BASE + 0x340);
			if (bias_vol <= 1800) {
				val |= (1 << (bias_name[1] - 'a'));
			} else {
				val &= ~(1 << (bias_name[1] - 'a'));
			}
			writel(val, SUNXI_PIO_BASE + 0x340);
		}
	}
	return 0;

}

int axp_set_power_supply_output(void)
{
	int onoff;
	char power_name[32];
	int power_vol;
	int power_vol_d;
	int nodeoffset = -1, offset;
	const struct fdt_property *prop;
	const char *pname;
	const int *pdata;
#ifndef CONFIG_GPIO_BIAS_SKIP
	set_gpio_bias();
#endif

#ifdef CONFIG_SUNXI_TRY_POWER_SPLY
	char axp_name[16] = {0}, chipid;
	char axp_sply_path[64] = {0};
	pmu_get_info(axp_name, (unsigned char *)&chipid);
	sprintf(axp_sply_path, "/soc/%s_power_sply", axp_name);
	nodeoffset = fdt_path_offset(working_fdt, axp_sply_path);
#endif
	if (nodeoffset < 0) {
		nodeoffset = fdt_path_offset(working_fdt, FDT_PATH_POWER_SPLY);
	}
	for (offset = fdt_first_property_offset(working_fdt, nodeoffset);
	     offset > 0; offset = fdt_next_property_offset(working_fdt, offset))

	{
		prop  = fdt_get_property_by_offset(working_fdt, offset, NULL);
		pname = fdt_string(working_fdt, fdt32_to_cpu(prop->nameoff));
		pdata = (const int *)prop->data;
		power_vol = fdt32_to_cpu(pdata[0]);
		memset(power_name, 0, sizeof(power_name));
		strcpy(power_name, pname);
		if (strstr((const char *)power_name, "vol") == NULL) {
			continue;
		}

		onoff       = -1;
		power_vol_d = 0;

		if (power_vol > 10000) {
			onoff       = 1;
			power_vol_d = power_vol % 10000;
		} else if (power_vol >= 0) {
			onoff       = 0;
			power_vol_d = power_vol;
		}
		debug("%s = %d, onoff=%d\n", power_name, power_vol_d, onoff);

		if (pmu_set_voltage(power_name, power_vol_d, onoff)) {
			debug("axp set %s to %d failed\n", power_name,
			       power_vol_d);
		}

		pr_msg("%s = %d, onoff=%d\n", power_name, pmu_get_voltage(power_name), onoff);

	}

	return 0;
}

int axp_set_charge_vol_limit(char *dev)
{
	int limit_vol = 0;
	if (strstr(dev, "vol") == NULL) {
		debug("Illegal string");
		return -1;
	}
	if (script_parser_fetch(FDT_PATH_CHARGER0, dev, &limit_vol, 1)) {
		return -1;
	}
	pmu_set_bus_vol_limit(limit_vol);
	return 0;
}

int axp_set_current_limit(char *dev)
{
	int limit_cur = 0;
	if (strstr(dev, "cur") == NULL) {
		debug("Illegal string");
		return -1;
	}
	if (script_parser_fetch(FDT_PATH_CHARGER0, dev, &limit_cur, 1)) {
		return -1;
	}
	if (!strncmp(dev, "pmu_runtime_chgcur", sizeof("pmu_runtime_chgcur")) ||
	    !strncmp(dev, "pmu_suspend_chgcur", sizeof("pmu_suspend_chgcur"))) {
		bmu_set_charge_current_limit(limit_cur);
	} else {
		bmu_set_vbus_current_limit(limit_cur);
	}
	return 0;
}



#if 0
void flash_charge_led(void)
{
	unsigned char i = 6;
	unsigned char value = pmu_get_reg_value(0x32);
	value &= ~(0x01 << 3);
	pmu_set_reg_value(0x32, value);
	while(i--){
		if(i%2 == 0){
			pmu_set_reg_value(0x32, value | (0x03 << 5));
		}else{
			pmu_set_reg_value(0x32, value & ~(0x03 << 5));
		}
		mdelay(300);
	}

	pmu_set_reg_value(0x32, value & ~(0x03 << 5));
	pmu_set_reg_value(0x32, value | (0x01 << 3));// crontrl by REG32;
}
#endif

int axp_get_battery_status(void)
{
	int dcin_exist, bat_vol;
	int ratio;
	int safe_vol = 0;
	dcin_exist   = bmu_get_axp_bus_exist();
	bat_vol      = bmu_get_battery_vol();
//	script_parser_fetch(FDT_PATH_CHARGER0, "pmu_safe_vol", &safe_vol, -1);
	/*开机保护保护电压  */
	safe_vol = SAFE_VOLTAGE;// 
	ratio = bmu_get_battery_capacity();
	tick_printf("bat_vol=%d, ratio=%d,safe_vol =%d,dcin_exist =%d\n", bat_vol, ratio,safe_vol,dcin_exist);	
	if(dcin_exist)
		gd->chargemode = 1;
	
	if ((ratio < 1 || bat_vol < safe_vol )  && dcin_exist == 0) {
		// 电池电压小于  3.3 v 和电量 为0  都不让开机
		return BATTERY_RATIO_TOO_LOW_WITHOUT_DCIN;
	} else {
		//接了充电器直接开机
		return BATTERY_RATIO_ENOUGH;
	}

}

int sunxi_bat_low_vol_handle(void)
{
	int i = 0, safe_vol = 0;
	int onoff = DISP_LCD_BACKLIGHT_ENABLE;
	__maybe_unused char arg[3] = {0};
	int bat_vol      = bmu_get_battery_vol();
	//script_parser_fetch(FDT_PATH_CHARGER0, "pmu_safe_vol", &safe_vol, -1);
	safe_vol = SAFE_VOLTAGE;
	while (bat_vol < safe_vol) {
		bat_vol = bmu_get_battery_vol();
		if (onoff == DISP_LCD_BACKLIGHT_ENABLE) {
			if (i++ >= 500) {
				i = 0;
				onoff = DISP_LCD_BACKLIGHT_DISABLE;
				pr_notice("onoff:DISP_LCD_BACKLIGHT_DISABLE\n");
				pr_force("bat_vol:%dmV\tsafe_vol:%dmV\n", bat_vol, safe_vol);
#ifdef CONFIG_DISP2_SUNXI
				disp_ioctl(NULL, onoff, (void *)arg);
#endif
			}
		} else {
			if (pmu_get_key_irq() > 0) {
				i = 0;
				onoff = DISP_LCD_BACKLIGHT_ENABLE;
				pr_notice("onoff:DISP_LCD_BACKLIGHT_ENABLE\n");
				pr_force("bat_vol:%dmV\tsafe_vol:%dmV\n", bat_vol, safe_vol);
#ifdef CONFIG_DISP2_SUNXI
				disp_ioctl(NULL, onoff, (void *)arg);
#endif
			}
		}
		if (ctrlc())
			break;
		mdelay(10);
	}
	return 0;
}


int axp_battery_status_handle(void)
{
	int battery_status;
#ifdef CONFIG_AXP_LATE_INFO
	battery_status = axp_get_battery_status();
#else
	battery_status = gd->pmu_runtime_chgcur;
#endif
	tick_printf("battery_status :: =%d \n",battery_status);
	 if(gd->chargemode == 1) {
		if ((battery_status == BATTERY_RATIO_TOO_LOW_WITH_DCIN_VOL_TOO_LOW)
			|| (battery_status == BATTERY_RATIO_TOO_LOW_WITHOUT_DCIN)) {

#ifdef CONFIG_CMD_SUNXI_BMP
			sunxi_bmp_display("bat\\bat0.bmp");
#endif
#if 0
			tick_printf("battery ratio is low with dcin,to be shutdown\n");
			mdelay(3000);
			sunxi_board_shutdown();
#else
			sunxi_bat_low_vol_handle();
#endif
		} else {
#ifdef CONFIG_CMD_SUNXI_BMP
			//sunxi_bmp_display("bat\\battery_charge.bmp"); 
#endif
		}
	} else if (battery_status == BATTERY_RATIO_TOO_LOW_WITHOUT_DCIN) {
#ifdef CONFIG_CMD_SUNXI_BMP
		sunxi_bmp_display("bat\\low_pwr.bmp");
#endif
		tick_printf("battery ratio is low without dcin,to be shutdown\n");
		mdelay(3000);
		sunxi_board_shutdown();
	}
	return 0;
}

int axp_set_vol(char *name, uint onoff)
{
	return pmu_set_voltage(name, 0, onoff);
}


int sunxi_update_axp_info(void)
{
	int val = -1;
	char bootreason[16] = {0};
#ifdef CONFIG_SUNXI_BMU
#ifdef CONFIG_AXP_LATE_INFO
	val = bmu_get_poweron_source();
#else
	val = gd->pmu_saved_status;
#endif
#endif
	if ((val == -1) && (pmu_get_sys_mode() == SUNXI_CHARGING_FLAG)) {
		val = AXP_BOOT_SOURCE_CHARGER;
		pmu_set_sys_mode(0);
	}
	switch (val) {
	case AXP_BOOT_SOURCE_BUTTON:
		strncpy(bootreason, "button", sizeof("button"));
		break;
	case AXP_BOOT_SOURCE_IRQ_LOW:
		strncpy(bootreason, "irq", sizeof("irq"));
		break;
	case AXP_BOOT_SOURCE_VBUS_USB:
		strncpy(bootreason, "usb", sizeof("usb"));
		break;
	case AXP_BOOT_SOURCE_CHARGER:
		strncpy(bootreason, "charger", sizeof("charger"));
		break;
	case AXP_BOOT_SOURCE_BATTERY:
		strncpy(bootreason, "battery", sizeof("battery"));
		break;
	default:
		strncpy(bootreason, "unknow", sizeof("unknow"));
		break;
	}
	tick_printf("youxuepai::bootreason--%s\n",bootreason);
	env_set("bootreason", bootreason);
	//env_set("keyphoto","qunidaye2");
	return 0;
}


int do_sunxi_axp(cmd_tbl_t *cmdtp, int flag, int argc, char *const argv[])
{
	u8 reg_addr;
	u8 reg_value;
	if (argc < 4)
		return -1;
	reg_addr = (u8)simple_strtoul(argv[3], NULL, 16);
	if (!strncmp(argv[1], "pmu", 3)) {
#ifdef CONFIG_SUNXI_PMU
		if (!strncmp(argv[2], "read", 4)) {
			printf("pmu_value:0x%x\n", pmu_get_reg_value(reg_addr));
		} else if (!strncmp(argv[2], "write", 5)) {
			reg_value = (u8)simple_strtoul(argv[4], NULL, 16);
			printf("pmu_value:0x%x\n", pmu_set_reg_value(reg_addr, reg_value));
		} else {
			printf("input error\n");
			return -1;
		}
#endif
	} else if (!strncmp(argv[1], "bmu", 3)) {
#ifdef CONFIG_SUNXI_BMU
		if (!strncmp(argv[2], "read", 4)) {
			printf("bmu_value:0x%x\n", bmu_get_reg_value(reg_addr));
		} else if (!strncmp(argv[2], "write", 5)) {
			reg_value = (u8)simple_strtoul(argv[4], NULL, 16);
			printf("bmu_value:0x%x\n", bmu_set_reg_value(reg_addr, reg_value));
		} else {
			printf("input error\n");
			return -1;
		}
#endif
	} else {
		printf("input error\n");
		return -1;
	}
	return 0;
}

U_BOOT_CMD(sunxi_axp, 6, 1, do_sunxi_axp, "sunxi_axp sub-system",
	"sunxi_axp <pmu/bmu> <read> <reg_addr>\n"
	"sunxi_axp <pmu/bmu> <write> <reg_addr> <reg_value>\n");


