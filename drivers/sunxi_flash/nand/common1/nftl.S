/*
 * Copyright 2000-2019
 * SPDX-License-Identifier: GPL-2.0
 */
	.arch armv7-a
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 4
	.eabi_attribute 34, 0
	.eabi_attribute 18, 2
	.file	"nftl.c"
	.section	.text._nand_sector_read,"ax",%progbits
	.align	1
	.global	_nand_sector_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nand_sector_read, %function
_nand_sector_read:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #0
	bx	lr
	.size	_nand_sector_read, .-_nand_sector_read
	.section	.text._nand_flush_sector_write_cache,"ax",%progbits
	.align	1
	.global	_nand_flush_sector_write_cache
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nand_flush_sector_write_cache, %function
_nand_flush_sector_write_cache:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #0
	bx	lr
	.size	_nand_flush_sector_write_cache, .-_nand_flush_sector_write_cache
	.section	.text._shutdown_op,"ax",%progbits
	.align	1
	.global	_shutdown_op
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_shutdown_op, %function
_shutdown_op:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #0
	bx	lr
	.size	_shutdown_op, .-_shutdown_op
	.section	.text._nftl_nand_erase_superblk,"ax",%progbits
	.align	1
	.global	_nftl_nand_erase_superblk
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nftl_nand_erase_superblk, %function
_nftl_nand_erase_superblk:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, lr}
	ldr	r3, [r0]
	ldr	r0, [r3, #4]
	ldrh	r3, [r1, #2]
	strh	r3, [sp, #2]	@ movhi
	ldrh	r3, [r1]
	strh	r3, [sp]	@ movhi
	ldrh	r3, [r1, #4]
	strh	r3, [sp, #4]	@ movhi
	ldr	r3, [r1, #8]
	str	r3, [sp, #8]
	ldr	r3, [r1, #12]
	mov	r1, sp
	str	r3, [sp, #12]
	ldr	r3, [r0, #84]
	blx	r3
	add	sp, sp, #20
	@ sp needed
	ldr	pc, [sp], #4
	.size	_nftl_nand_erase_superblk, .-_nftl_nand_erase_superblk
	.section	.text._nftl_nand_is_blk_good,"ax",%progbits
	.align	1
	.global	_nftl_nand_is_blk_good
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nftl_nand_is_blk_good, %function
_nftl_nand_is_blk_good:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, lr}
	ldr	r3, [r0]
	ldr	r0, [r3, #4]
	ldrh	r3, [r1, #2]
	strh	r3, [sp, #2]	@ movhi
	ldrh	r3, [r1]
	strh	r3, [sp]	@ movhi
	ldrh	r3, [r1, #4]
	strh	r3, [sp, #4]	@ movhi
	ldr	r3, [r1, #8]
	str	r3, [sp, #8]
	ldr	r3, [r1, #12]
	mov	r1, sp
	str	r3, [sp, #12]
	ldr	r3, [r0, #96]
	blx	r3
	add	sp, sp, #20
	@ sp needed
	ldr	pc, [sp], #4
	.size	_nftl_nand_is_blk_good, .-_nftl_nand_is_blk_good
	.section	.text._nftl_nand_mark_bad_blk,"ax",%progbits
	.align	1
	.global	_nftl_nand_mark_bad_blk
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nftl_nand_mark_bad_blk, %function
_nftl_nand_mark_bad_blk:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, lr}
	ldr	r3, [r0]
	ldr	r0, [r3, #4]
	ldrh	r3, [r1, #2]
	strh	r3, [sp, #2]	@ movhi
	ldrh	r3, [r1]
	strh	r3, [sp]	@ movhi
	ldrh	r3, [r1, #4]
	strh	r3, [sp, #4]	@ movhi
	ldr	r3, [r1, #8]
	str	r3, [sp, #8]
	ldr	r3, [r1, #12]
	mov	r1, sp
	str	r3, [sp, #12]
	ldr	r3, [r0, #100]
	blx	r3
	add	sp, sp, #20
	@ sp needed
	ldr	pc, [sp], #4
	.size	_nftl_nand_mark_bad_blk, .-_nftl_nand_mark_bad_blk
	.section	.text.dumphex,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	dumphex, %function
dumphex:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, r1
	ldr	r7, .L10
	sub	sp, sp, #56
	mov	r4, r0
	movs	r5, #0
	ldr	r8, .L10+8
.L8:
	cmp	r5, r6
	add	r4, r4, #16
	bcc	.L9
	ldr	r0, .L10+4
	add	sp, sp, #56
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	NAND_Print
.L9:
	mov	r1, r5
	mov	r0, r7
	bl	NAND_Print
	ldrb	r0, [r4, #-1]	@ zero_extendqisi2
	adds	r5, r5, #16
	ldrb	r3, [r4, #-14]	@ zero_extendqisi2
	ldrb	r2, [r4, #-15]	@ zero_extendqisi2
	ldrb	r1, [r4, #-16]	@ zero_extendqisi2
	str	r0, [sp, #48]
	ldrb	r0, [r4, #-2]	@ zero_extendqisi2
	str	r0, [sp, #44]
	ldrb	r0, [r4, #-3]	@ zero_extendqisi2
	str	r0, [sp, #40]
	ldrb	r0, [r4, #-4]	@ zero_extendqisi2
	str	r0, [sp, #36]
	ldrb	r0, [r4, #-5]	@ zero_extendqisi2
	str	r0, [sp, #32]
	ldrb	r0, [r4, #-6]	@ zero_extendqisi2
	str	r0, [sp, #28]
	ldrb	r0, [r4, #-7]	@ zero_extendqisi2
	str	r0, [sp, #24]
	ldrb	r0, [r4, #-8]	@ zero_extendqisi2
	str	r0, [sp, #20]
	ldrb	r0, [r4, #-9]	@ zero_extendqisi2
	str	r0, [sp, #16]
	ldrb	r0, [r4, #-10]	@ zero_extendqisi2
	str	r0, [sp, #12]
	ldrb	r0, [r4, #-11]	@ zero_extendqisi2
	str	r0, [sp, #8]
	ldrb	r0, [r4, #-12]	@ zero_extendqisi2
	str	r0, [sp, #4]
	ldrb	r0, [r4, #-13]	@ zero_extendqisi2
	str	r0, [sp]
	mov	r0, r8
	bl	NAND_Print
	b	.L8
.L11:
	.align	2
.L10:
	.word	.LC5
	.word	.LC7
	.word	.LC6
	.size	dumphex, .-dumphex
	.section	.text._nftl_nand_read_page,"ax",%progbits
	.align	1
	.global	_nftl_nand_read_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nftl_nand_read_page, %function
_nftl_nand_read_page:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r4, r0
	ldr	r2, [r4, #1968]
	sub	sp, sp, #20
	ldr	r3, [r0]
	ldr	r0, [r3, #4]
	ldrd	r3, r5, [r2, #80]
	adds	r3, r3, #1
	adc	r5, r5, #0
	strd	r3, r5, [r2, #80]
	ldrh	r3, [r1, #2]
	strh	r3, [sp, #2]	@ movhi
	ldrh	r3, [r1]
	strh	r3, [sp]	@ movhi
	ldrh	r3, [r1, #4]
	strh	r3, [sp, #4]	@ movhi
	ldr	r3, [r1, #8]
	str	r3, [sp, #8]
	ldr	r3, [r1, #12]
	mov	r1, sp
	str	r3, [sp, #12]
	ldr	r3, [r0, #88]
	blx	r3
	adds	r3, r0, #2
	itttt	eq
	ldreq	r2, [r4, #1968]
	ldreq	r3, [r2, #132]
	addeq	r3, r3, #1
	streq	r3, [r2, #132]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, pc}
	.size	_nftl_nand_read_page, .-_nftl_nand_read_page
	.section	.text._nftl_nand_write_page,"ax",%progbits
	.align	1
	.global	_nftl_nand_write_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nftl_nand_write_page, %function
_nftl_nand_write_page:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r4, r0
	ldr	r3, [r0]
	sub	sp, sp, #20
	ldr	r2, [r4, #1968]
	ldr	r0, [r3, #4]
	ldrd	r3, r5, [r2, #88]
	adds	r3, r3, #1
	adc	r5, r5, #0
	strd	r3, r5, [r2, #88]
	ldrh	r3, [r1, #2]
	strh	r3, [sp, #2]	@ movhi
	ldrh	r3, [r1]
	strh	r3, [sp]	@ movhi
	ldrh	r3, [r1, #4]
	strh	r3, [sp, #4]	@ movhi
	ldr	r3, [r1, #8]
	str	r3, [sp, #8]
	ldr	r3, [r1, #12]
	mov	r1, sp
	str	r3, [sp, #12]
	ldr	r3, [r0, #92]
	blx	r3
	cbz	r0, .L14
	ldr	r2, [r4, #1968]
	ldr	r3, [r2, #136]
	adds	r3, r3, #1
	str	r3, [r2, #136]
.L14:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, pc}
	.size	_nftl_nand_write_page, .-_nftl_nand_write_page
	.section	.text._nand_sector_write,"ax",%progbits
	.align	1
	.global	_nand_sector_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nand_sector_write, %function
_nand_sector_write:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #0
	bx	lr
	.size	_nand_sector_write, .-_nand_sector_write
	.section	.text.add_free_list,"ax",%progbits
	.align	1
	.global	add_free_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	add_free_list, %function
add_free_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	adds	r0, r0, #152
	push	{r4, lr}
.L21:
	ldr	r3, [r0, #20]
	cbnz	r3, .L23
	str	r1, [r0, #20]
	str	r3, [r1, #20]
	b	.L25
.L23:
	ldrh	r2, [r3, #6]
	ldrh	r4, [r1, #6]
	cmp	r4, r2
	bhi	.L24
	str	r1, [r3, #24]
	str	r3, [r1, #20]
	str	r1, [r0, #20]
.L25:
	str	r0, [r1, #24]
	movs	r0, #0
	pop	{r4, pc}
.L24:
	mov	r0, r3
	b	.L21
	.size	add_free_list, .-add_free_list
	.section	.text.del_free_list,"ax",%progbits
	.align	1
	.global	del_free_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	del_free_list, %function
del_free_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	ldr	r0, [r0, #172]
	cbz	r0, .L26
	ldr	r2, [r0, #20]
	str	r2, [r3, #172]
	ldr	r2, [r0, #20]
	str	r2, [r3, #172]
	ldr	r2, [r0, #20]
	cbz	r2, .L26
	adds	r3, r3, #152
	str	r3, [r2, #24]
.L26:
	bx	lr
	.size	del_free_list, .-del_free_list
	.section	.text.del_free_list_by_block,"ax",%progbits
	.align	1
	.global	del_free_list_by_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	del_free_list_by_block, %function
del_free_list_by_block:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #172]
.L34:
	cbnz	r0, .L37
	bx	lr
.L37:
	cmp	r0, r1
	ldr	r3, [r0, #20]
	bne	.L38
	ldr	r2, [r0, #24]
	str	r3, [r2, #20]
	ldr	r3, [r0, #20]
	cbz	r3, .L35
	str	r2, [r3, #24]
.L35:
	movs	r3, #0
	strd	r3, r3, [r0, #20]
	bx	lr
.L38:
	mov	r0, r3
	b	.L34
	.size	del_free_list_by_block, .-del_free_list_by_block
	.section	.text.is_block_in_free_list,"ax",%progbits
	.align	1
	.global	is_block_in_free_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_block_in_free_list, %function
is_block_in_free_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #172]
.L43:
	cbnz	r0, .L45
	bx	lr
.L45:
	cmp	r0, r1
	beq	.L46
	ldr	r0, [r0, #20]
	b	.L43
.L46:
	movs	r0, #1
	bx	lr
	.size	is_block_in_free_list, .-is_block_in_free_list
	.section	.text.print_free_list,"ax",%progbits
	.align	1
	.global	print_free_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	print_free_list, %function
print_free_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #356]
	push	{r4, r5, r6, lr}
	mov	r4, r0
	cbz	r3, .L47
	ldr	r0, .L52
	bl	NAND_Print_DBG
	ldr	r5, .L52+4
	ldr	r4, [r4, #172]
	ldr	r6, .L52+8
.L49:
	cbnz	r4, .L50
.L47:
	pop	{r4, r5, r6, pc}
.L50:
	ldrh	r2, [r4, #6]
	mov	r0, r5
	ldrh	r1, [r4]
	bl	NAND_Print_DBG
	ldr	r1, [r4, #8]
	mov	r0, r6
	bl	NAND_Print_DBG
	ldrh	r1, [r4, #2]
	ldr	r0, .L52+12
	bl	NAND_Print_DBG
	ldr	r4, [r4, #20]
	b	.L49
.L53:
	.align	2
.L52:
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.size	print_free_list, .-print_free_list
	.section	.text.add_block_invalid_list,"ax",%progbits
	.align	1
	.global	add_block_invalid_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	add_block_invalid_list, %function
add_block_invalid_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	adds	r0, r0, #188
	push	{r4, lr}
.L55:
	ldr	r3, [r0, #12]
	cbnz	r3, .L57
	str	r1, [r0, #12]
	str	r3, [r1, #12]
	b	.L59
.L57:
	ldrh	r2, [r3, #4]
	ldrh	r4, [r1, #4]
	cmp	r4, r2
	bcc	.L58
	str	r1, [r3, #16]
	str	r3, [r1, #12]
	str	r1, [r0, #12]
.L59:
	str	r0, [r1, #16]
	movs	r0, #0
	pop	{r4, pc}
.L58:
	mov	r0, r3
	b	.L55
	.size	add_block_invalid_list, .-add_block_invalid_list
	.section	.text.del_block_invalid_list,"ax",%progbits
	.align	1
	.global	del_block_invalid_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	del_block_invalid_list, %function
del_block_invalid_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	ldr	r0, [r0, #200]
	cbz	r0, .L60
	ldr	r2, [r0, #12]
	str	r2, [r3, #200]
	ldr	r2, [r0, #12]
	cbz	r2, .L60
	adds	r3, r3, #188
	str	r3, [r2, #16]
.L60:
	bx	lr
	.size	del_block_invalid_list, .-del_block_invalid_list
	.section	.text.del_block_invalid_list_by_block,"ax",%progbits
	.align	1
	.global	del_block_invalid_list_by_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	del_block_invalid_list_by_block, %function
del_block_invalid_list_by_block:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #200]
.L68:
	cbnz	r0, .L71
	bx	lr
.L71:
	cmp	r0, r1
	ldr	r3, [r0, #12]
	bne	.L72
	ldr	r2, [r0, #16]
	str	r3, [r2, #12]
	ldr	r3, [r0, #12]
	cbz	r3, .L69
	str	r2, [r3, #16]
.L69:
	movs	r3, #0
	strd	r3, r3, [r0, #12]
	bx	lr
.L72:
	mov	r0, r3
	b	.L68
	.size	del_block_invalid_list_by_block, .-del_block_invalid_list_by_block
	.section	.text.is_block_in_invalid_list,"ax",%progbits
	.align	1
	.global	is_block_in_invalid_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_block_in_invalid_list, %function
is_block_in_invalid_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #200]
.L77:
	cbnz	r0, .L79
	bx	lr
.L79:
	cmp	r0, r1
	beq	.L80
	ldr	r0, [r0, #12]
	b	.L77
.L80:
	movs	r0, #1
	bx	lr
	.size	is_block_in_invalid_list, .-is_block_in_invalid_list
	.section	.text.print_block_invalid_list,"ax",%progbits
	.align	1
	.global	print_block_invalid_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	print_block_invalid_list, %function
print_block_invalid_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #356]
	push	{r4, r5, r6, lr}
	mov	r4, r0
	cbz	r3, .L81
	ldr	r0, .L86
	bl	NAND_Print_DBG
	ldr	r5, .L86+4
	ldr	r4, [r4, #200]
	ldr	r6, .L86+8
.L83:
	cbnz	r4, .L84
.L81:
	pop	{r4, r5, r6, pc}
.L84:
	ldrh	r2, [r4, #6]
	mov	r0, r5
	ldrh	r1, [r4]
	bl	NAND_Print_DBG
	ldrh	r2, [r4, #4]
	mov	r0, r6
	ldr	r1, [r4, #8]
	bl	NAND_Print_DBG
	ldrh	r1, [r4, #2]
	ldr	r0, .L86+12
	bl	NAND_Print_DBG
	ldr	r4, [r4, #12]
	b	.L83
.L87:
	.align	2
.L86:
	.word	.LC12
	.word	.LC9
	.word	.LC13
	.word	.LC11
	.size	print_block_invalid_list, .-print_block_invalid_list
	.section	.text.add_block_count_list,"ax",%progbits
	.align	1
	.global	add_block_count_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	add_block_count_list, %function
add_block_count_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	adds	r0, r0, #224
	push	{r4, lr}
.L89:
	ldr	r3, [r0, #28]
	cbnz	r3, .L91
	str	r1, [r0, #28]
	str	r3, [r1, #28]
	b	.L93
.L91:
	ldr	r4, [r3, #8]
	ldr	r2, [r1, #8]
	cmp	r4, r2
	blt	.L92
	str	r1, [r3, #32]
	str	r3, [r1, #28]
	str	r1, [r0, #28]
.L93:
	str	r0, [r1, #32]
	movs	r0, #0
	pop	{r4, pc}
.L92:
	mov	r0, r3
	b	.L89
	.size	add_block_count_list, .-add_block_count_list
	.section	.text.del_block_count_list,"ax",%progbits
	.align	1
	.global	del_block_count_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	del_block_count_list, %function
del_block_count_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	adds	r0, r0, #224
	ldr	r2, [r3, #252]
	cbz	r2, .L94
	ldr	r2, [r2, #28]
	str	r2, [r3, #252]
.L94:
	bx	lr
	.size	del_block_count_list, .-del_block_count_list
	.section	.text.del_block_count_by_block,"ax",%progbits
	.align	1
	.global	del_block_count_by_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	del_block_count_by_block, %function
del_block_count_by_block:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #252]
.L100:
	cbnz	r0, .L103
	bx	lr
.L103:
	cmp	r0, r1
	ldr	r3, [r0, #28]
	bne	.L104
	ldr	r2, [r0, #32]
	str	r3, [r2, #28]
	ldr	r3, [r0, #28]
	cbz	r3, .L101
	str	r2, [r3, #32]
.L101:
	movs	r3, #0
	strd	r3, r3, [r0, #28]
	bx	lr
.L104:
	mov	r0, r3
	b	.L100
	.size	del_block_count_by_block, .-del_block_count_by_block
	.section	.text.print_block_count_list,"ax",%progbits
	.align	1
	.global	print_block_count_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	print_block_count_list, %function
print_block_count_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #356]
	push	{r4, r5, r6, lr}
	mov	r4, r0
	cbz	r3, .L108
	ldr	r0, .L113
	bl	NAND_Print_DBG
	ldr	r5, .L113+4
	ldr	r4, [r4, #252]
	ldr	r6, .L113+8
.L110:
	cbnz	r4, .L111
.L108:
	pop	{r4, r5, r6, pc}
.L111:
	ldrh	r1, [r4]
	mov	r0, r5
	bl	NAND_Print_DBG
	ldr	r1, [r4, #8]
	mov	r0, r6
	bl	NAND_Print_DBG
	ldr	r4, [r4, #28]
	b	.L110
.L114:
	.align	2
.L113:
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.size	print_block_count_list, .-print_block_count_list
	.section	.text.put_phy_block_to_free_list,"ax",%progbits
	.align	1
	.global	put_phy_block_to_free_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	put_phy_block_to_free_list, %function
put_phy_block_to_free_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r2, #0
	push	{r3, r4, r5, lr}
	strd	r2, r2, [r1, #20]
	mov	r5, r0
	bl	add_free_list
	mov	r4, r0
	cbnz	r0, .L116
	ldrh	r3, [r5, #22]
	adds	r3, r3, #1
	strh	r3, [r5, #22]	@ movhi
.L115:
	mov	r0, r4
	pop	{r3, r4, r5, pc}
.L116:
	ldr	r0, .L118
	bl	NAND_Print_DBG
	b	.L115
.L119:
	.align	2
.L118:
	.word	.LC17
	.size	put_phy_block_to_free_list, .-put_phy_block_to_free_list
	.section	.text.out_phy_block_from_free_list,"ax",%progbits
	.align	1
	.global	out_phy_block_from_free_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	out_phy_block_from_free_list, %function
out_phy_block_from_free_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	mov	r1, r0
	bl	del_free_list
	cbz	r0, .L120
	movs	r3, #0
	strd	r3, r3, [r0, #20]
	ldrh	r3, [r1, #22]
	cbz	r3, .L120
	subs	r3, r3, #1
	strh	r3, [r1, #22]	@ movhi
.L120:
	pop	{r3, pc}
	.size	out_phy_block_from_free_list, .-out_phy_block_from_free_list
	.section	.text.get_max_erase_time_from_free_list,"ax",%progbits
	.align	1
	.global	get_max_erase_time_from_free_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_max_erase_time_from_free_list, %function
get_max_erase_time_from_free_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #172]
	movs	r0, #0
	mov	r2, r0
	push	{r4, lr}
.L128:
	cbnz	r3, .L130
	cbz	r2, .L132
	ldrh	r0, [r2, #6]
.L131:
	pop	{r4, pc}
.L130:
	ldrh	r4, [r3, #6]
	cmp	r4, r1
	bcs	.L129
	cmp	r4, r0
	itt	cs
	movcs	r0, r4
	movcs	r2, r3
.L129:
	ldr	r3, [r3, #20]
	b	.L128
.L132:
	movw	r0, #65535
	b	.L131
	.size	get_max_erase_time_from_free_list, .-get_max_erase_time_from_free_list
	.section	.text.get_block_max_erase_time_from_free_list,"ax",%progbits
	.align	1
	.global	get_block_max_erase_time_from_free_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_block_max_erase_time_from_free_list, %function
get_block_max_erase_time_from_free_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r2, #0
	ldr	r3, [r0, #172]
	mov	r0, r2
	push	{r4, lr}
.L134:
	cbnz	r3, .L136
	pop	{r4, pc}
.L136:
	ldrh	r4, [r3, #6]
	cmp	r4, r1
	bcs	.L135
	cmp	r4, r2
	itt	cs
	movcs	r2, r4
	movcs	r0, r3
.L135:
	ldr	r3, [r3, #20]
	b	.L134
	.size	get_block_max_erase_time_from_free_list, .-get_block_max_erase_time_from_free_list
	.section	.text.get_block_max_erase_time_from_invalid_list,"ax",%progbits
	.align	1
	.global	get_block_max_erase_time_from_invalid_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_block_max_erase_time_from_invalid_list, %function
get_block_max_erase_time_from_invalid_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r2, #0
	ldr	r3, [r0, #200]
	mov	r0, r2
	push	{r4, lr}
.L138:
	cbnz	r3, .L140
	pop	{r4, pc}
.L140:
	ldrh	r4, [r3, #6]
	cmp	r4, r1
	bcs	.L139
	cmp	r4, r2
	itt	cs
	movcs	r2, r4
	movcs	r0, r3
.L139:
	ldr	r3, [r3, #12]
	b	.L138
	.size	get_block_max_erase_time_from_invalid_list, .-get_block_max_erase_time_from_invalid_list
	.section	.text.get_block_min_erase_time_from_invalid_list,"ax",%progbits
	.align	1
	.global	get_block_min_erase_time_from_invalid_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_block_min_erase_time_from_invalid_list, %function
get_block_min_erase_time_from_invalid_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	push	{r4, r5, r6, lr}
	ldrh	r5, [r3, #16]
	ldr	r3, [r0, #200]
	movs	r0, #0
.L142:
	cbnz	r3, .L144
	pop	{r4, r5, r6, pc}
.L144:
	ldrh	r4, [r3, #6]
	cmp	r4, r1
	bcs	.L143
	ldr	r6, [r3, #8]
	cmp	r6, r2
	bcs	.L143
	cmp	r4, r5
	itt	ls
	movls	r5, r4
	movls	r0, r3
.L143:
	ldr	r3, [r3, #12]
	b	.L142
	.size	get_block_min_erase_time_from_invalid_list, .-get_block_min_erase_time_from_invalid_list
	.section	.text.get_block_max_count_from_invalid_list,"ax",%progbits
	.align	1
	.global	get_block_max_count_from_invalid_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_block_max_count_from_invalid_list, %function
get_block_max_count_from_invalid_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r2, #0
	ldr	r3, [r0, #200]
	mov	r0, r2
.L146:
	cbnz	r3, .L148
	bx	lr
.L148:
	ldr	r1, [r3, #8]
	cmp	r1, r2
	itt	cs
	movcs	r0, r3
	movcs	r2, r1
	ldr	r3, [r3, #12]
	b	.L146
	.size	get_block_max_count_from_invalid_list, .-get_block_max_count_from_invalid_list
	.section	.text.get_block_min_count_from_invalid_list,"ax",%progbits
	.align	1
	.global	get_block_min_count_from_invalid_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_block_min_count_from_invalid_list, %function
get_block_min_count_from_invalid_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #200]
	mov	r2, #-1
	movs	r0, #0
.L150:
	cbnz	r3, .L152
	bx	lr
.L152:
	ldr	r1, [r3, #8]
	cmp	r1, r2
	itt	ls
	movls	r0, r3
	movls	r2, r1
	ldr	r3, [r3, #12]
	b	.L150
	.size	get_block_min_count_from_invalid_list, .-get_block_min_count_from_invalid_list
	.section	.text.out_phy_block_from_free_list_by_block,"ax",%progbits
	.align	1
	.global	out_phy_block_from_free_list_by_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	out_phy_block_from_free_list_by_block, %function
out_phy_block_from_free_list_by_block:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	bl	del_free_list_by_block
	cbz	r0, .L153
	movs	r3, #0
	strd	r3, r3, [r0, #20]
	ldrh	r3, [r4, #22]
	cbz	r3, .L153
	subs	r3, r3, #1
	strh	r3, [r4, #22]	@ movhi
.L153:
	pop	{r4, pc}
	.size	out_phy_block_from_free_list_by_block, .-out_phy_block_from_free_list_by_block
	.section	.text.out_phy_block_from_free_list_by_erase_time,"ax",%progbits
	.align	1
	.global	out_phy_block_from_free_list_by_erase_time
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	out_phy_block_from_free_list_by_erase_time, %function
out_phy_block_from_free_list_by_erase_time:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #172]
	push	{r4, r5}
	movs	r4, #0
	mov	r2, r4
.L161:
	cbnz	r3, .L163
	cbz	r2, .L160
	mov	r1, r2
	pop	{r4, r5}
	b	out_phy_block_from_free_list_by_block
.L163:
	ldrh	r5, [r3, #6]
	cmp	r5, r1
	bcs	.L162
	cmp	r5, r4
	itt	cs
	movcs	r4, r5
	movcs	r2, r3
.L162:
	ldr	r3, [r3, #20]
	b	.L161
.L160:
	mov	r0, r2
	pop	{r4, r5}
	bx	lr
	.size	out_phy_block_from_free_list_by_erase_time, .-out_phy_block_from_free_list_by_erase_time
	.section	.text.put_phy_block_to_invalid_page_list,"ax",%progbits
	.align	1
	.global	put_phy_block_to_invalid_page_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	put_phy_block_to_invalid_page_list, %function
put_phy_block_to_invalid_page_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r2, #0
	push	{r4, lr}
	strd	r2, r2, [r1, #12]
	bl	add_block_invalid_list
	mov	r4, r0
	cbz	r0, .L165
	ldr	r0, .L170
	bl	NAND_Print_DBG
.L165:
	mov	r0, r4
	pop	{r4, pc}
.L171:
	.align	2
.L170:
	.word	.LC18
	.size	put_phy_block_to_invalid_page_list, .-put_phy_block_to_invalid_page_list
	.section	.text.out_phy_block_from_invalid_page_list,"ax",%progbits
	.align	1
	.global	out_phy_block_from_invalid_page_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	out_phy_block_from_invalid_page_list, %function
out_phy_block_from_invalid_page_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	del_block_invalid_list
	cbz	r0, .L172
	movs	r3, #0
	strd	r3, r3, [r0, #12]
.L172:
	pop	{r3, pc}
	.size	out_phy_block_from_invalid_page_list, .-out_phy_block_from_invalid_page_list
	.section	.text.out_phy_block_from_invalid_page_list_by_block,"ax",%progbits
	.align	1
	.global	out_phy_block_from_invalid_page_list_by_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	out_phy_block_from_invalid_page_list_by_block, %function
out_phy_block_from_invalid_page_list_by_block:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	del_block_invalid_list_by_block
	cbz	r0, .L177
	movs	r3, #0
	strd	r3, r3, [r0, #12]
.L177:
	pop	{r3, pc}
	.size	out_phy_block_from_invalid_page_list_by_block, .-out_phy_block_from_invalid_page_list_by_block
	.section	.text.phy_block_from_invalid_page_incr,"ax",%progbits
	.align	1
	.global	phy_block_from_invalid_page_incr
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	phy_block_from_invalid_page_incr, %function
phy_block_from_invalid_page_incr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r1
	ldrh	r2, [r1, #4]
	mov	r5, r0
	ldr	r1, [r1, #12]
	ldr	r3, [r0, #4]
	adds	r2, r2, #1
	uxth	r2, r2
	ldrh	r3, [r3, #20]
	cbnz	r1, .L183
	ldr	r1, [r4, #16]
	cbnz	r1, .L183
	cmp	r2, r3
	strh	r2, [r4, #4]	@ movhi
	bls	.L185
	ldrh	r1, [r4]
	ldr	r0, .L197
	bl	NAND_Print_DBG
.L185:
	movs	r0, #0
	pop	{r3, r4, r5, pc}
.L183:
	cmp	r2, r3
	strh	r2, [r4, #4]	@ movhi
	bls	.L186
	ldr	r0, .L197+4
	bl	NAND_Print_DBG
.L186:
	ldr	r3, [r4, #16]
	adds	r5, r5, #188
	cmp	r3, r5
	beq	.L185
	ldrh	r1, [r4, #4]
.L188:
	ldrh	r2, [r3, #4]
	cmp	r2, r1
	bcs	.L185
	ldr	r2, [r3, #16]
	str	r2, [r4, #16]
	ldr	r2, [r3, #16]
	str	r4, [r2, #12]
	ldr	r2, [r4, #12]
	str	r2, [r3, #12]
	ldr	r2, [r4, #12]
	cbz	r2, .L189
	str	r3, [r2, #16]
.L189:
	str	r3, [r4, #12]
	str	r4, [r3, #16]
	ldr	r3, [r4, #16]
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bne	.L188
	b	.L185
.L198:
	.align	2
.L197:
	.word	.LC19
	.word	.LC20
	.size	phy_block_from_invalid_page_incr, .-phy_block_from_invalid_page_incr
	.section	.text.adjust_invaild_list,"ax",%progbits
	.align	1
	.global	adjust_invaild_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	adjust_invaild_list, %function
adjust_invaild_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
.L200:
	ldr	r3, [r4, #200]
	cbnz	r3, .L202
.L201:
	movs	r0, #0
	pop	{r4, pc}
.L202:
	ldr	r1, [r4, #4]
	ldrh	r2, [r3, #4]
	ldrh	r3, [r1, #20]
	cmp	r2, r3
	bne	.L201
	mov	r0, r4
	bl	out_phy_block_from_invalid_page_list
	mov	r1, r0
	mov	r0, r4
	bl	put_phy_block_to_free_list
	b	.L200
	.size	adjust_invaild_list, .-adjust_invaild_list
	.section	.text.nftl_get_boot_cnt,"ax",%progbits
	.align	1
	.global	nftl_get_boot_cnt
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_get_boot_cnt, %function
nftl_get_boot_cnt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #1968]
	ldr	r0, [r3, #140]
	bx	lr
	.size	nftl_get_boot_cnt, .-nftl_get_boot_cnt
	.section	.text.nftl_get_zone_cap,"ax",%progbits
	.align	1
	.global	nftl_get_zone_cap
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_get_zone_cap, %function
nftl_get_zone_cap:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #24]
	bx	lr
	.size	nftl_get_zone_cap, .-nftl_get_zone_cap
	.section	.text.nftl_get_zone_priv,"ax",%progbits
	.align	1
	.global	nftl_get_zone_priv
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_get_zone_priv, %function
nftl_get_zone_priv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0]
	bx	lr
	.size	nftl_get_zone_priv, .-nftl_get_zone_priv
	.section	.text.nftl_get_zone_write_cache_nums,"ax",%progbits
	.align	1
	.global	nftl_get_zone_write_cache_nums
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_get_zone_write_cache_nums, %function
nftl_get_zone_write_cache_nums:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r0, [r0, #588]
	bx	lr
	.size	nftl_get_zone_write_cache_nums, .-nftl_get_zone_write_cache_nums
	.section	.text.print_smart,"ax",%progbits
	.align	1
	.global	print_smart
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	print_smart, %function
print_smart:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #356]
	push	{r4, lr}
	cmp	r3, #0
	beq	.L207
	ldr	r4, [r0, #1968]
	ldr	r0, .L209
	ldr	r1, [r4, #112]
	bl	NAND_Print_DBG
	ldrd	r2, [r4, #64]
	ldr	r0, .L209+4
	bl	NAND_Print_DBG
	ldrd	r2, [r4, #72]
	ldr	r0, .L209+8
	bl	NAND_Print_DBG
	ldrd	r2, [r4, #80]
	ldr	r0, .L209+12
	bl	NAND_Print_DBG
	ldrd	r2, [r4, #88]
	ldr	r0, .L209+16
	bl	NAND_Print_DBG
	ldrd	r2, [r4, #96]
	ldr	r0, .L209+20
	bl	NAND_Print_DBG
	ldrd	r2, [r4, #104]
	ldr	r0, .L209+24
	bl	NAND_Print_DBG
	ldr	r1, [r4, #116]
	ldr	r0, .L209+28
	bl	NAND_Print_DBG
	ldr	r1, [r4, #120]
	ldr	r0, .L209+32
	bl	NAND_Print_DBG
	ldr	r1, [r4, #124]
	ldr	r0, .L209+36
	bl	NAND_Print_DBG
	ldr	r1, [r4, #128]
	ldr	r0, .L209+40
	bl	NAND_Print_DBG
	ldr	r1, [r4, #180]
	ldr	r0, .L209+44
	bl	NAND_Print_DBG
	ldr	r1, [r4, #132]
	ldr	r0, .L209+48
	bl	NAND_Print_DBG
	ldr	r1, [r4, #136]
	ldr	r0, .L209+52
	bl	NAND_Print_DBG
	ldr	r1, [r4, #140]
	ldr	r0, .L209+56
	bl	NAND_Print_DBG
	ldr	r1, [r4, #144]
	ldr	r0, .L209+60
	bl	NAND_Print_DBG
	ldr	r1, [r4, #148]
	ldr	r0, .L209+64
	bl	NAND_Print_DBG
	ldr	r1, [r4, #152]
	ldr	r0, .L209+68
	bl	NAND_Print_DBG
	ldr	r1, [r4, #156]
	ldr	r0, .L209+72
	bl	NAND_Print_DBG
	ldr	r1, [r4, #160]
	ldr	r0, .L209+76
	bl	NAND_Print_DBG
	ldr	r1, [r4, #164]
	ldr	r0, .L209+80
	bl	NAND_Print_DBG
	ldr	r1, [r4, #168]
	ldr	r0, .L209+84
	bl	NAND_Print_DBG
	ldr	r1, [r4, #172]
	ldr	r0, .L209+88
	bl	NAND_Print_DBG
	ldr	r1, [r4, #176]
	ldr	r0, .L209+92
	pop	{r4, lr}
	b	NAND_Print_DBG
.L207:
	pop	{r4, pc}
.L210:
	.align	2
.L209:
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.word	.LC24
	.word	.LC25
	.word	.LC26
	.word	.LC27
	.word	.LC28
	.word	.LC29
	.word	.LC30
	.word	.LC31
	.word	.LC32
	.word	.LC33
	.word	.LC34
	.word	.LC35
	.word	.LC36
	.word	.LC37
	.word	.LC38
	.word	.LC39
	.word	.LC40
	.word	.LC41
	.word	.LC42
	.word	.LC43
	.word	.LC44
	.size	print_smart, .-print_smart
	.section	.text.nftl_cache_clean,"ax",%progbits
	.align	1
	.global	nftl_cache_clean
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_cache_clean, %function
nftl_cache_clean:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #1972]
	add	r0, r0, #592
	push	{r4, r5, lr}
	movs	r4, #255
	mov	r5, #-1
	ldrh	r1, [r3, #22]
	movs	r3, #0
	strh	r3, [r0, #-6]	@ movhi
	mov	r2, r3
	strh	r3, [r0, #-4]	@ movhi
	strh	r1, [r0, #-8]	@ movhi
	strh	r3, [r0, #-2]	@ movhi
	str	r3, [r0, #976]
	str	r3, [r0, #980]
	str	r3, [r0, #984]
	str	r3, [r0, #988]
	str	r3, [r0, #1008]
	str	r3, [r0, #1012]
	str	r3, [r0, #1016]
	str	r3, [r0, #1020]
.L212:
	cmp	r1, r3
	add	r0, r0, #32
	bhi	.L213
	movs	r0, #0
	pop	{r4, r5, pc}
.L213:
	strh	r3, [r0, #-32]	@ movhi
	adds	r3, r3, #1
	strh	r4, [r0, #-30]	@ movhi
	str	r5, [r0, #-24]
	strd	r2, r2, [r0, #-16]
	strd	r2, r2, [r0, #-8]
	strh	r2, [r0, #-28]	@ movhi
	strh	r2, [r0, #-26]	@ movhi
	b	.L212
	.size	nftl_cache_clean, .-nftl_cache_clean
	.section	.text.search_from_cache_read_list,"ax",%progbits
	.align	1
	.global	search_from_cache_read_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	search_from_cache_read_list, %function
search_from_cache_read_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #984]
.L215:
	cbnz	r0, .L217
.L214:
	bx	lr
.L217:
	ldr	r3, [r0, #8]
	cmp	r3, r1
	beq	.L214
	ldr	r0, [r0, #16]
	b	.L215
	.size	search_from_cache_read_list, .-search_from_cache_read_list
	.section	.text.search_from_cache_write_list,"ax",%progbits
	.align	1
	.global	search_from_cache_write_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	search_from_cache_write_list, %function
search_from_cache_write_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #1024]
.L219:
	cbnz	r0, .L221
.L218:
	bx	lr
.L221:
	ldr	r3, [r0, #8]
	cmp	r3, r1
	beq	.L218
	ldr	r0, [r0, #24]
	b	.L219
	.size	search_from_cache_write_list, .-search_from_cache_write_list
	.section	.text.add_to_cache_read_list_tail,"ax",%progbits
	.align	1
	.global	add_to_cache_read_list_tail
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	add_to_cache_read_list_tail, %function
add_to_cache_read_list_tail:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #968
	push	{r4, lr}
.L223:
	ldr	r4, [r3, #16]
	cbnz	r4, .L226
	str	r1, [r3, #16]
	strd	r4, r3, [r1, #16]
	strh	r2, [r1, #2]	@ movhi
	cbnz	r2, .L224
	ldrh	r3, [r0, #2]
	adds	r3, r3, #1
	strh	r3, [r0, #2]	@ movhi
.L225:
	movs	r0, #0
	pop	{r4, pc}
.L226:
	mov	r3, r4
	b	.L223
.L224:
	ldrh	r3, [r0, #6]
	adds	r3, r3, #1
	strh	r3, [r0, #6]	@ movhi
	b	.L225
	.size	add_to_cache_read_list_tail, .-add_to_cache_read_list_tail
	.section	.text.add_to_cache_write_list_tail,"ax",%progbits
	.align	1
	.global	add_to_cache_write_list_tail
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	add_to_cache_write_list_tail, %function
add_to_cache_write_list_tail:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r2, r0, #1000
.L228:
	ldr	r3, [r2, #24]
	cbnz	r3, .L229
	str	r1, [r2, #24]
	strd	r3, r2, [r1, #24]
	movs	r2, #1
	strh	r2, [r1, #2]	@ movhi
	ldrh	r2, [r0, #4]
	adds	r2, r2, #1
	strh	r2, [r0, #4]	@ movhi
	mov	r0, r3
	bx	lr
.L229:
	mov	r2, r3
	b	.L228
	.size	add_to_cache_write_list_tail, .-add_to_cache_write_list_tail
	.section	.text.del_from_cache_read_list,"ax",%progbits
	.align	1
	.global	del_from_cache_read_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	del_from_cache_read_list, %function
del_from_cache_read_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrd	r3, r2, [r1, #16]
	str	r3, [r2, #16]
	ldr	r3, [r1, #16]
	cbz	r3, .L231
	str	r2, [r3, #20]
.L231:
	ldrh	r3, [r1, #2]
	cbnz	r3, .L232
	ldrh	r3, [r0, #2]
	subs	r3, r3, #1
	strh	r3, [r0, #2]	@ movhi
.L233:
	movs	r3, #255
	mov	r0, r1
	strh	r3, [r1, #2]	@ movhi
	movs	r3, #0
	strd	r3, r3, [r1, #16]
	bx	lr
.L232:
	ldrh	r3, [r0, #6]
	subs	r3, r3, #1
	strh	r3, [r0, #6]	@ movhi
	b	.L233
	.size	del_from_cache_read_list, .-del_from_cache_read_list
	.section	.text.del_from_cache_write_list,"ax",%progbits
	.align	1
	.global	del_from_cache_write_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	del_from_cache_write_list, %function
del_from_cache_write_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrd	r3, r2, [r1, #24]
	str	r3, [r2, #24]
	ldr	r3, [r1, #24]
	cbz	r3, .L238
	str	r2, [r3, #28]
.L238:
	movs	r3, #0
	strd	r3, r3, [r1, #24]
	movs	r3, #255
	strh	r3, [r1, #2]	@ movhi
	ldrh	r3, [r0, #4]
	subs	r3, r3, #1
	strh	r3, [r0, #4]	@ movhi
	mov	r0, r1
	bx	lr
	.size	del_from_cache_write_list, .-del_from_cache_write_list
	.section	.text.get_empty_cahce_node,"ax",%progbits
	.align	1
	.global	get_empty_cahce_node
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_empty_cahce_node, %function
get_empty_cahce_node:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r2, [r0]
	movs	r1, #0
	push	{r4}
.L243:
	uxth	r3, r1
	cmp	r2, r3
	bhi	.L245
	ldrh	r3, [r0, #6]
	ldr	r1, [r0, #984]
	cmp	r3, #9
	bhi	.L246
.L247:
	cbz	r1, .L242
	ldrh	r3, [r1, #2]
	cbz	r3, .L254
	ldr	r1, [r1, #16]
	b	.L247
.L245:
	adds	r3, r1, #1
	add	r4, r0, r3, lsl #5
	ldrh	r4, [r4, #-22]
	cmp	r4, #255
	bne	.L252
	add	r1, r0, r1, lsl #5
	adds	r1, r1, #8
.L242:
	mov	r0, r1
	pop	{r4}
	bx	lr
.L252:
	mov	r1, r3
	b	.L243
.L248:
	ldr	r1, [r1, #16]
.L246:
	cmp	r1, #0
	beq	.L242
	ldrh	r3, [r1, #2]
	cmp	r3, #2
	bne	.L248
.L254:
	pop	{r4}
	b	del_from_cache_read_list
	.size	get_empty_cahce_node, .-get_empty_cahce_node
	.section	.text.nand_cache_read,"ax",%progbits
	.align	1
	.global	nand_cache_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_cache_read, %function
nand_cache_read:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r4, r0
	str	r1, [sp, #4]
	mov	r7, r3
	cbnz	r3, .L256
	ldr	r0, .L266
	bl	NAND_Print
.L264:
	mov	fp, #0
.L255:
	mov	r0, fp
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L256:
	lsrs	r3, r2, #8
	uxtb	r2, r2
	lsl	r8, r3, #9
	ldr	r3, [r0, #1972]
	lsls	r5, r2, #9
	ldrh	r3, [r3]
	str	r3, [sp, #12]
	cbz	r3, .L258
	ldr	r6, [r0, #604]
	ldr	r3, [r0, #2004]
	mov	r2, r6
	blx	r3
	mov	r2, r5
	mov	fp, r0
	add	r1, r6, r8
	mov	r0, r7
	bl	NAND_Memcpy
	cmp	fp, #10
	bne	.L255
	ldr	r2, [r4, #1968]
	mov	r0, r4
	ldr	r1, [sp, #4]
	ldr	r3, [r2, #116]
	adds	r3, r3, #1
	str	r3, [r2, #116]
	mov	r2, r6
	ldr	r3, [r4, #2000]
	blx	r3
	b	.L264
.L258:
	add	r10, r0, #584
	mov	r0, r10
	bl	search_from_cache_write_list
	mov	fp, r0
	cbz	r0, .L259
	ldr	r3, [r0, #12]
	ldrh	r6, [r0, #6]
	str	r3, [sp, #8]
	ldrh	r3, [r0, #4]
	lsls	r6, r6, #9
	ldr	r2, [sp, #8]
	uxth	r6, r6
	lsls	r3, r3, #9
	add	r10, r2, r8
	uxth	r3, r3
	add	r3, r3, r6
	cmp	r3, r8
	bcc	.L260
	add	r2, r8, r5
	cmp	r3, r2
	bcc	.L260
.L265:
	mov	r2, r5
	mov	r1, r10
	mov	r0, r7
	bl	NAND_Memcpy
	b	.L264
.L260:
	ldr	r3, [r4, #2004]
	mov	r0, r4
	ldr	r2, [r4, #1616]
	ldr	r1, [sp, #4]
	blx	r3
	ldr	r3, [r4, #4]
	ldr	r1, [r4, #1616]
	ldrh	r2, [r3, #26]
	ldr	r3, [sp, #8]
	add	r1, r1, r6
	subs	r2, r2, r6
	add	r3, r3, r6
	mov	r0, r3
	bl	NAND_Memcpy
	ldr	r3, [r4, #4]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	strh	r3, [fp, #6]	@ movhi
	b	.L265
.L259:
	ldr	r1, [sp, #4]
	mov	r0, r10
	bl	search_from_cache_read_list
	mov	r6, r0
	cbz	r0, .L261
	ldrh	r4, [r0, #2]
	cbnz	r4, .L262
	mov	r1, r0
	mov	r0, r10
	bl	del_from_cache_read_list
	ldr	r1, [r6, #12]
	mov	r2, r5
	mov	r0, r7
	add	r1, r1, r8
	bl	NAND_Memcpy
	mov	r2, r4
	mov	r1, r6
	mov	r0, r10
	bl	add_to_cache_read_list_tail
	b	.L264
.L262:
	ldr	r1, [r0, #12]
	mov	r2, r5
	mov	r0, r7
	add	r1, r1, r8
	bl	NAND_Memcpy
	b	.L255
.L261:
	mov	r0, r10
	bl	get_empty_cahce_node
	cbnz	r0, .L263
	ldrh	r3, [r4, #590]
	mov	fp, #1
	ldrh	r2, [r4, #586]
	ldrh	r1, [r4, #588]
	ldr	r0, .L266+4
	bl	NAND_Print
	b	.L255
.L263:
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #4]
	ldr	r3, [r4, #2004]
	str	r2, [r0, #8]
	ldr	r2, [r0, #12]
	strd	r2, r0, [sp, #8]
	mov	r0, r4
	blx	r3
	ldr	r3, [sp, #12]
	mov	fp, r0
	ldr	r2, [r4, #4]
	mov	r0, r10
	strh	r6, [r3, #4]	@ movhi
	mov	r1, r3
	ldrb	r2, [r2, #8]	@ zero_extendqisi2
	strh	r2, [r3, #6]	@ movhi
	mov	r2, r6
	bl	add_to_cache_read_list_tail
	ldr	r3, [sp, #8]
	mov	r2, r5
	mov	r0, r7
	add	r1, r3, r8
	bl	NAND_Memcpy
	cmp	fp, #10
	bne	.L255
	ldr	r2, [r4, #1968]
	mov	r0, r4
	mov	fp, r6
	ldr	r3, [r2, #116]
	adds	r3, r3, #1
	str	r3, [r2, #116]
	ldr	r3, [r4, #2000]
	ldrd	r1, r2, [sp, #4]
	blx	r3
	b	.L255
.L267:
	.align	2
.L266:
	.word	.LC45
	.word	.LC46
	.size	nand_cache_read, .-nand_cache_read
	.global	__aeabi_uidivmod
	.section	.text.nand_op,"ax",%progbits
	.align	1
	.global	nand_op
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_op, %function
nand_op:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r6, r1
	ldr	r10, [sp, #32]
	mov	r4, r3
	cbz	r3, .L269
	ldr	r1, [r1, #24]
	add	r3, r3, r2
	cmp	r3, r1
	bls	.L270
	movs	r4, #1
	ldr	r0, .L283
	bl	NAND_Print
.L269:
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L270:
	ldr	r1, .L283+4
	ldr	r3, .L283+8
	cmp	r0, #0
	ite	ne
	movne	r8, r1
	moveq	r8, r3
	ldr	r3, [r6, #4]
	mov	r0, r2
	ldrb	r5, [r3, #8]	@ zero_extendqisi2
	mov	r1, r5
	bl	__aeabi_uidivmod
	subs	r5, r5, r1
	mov	fp, r0
	uxth	r5, r5
	mov	r3, r10
	cmp	r4, r5
	itet	ls
	uxthls	r5, r4
	subhi	r7, r4, r5
	movls	r7, #0
	orr	r2, r5, r1, lsl #8
	mov	r1, r0
	mov	r0, r6
	uxth	r2, r2
	blx	r8
	mov	r4, r0
	cmp	r7, #0
	beq	.L269
.L274:
	ldr	r3, [r6, #4]
	add	fp, fp, #1
	add	r10, r10, r5, lsl #9
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	cmp	r7, r3
	bhi	.L275
	mov	r3, r10
	uxth	r2, r7
	mov	r1, fp
	mov	r0, r6
	blx	r8
	orrs	r4, r4, r0
	b	.L269
.L275:
	uxth	r5, r3
	subs	r7, r7, r3
	mov	r1, fp
	mov	r3, r10
	mov	r2, r5
	mov	r0, r6
	blx	r8
	orrs	r4, r4, r0
	b	.L274
.L284:
	.align	2
.L283:
	.word	.LC47
	.word	nand_cache_write
	.word	nand_cache_read
	.size	nand_op, .-nand_op
	.section	.text.__nand_read,"ax",%progbits
	.align	1
	.global	__nand_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	__nand_read, %function
__nand_read:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, r5, r6, r7, fp, lr}
	mov	r7, r3
	ldr	r3, [r0, #356]
	mov	r4, r0
	mov	r6, r1
	mov	r5, r2
	cmp	r3, #3
	bne	.L286
	ldr	r0, .L287
	bl	NAND_Print_DBG
.L286:
	ldr	r1, [r4, #1968]
	movs	r0, #0
	ldrd	r2, [r1, #64]
	adds	fp, r2, r5
	mov	r2, r6
	adc	ip, r3, #0
	mov	r3, r5
	strd	fp, [r1, #64]
	mov	r1, r4
	str	r7, [sp]
	bl	nand_op
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, fp, pc}
.L288:
	.align	2
.L287:
	.word	.LC48
	.size	__nand_read, .-__nand_read
	.section	.text._nand_read,"ax",%progbits
	.align	1
	.global	_nand_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nand_read, %function
_nand_read:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #12]
	b	__nand_read
	.size	_nand_read, .-_nand_read
	.section	.text.__nand_write,"ax",%progbits
	.align	1
	.global	__nand_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	__nand_write, %function
__nand_write:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, r5, r6, r7, fp, lr}
	mov	r7, r3
	ldr	r3, [r0, #356]
	mov	r4, r0
	mov	r6, r1
	mov	r5, r2
	cmp	r3, #3
	bne	.L291
	ldr	r0, .L292
	bl	NAND_Print_DBG
.L291:
	ldr	r1, [r4, #1968]
	movs	r0, #1
	ldrd	r2, [r1, #72]
	adds	fp, r2, r5
	mov	r2, r6
	adc	ip, r3, #0
	mov	r3, r5
	strd	fp, [r1, #72]
	mov	r1, r4
	str	r7, [sp]
	bl	nand_op
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, fp, pc}
.L293:
	.align	2
.L292:
	.word	.LC49
	.size	__nand_write, .-__nand_write
	.section	.text._nand_write,"ax",%progbits
	.align	1
	.global	_nand_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nand_write, %function
_nand_write:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #12]
	b	__nand_write
	.size	_nand_write, .-_nand_write
	.section	.text.flush_write_cache_to_nand,"ax",%progbits
	.align	1
	.global	flush_write_cache_to_nand
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	flush_write_cache_to_nand, %function
flush_write_cache_to_nand:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, lr}
	sub	sp, sp, #20
	mov	r4, r0
	movs	r2, #8
	mov	r8, r1
	mov	r0, sp
	ldr	r1, .L322
	bl	memcpy
	movs	r2, #8
	ldr	r1, .L322+4
	add	r0, sp, r2
	bl	memcpy
	ldr	r1, [r4, #1608]
	cbnz	r1, .L296
	ldr	r0, .L322+8
	bl	NAND_Print
.L297:
	movs	r0, #0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, pc}
.L296:
	add	r7, r4, #584
	mov	r0, r7
	bl	del_from_cache_write_list
	mov	r5, r0
	cmp	r0, #0
	beq	.L297
	ldr	r3, [r4, #4]
	ldrh	r2, [r0, #6]
	ldrd	r1, r6, [r0, #8]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L299
	ldr	r3, [r4, #2004]
	mov	r0, r4
	ldr	r2, [r4, #1616]
	blx	r3
	mov	r10, r0
	ldrh	r0, [r5, #6]
	ldr	r3, [r4, #4]
	ldr	r1, [r4, #1616]
	lsls	r0, r0, #9
	ldrh	r2, [r3, #26]
	uxth	r0, r0
	subs	r2, r2, r0
	add	r1, r1, r0
	add	r0, r0, r6
	bl	NAND_Memcpy
	cmp	r10, #10
	bne	.L299
	ldrh	r2, [r4, #590]
	ldr	r1, [r5, #8]
	ldr	r0, .L322+12
	bl	NAND_Print
.L299:
	movs	r3, #0
	mov	r2, r6
	strh	r3, [r5, #4]	@ movhi
	mov	r0, r4
	ldr	r3, [r4, #4]
	ldr	r1, [r5, #8]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	strh	r3, [r5, #6]	@ movhi
	ldr	r3, [r4, #2000]
	blx	r3
	cbz	r0, .L301
	ldr	r0, .L322+16
	bl	NAND_Print
.L301:
	ldr	r10, [r4, #4]
	movs	r2, #8
	mov	r1, sp
	mov	r0, r10
	bl	NAND_Memcmp
	tst	r0, #255
	bne	.L302
.L305:
	cmp	r8, #1
	bne	.L306
	ldrh	r1, [r4, #320]
	ldr	r0, .L322+20
	bl	NAND_Print
	ldrh	r0, [r4, #320]
	cbz	r0, .L306
	subs	r0, r0, #1
	bl	nand_phy_get_page_type
	cmp	r0, #2
	bne	.L306
	ldr	r0, .L322+24
	bl	NAND_Print
	ldr	r3, [r4, #2000]
	mov	r2, r6
	ldr	r1, [r5, #8]
	mov	r0, r4
	blx	r3
	cbz	r0, .L306
	ldr	r0, .L322+16
	bl	NAND_Print
	b	.L306
.L302:
	movs	r2, #8
	mov	r0, r10
	add	r1, sp, r2
	bl	NAND_Memcmp
	tst	r0, #255
	beq	.L305
.L306:
	movs	r2, #2
	mov	r1, r5
	mov	r0, r7
	bl	add_to_cache_read_list_tail
	b	.L297
.L323:
	.align	2
.L322:
	.word	.LANCHOR0
	.word	.LANCHOR0+8
	.word	.LC50
	.word	.LC51
	.word	.LC52
	.word	.LC53
	.word	.LC54
	.size	flush_write_cache_to_nand, .-flush_write_cache_to_nand
	.section	.text.nand_cache_write,"ax",%progbits
	.align	1
	.global	nand_cache_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_cache_write, %function
nand_cache_write:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r4, r0
	mov	r6, r1
	str	r3, [sp, #4]
	cbnz	r3, .L325
.L363:
	movs	r0, #0
	b	.L324
.L325:
	lsls	r3, r2, #1
	lsl	r8, r2, #9
	and	r10, r3, #65024
	ldr	r3, [r0, #1972]
	uxth	r8, r8
	ldrh	r5, [r3]
	cbz	r5, .L327
	ldr	r5, [r0, #604]
	ldr	r3, [r0, #2004]
	mov	r2, r5
	blx	r3
	mov	r2, r8
	ldr	r1, [sp, #4]
	add	r0, r5, r10
	bl	NAND_Memcpy
	ldr	r3, [r4, #2000]
	mov	r2, r5
	mov	r1, r6
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, lr}
	bx	r3
.L327:
	add	r5, r0, #584
	ldrh	r0, [r3, #2]
	cbnz	r0, .L328
	ldr	r0, [r4, #4]
	ldrb	r7, [r0, #8]	@ zero_extendqisi2
	cmp	r7, r2
	bne	.L328
	ldrh	r3, [r3, #26]
	cbnz	r3, .L328
	mov	r0, r5
	bl	search_from_cache_write_list
	mov	r1, r0
	cbz	r0, .L329
	mov	r0, r5
	bl	del_from_cache_write_list
.L329:
	mov	r1, r6
	mov	r0, r5
	bl	search_from_cache_read_list
	mov	r1, r0
	cbz	r0, .L330
	mov	r0, r5
	bl	del_from_cache_read_list
.L330:
	ldr	r3, [r4, #2000]
	mov	r1, r6
	ldr	r2, [sp, #4]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	beq	.L363
	mov	r1, r7
	ldr	r0, .L365
	bl	NAND_Print
.L362:
	movs	r0, #1
.L324:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L328:
	mov	r1, r6
	mov	r0, r5
	bl	search_from_cache_write_list
	mov	r7, r0
	cmp	r0, #0
	beq	.L332
	mov	r1, r0
	mov	r0, r5
	bl	del_from_cache_write_list
	ldr	r3, [r7, #12]
	ldr	r2, [r4, #4]
	str	r3, [sp, #8]
	ldrb	r2, [r2, #8]	@ zero_extendqisi2
	ldrh	r3, [r7, #6]
	cmp	r2, r3
	beq	.L334
	lsl	fp, r3, #9
	uxth	fp, fp
	cmp	r10, fp
	bne	.L335
	add	r3, r3, r8, lsr #9
	strh	r3, [r7, #6]	@ movhi
.L334:
	ldrd	r1, r3, [sp, #4]
	mov	r2, r8
	add	r3, r3, r10
	mov	r0, r3
	bl	NAND_Memcpy
	mov	r1, r7
	mov	r0, r5
	bl	add_to_cache_write_list_tail
	mov	r1, r6
	mov	r0, r5
	bl	search_from_cache_read_list
	mov	r1, r0
	cmp	r0, #0
	beq	.L363
	mov	r0, r5
	bl	del_from_cache_read_list
	b	.L363
.L335:
	ldr	r3, [r4, #2004]
	mov	r1, r6
	ldr	r2, [r4, #1616]
	mov	r0, r4
	blx	r3
	ldr	r2, [r4, #4]
	ldr	r3, [sp, #8]
	ldr	r1, [r4, #1616]
	ldrh	r2, [r2, #26]
	str	r0, [sp, #12]
	add	r0, r3, fp
	add	r1, r1, fp
	sub	r2, r2, fp
	bl	NAND_Memcpy
	ldr	r2, [r4, #4]
	ldr	r3, [sp, #12]
	ldrb	r2, [r2, #8]	@ zero_extendqisi2
	cmp	r3, #10
	strh	r2, [r7, #6]	@ movhi
	bne	.L334
	mov	r1, r6
	ldr	r0, .L365+4
	bl	NAND_Print
	b	.L334
.L332:
	mov	r0, r5
	bl	search_from_cache_read_list
	mov	fp, r0
	cbz	r0, .L337
	ldr	r0, [r0, #12]
	mov	r2, r8
	ldr	r1, [sp, #4]
	add	r0, r0, r10
	bl	NAND_Memcpy
	ldr	r3, [r4, #4]
	mov	r1, fp
	strh	r7, [fp, #4]	@ movhi
	mov	r0, r5
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	strh	r3, [fp, #6]	@ movhi
	bl	del_from_cache_read_list
	mov	r0, r5
	bl	add_to_cache_write_list_tail
	ldr	r3, [r4, #1972]
	ldrh	r2, [r4, #588]
	ldrh	r3, [r3, #24]
	cmp	r2, r3
	bcc	.L363
	mov	r1, r7
	mov	r0, r4
	bl	flush_write_cache_to_nand
	cmp	r0, #0
	beq	.L363
	ldr	r0, .L365+8
.L364:
	bl	NAND_Print
	b	.L362
.L338:
	movs	r1, #0
	mov	r0, r4
	bl	flush_write_cache_to_nand
	cbz	r0, .L337
	ldr	r0, .L365+12
	b	.L364
.L337:
	ldr	r3, [r4, #1972]
	ldrh	r2, [r4, #588]
	ldrh	r3, [r3, #24]
	cmp	r2, r3
	bcs	.L338
	mov	r0, r5
	bl	get_empty_cahce_node
	mov	r7, r0
	cbnz	r0, .L339
	ldrh	r3, [r4, #590]
	ldrh	r2, [r4, #586]
	ldrh	r1, [r4, #588]
	ldr	r0, .L365+16
	bl	NAND_Print
	b	.L362
.L339:
	str	r6, [r0, #8]
	ldr	fp, [r0, #12]
	cmp	r10, #0
	bne	.L340
	lsr	r3, r8, #9
	strh	r10, [r0, #4]	@ movhi
.L361:
	ldr	r1, [sp, #4]
	add	r0, fp, r10
	strh	r3, [r7, #6]	@ movhi
	mov	r2, r8
	bl	NAND_Memcpy
	mov	r1, r7
	mov	r0, r5
	bl	add_to_cache_write_list_tail
	b	.L363
.L340:
	ldr	r3, [r4, #2004]
	mov	r2, fp
	mov	r1, r6
	mov	r0, r4
	blx	r3
	cmp	r0, #10
	bne	.L342
	mov	r1, r6
	ldr	r0, .L365+20
	bl	NAND_Print
.L342:
	movs	r3, #0
	strh	r3, [r7, #4]	@ movhi
	ldr	r3, [r4, #4]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	b	.L361
.L366:
	.align	2
.L365:
	.word	.LC55
	.word	.LC56
	.word	.LC57
	.word	.LC58
	.word	.LC46
	.word	.LC59
	.size	nand_cache_write, .-nand_cache_write
	.section	.text.__nand_flush_write_cache,"ax",%progbits
	.align	1
	.global	__nand_flush_write_cache
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	__nand_flush_write_cache, %function
__nand_flush_write_cache:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r4, #0
	mov	r6, r0
	mov	r7, r1
	mov	r5, r4
.L368:
	ldr	r3, [r6, #1608]
	cbz	r3, .L369
	adds	r4, r4, #1
	movs	r1, #1
	mov	r0, r6
	bl	flush_write_cache_to_nand
	cmp	r7, r4
	orr	r5, r5, r0
	bne	.L368
.L369:
	cbz	r5, .L371
	ldr	r0, .L382
	bl	NAND_Print
.L371:
	cbz	r4, .L367
	ldr	r3, [r6, #356]
	cbz	r3, .L367
	mov	r2, r4
	ldrb	r1, [r6, #16]	@ zero_extendqisi2
	ldr	r0, .L382+4
	bl	NAND_Print_DBG
.L367:
	mov	r0, r5
	pop	{r3, r4, r5, r6, r7, pc}
.L383:
	.align	2
.L382:
	.word	.LC60
	.word	.LC61
	.size	__nand_flush_write_cache, .-__nand_flush_write_cache
	.section	.text._nand_flush_write_cache,"ax",%progbits
	.align	1
	.global	_nand_flush_write_cache
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nand_flush_write_cache, %function
_nand_flush_write_cache:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #12]
	b	__nand_flush_write_cache
	.size	_nand_flush_write_cache, .-_nand_flush_write_cache
	.global	__aeabi_uidiv
	.section	.text.nand_discard,"ax",%progbits
	.align	1
	.global	nand_discard
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_discard, %function
nand_discard:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, r0
	ldr	r3, [r6, #24]
	mov	r4, r2
	adds	r2, r1, r2
	mov	r0, r1
	cmp	r2, r3
	bls	.L386
	ldr	r0, .L407
	bl	NAND_Print
	movs	r0, #1
.L385:
	pop	{r4, r5, r6, r7, r8, pc}
.L386:
	ldr	r1, [r6, #1968]
	ldrd	r2, [r1, #96]
	adds	r7, r2, r4
	adc	r8, r3, #0
	ldr	r3, [r6, #4]
	strd	r7, [r1, #96]
	ldrb	r7, [r3, #8]	@ zero_extendqisi2
	mov	r1, r7
	bl	__aeabi_uidivmod
	mov	r5, r0
	cbz	r1, .L388
	subs	r1, r7, r1
	adds	r5, r5, #1
	uxth	r1, r1
	cmp	r1, r4
	bhi	.L396
	subs	r4, r4, r1
.L389:
	mov	r1, r7
	mov	r0, r4
	bl	__aeabi_uidiv
	cbz	r0, .L390
	add	r7, r6, #584
	adds	r4, r5, r0
.L395:
	ldr	r3, [r6, #1972]
	ldrh	r3, [r3]
	cbnz	r3, .L392
	mov	r1, r5
	mov	r0, r7
	bl	search_from_cache_write_list
	mov	r1, r0
	cbz	r0, .L393
	mov	r0, r7
	bl	del_from_cache_write_list
.L393:
	mov	r1, r5
	mov	r0, r7
	bl	search_from_cache_read_list
	mov	r1, r0
	cbz	r0, .L392
	mov	r0, r7
	bl	del_from_cache_read_list
.L392:
	mov	r1, r5
	ldr	r3, [r6, #2012]
	mov	r0, r6
	adds	r5, r5, #1
	blx	r3
	ldr	r3, [r6, #4]
	movs	r1, #0
	ldr	ip, [r6, #1968]
	ldrb	r0, [r3, #8]	@ zero_extendqisi2
	ldrd	r3, r2, [ip, #104]
	adds	r3, r3, r0
	adc	r2, r1, r2
	cmp	r5, r4
	strd	r3, r2, [ip, #104]
	bne	.L395
.L390:
	movs	r0, #0
	b	.L385
.L388:
	cmp	r7, r4
	it	hi
	movhi	r4, #0
	b	.L389
.L396:
	movs	r4, #0
	b	.L389
.L408:
	.align	2
.L407:
	.word	.LC62
	.size	nand_discard, .-nand_discard
	.section	.text.__nand_discard,"ax",%progbits
	.align	1
	.global	__nand_discard
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	__nand_discard, %function
__nand_discard:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #356]
	push	{r4, r5, r6, lr}
	mov	r4, r0
	mov	r5, r1
	mov	r6, r2
	cmp	r3, #3
	bne	.L410
	ldr	r0, .L411
	bl	NAND_Print_DBG
.L410:
	mov	r2, r6
	mov	r1, r5
	mov	r0, r4
	pop	{r4, r5, r6, lr}
	b	nand_discard
.L412:
	.align	2
.L411:
	.word	.LC63
	.size	__nand_discard, .-__nand_discard
	.section	.text._nand_discard,"ax",%progbits
	.align	1
	.global	_nand_discard
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nand_discard, %function
_nand_discard:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #12]
	b	__nand_discard
	.size	_nand_discard, .-_nand_discard
	.section	.text.__shutdown_op,"ax",%progbits
	.align	1
	.global	__shutdown_op
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	__shutdown_op, %function
__shutdown_op:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #0
	bx	lr
	.size	__shutdown_op, .-__shutdown_op
	.section	.text.get_last_nftl,"ax",%progbits
	.align	1
	.global	get_last_nftl
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_last_nftl, %function
get_last_nftl:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
.L416:
	cbnz	r3, .L417
	bx	lr
.L417:
	mov	r0, r3
	ldr	r3, [r3, #8]
	b	.L416
	.size	get_last_nftl, .-get_last_nftl
	.section	.text.get_nftl_need_read_claim,"ax",%progbits
	.align	1
	.global	get_nftl_need_read_claim
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_nftl_need_read_claim, %function
get_nftl_need_read_claim:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, r0
	mov	r3, r0
.L419:
	cbnz	r3, .L420
	ldr	r3, [r2, #12]
	ldr	r3, [r3, #1968]
	ldr	r3, [r3, #172]
.L421:
	cbnz	r0, .L423
.L418:
	bx	lr
.L420:
	mov	r2, r3
	ldr	r3, [r3, #8]
	b	.L419
.L423:
	ldr	r2, [r0, #12]
	ldrb	r2, [r2, #16]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L418
	ldr	r0, [r0, #8]
	b	.L421
	.size	get_nftl_need_read_claim, .-get_nftl_need_read_claim
	.section	.text.get_nftl_read_claim_page_no,"ax",%progbits
	.align	1
	.global	get_nftl_read_claim_page_no
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_nftl_read_claim_page_no, %function
get_nftl_read_claim_page_no:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
.L425:
	cbnz	r3, .L426
	ldr	r3, [r0, #12]
	ldr	r3, [r3, #1968]
	ldr	r0, [r3, #176]
	bx	lr
.L426:
	mov	r0, r3
	ldr	r3, [r3, #8]
	b	.L425
	.size	get_nftl_read_claim_page_no, .-get_nftl_read_claim_page_no
	.section	.text.clean_read_reclaim_complete_flag,"ax",%progbits
	.align	1
	.global	clean_read_reclaim_complete_flag
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	clean_read_reclaim_complete_flag, %function
clean_read_reclaim_complete_flag:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L428:
	cbnz	r0, .L429
	bx	lr
.L429:
	ldr	r2, [r0, #12]
	ldr	r0, [r0, #8]
	ldr	r3, [r2, #364]
	clz	r3, r3
	lsrs	r3, r3, #5
	str	r3, [r2, #364]
	b	.L428
	.size	clean_read_reclaim_complete_flag, .-clean_read_reclaim_complete_flag
	.section	.text.set_nftl_read_claim_complete,"ax",%progbits
	.align	1
	.global	set_nftl_read_claim_complete
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	set_nftl_read_claim_complete, %function
set_nftl_read_claim_complete:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	movs	r3, #1
	ldr	r5, [r1, #12]
	mov	r4, r0
	str	r3, [r5, #360]
	mov	r3, r0
.L431:
	cbnz	r3, .L432
	ldr	r1, [r1, #8]
	ldr	r2, [r4, #12]
	ldr	r2, [r2, #1968]
	cbnz	r1, .L433
	str	r3, [r2, #172]
	bl	clean_read_reclaim_complete_flag
.L434:
	ldr	r3, [r4, #12]
	movs	r0, #0
	ldr	r3, [r3, #1968]
	str	r0, [r3, #176]
	pop	{r3, r4, r5, pc}
.L432:
	mov	r4, r3
	ldr	r3, [r3, #8]
	b	.L431
.L433:
	ldrb	r3, [r5, #16]	@ zero_extendqisi2
	adds	r3, r3, #1
	str	r3, [r2, #172]
	b	.L434
	.size	set_nftl_read_claim_complete, .-set_nftl_read_claim_complete
	.section	.text.set_nftl_read_claim_flag,"ax",%progbits
	.align	1
	.global	set_nftl_read_claim_flag
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	set_nftl_read_claim_flag, %function
set_nftl_read_claim_flag:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L436:
	cbnz	r0, .L437
	bx	lr
.L437:
	ldr	r3, [r0, #12]
	ldr	r0, [r0, #8]
	ldr	r3, [r3, #1968]
	strd	r1, r2, [r3, #172]
	b	.L436
	.size	set_nftl_read_claim_flag, .-set_nftl_read_claim_flag
	.section	.text.nftl_sector_cache_init,"ax",%progbits
	.align	1
	.global	nftl_sector_cache_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_sector_cache_init, %function
nftl_sector_cache_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r3, #16
	movs	r5, #0
	mov	r4, r0
	str	r3, [r0, #1620]
	str	r5, [r0, #1624]
	mov	r0, #8192
	bl	NAND_Malloc
	str	r0, [r4, #1624]
	cbnz	r0, .L439
	ldr	r1, .L443
	ldr	r0, .L443+4
	bl	NAND_Print
	movs	r0, #1
.L438:
	pop	{r4, r5, r6, pc}
.L439:
	mov	r2, r5
	str	r5, [r4, #1960]
	str	r5, [r4, #1964]
	mov	r3, r4
	movs	r6, #255
	mov	r5, #-1
	mov	r1, r2
.L441:
	strh	r2, [r3, #1628]	@ movhi
	add	r4, r0, r2, lsl #9
	adds	r2, r2, #1
	strh	r6, [r3, #1630]	@ movhi
	cmp	r2, #16
	str	r5, [r3, #1632]
	str	r1, [r3, #1640]
	add	r3, r3, #20
	str	r1, [r3, #1624]
	str	r4, [r3, #1616]
	bne	.L441
	movs	r0, #0
	b	.L438
.L444:
	.align	2
.L443:
	.word	.LANCHOR1
	.word	.LC64
	.size	nftl_sector_cache_init, .-nftl_sector_cache_init
	.section	.text.search_from_sector_cache_write_list,"ax",%progbits
	.align	1
	.global	search_from_sector_cache_write_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	search_from_sector_cache_write_list, %function
search_from_sector_cache_write_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #340]
.L446:
	cbnz	r0, .L448
.L445:
	bx	lr
.L448:
	ldr	r3, [r0, #4]
	cmp	r3, r1
	beq	.L445
	ldr	r0, [r0, #12]
	b	.L446
	.size	search_from_sector_cache_write_list, .-search_from_sector_cache_write_list
	.section	.text.get_empty_sector_cahce_node,"ax",%progbits
	.align	1
	.global	get_empty_sector_cahce_node
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_empty_sector_cahce_node, %function
get_empty_sector_cahce_node:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #0
	movs	r1, #20
	push	{r4, lr}
.L452:
	mul	r2, r1, r3
	adds	r4, r0, r2
	ldrh	r4, [r4, #10]
	cmp	r4, #255
	bne	.L450
	adds	r2, r2, #8
	add	r0, r0, r2
.L449:
	pop	{r4, pc}
.L450:
	adds	r3, r3, #1
	cmp	r3, #16
	bne	.L452
	movs	r0, #0
	b	.L449
	.size	get_empty_sector_cahce_node, .-get_empty_sector_cahce_node
	.section	.text.add_to_sector_cache_write_list_tail,"ax",%progbits
	.align	1
	.global	add_to_sector_cache_write_list_tail
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	add_to_sector_cache_write_list_tail, %function
add_to_sector_cache_write_list_tail:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r2, r0, #328
.L455:
	ldr	r3, [r2, #12]
	cbnz	r3, .L456
	str	r1, [r2, #12]
	strd	r3, r2, [r1, #12]
	movs	r2, #1
	strh	r2, [r1, #2]	@ movhi
	ldrh	r2, [r0, #2]
	adds	r2, r2, #1
	strh	r2, [r0, #2]	@ movhi
	mov	r0, r3
	bx	lr
.L456:
	mov	r2, r3
	b	.L455
	.size	add_to_sector_cache_write_list_tail, .-add_to_sector_cache_write_list_tail
	.section	.text.del_from_sector_cache_write_list,"ax",%progbits
	.align	1
	.global	del_from_sector_cache_write_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	del_from_sector_cache_write_list, %function
del_from_sector_cache_write_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrd	r3, r2, [r1, #12]
	str	r3, [r2, #12]
	ldr	r3, [r1, #12]
	cbz	r3, .L458
	str	r2, [r3, #16]
.L458:
	movs	r3, #0
	strd	r3, r3, [r1, #12]
	movs	r3, #255
	strh	r3, [r1, #2]	@ movhi
	ldrh	r3, [r0, #2]
	subs	r3, r3, #1
	strh	r3, [r0, #2]	@ movhi
	mov	r0, r1
	bx	lr
	.size	del_from_sector_cache_write_list, .-del_from_sector_cache_write_list
	.section	.text.nand_sector_cache_read,"ax",%progbits
	.align	1
	.global	nand_sector_cache_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_sector_cache_read, %function
nand_sector_cache_read:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	addw	r0, r0, #1620
	mov	r5, r2
	bl	search_from_sector_cache_write_list
	cbz	r0, .L463
	ldr	r1, [r0, #8]
	mov	r2, #512
	mov	r0, r5
	bl	NAND_Memcpy
	movs	r0, #0
.L462:
	pop	{r4, r5, r6, pc}
.L463:
	mov	r3, r2
	mov	r0, r4
	movs	r2, #1
	bl	__nand_read
	cmp	r0, #0
	beq	.L462
	ldr	r0, .L468
	bl	NAND_Print
	movs	r0, #1
	b	.L462
.L469:
	.align	2
.L468:
	.word	.LC65
	.size	nand_sector_cache_read, .-nand_sector_cache_read
	.section	.text.__nand_sector_read,"ax",%progbits
	.align	1
	.global	__nand_sector_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	__nand_sector_read, %function
__nand_sector_read:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r8, r0
	mov	r4, r1
	mov	r6, r3
	adds	r7, r1, r2
	movs	r5, #0
.L471:
	cmp	r4, r7
	bne	.L472
	mov	r0, r5
	pop	{r4, r5, r6, r7, r8, pc}
.L472:
	mov	r2, r6
	mov	r1, r4
	mov	r0, r8
	adds	r4, r4, #1
	bl	nand_sector_cache_read
	add	r6, r6, #512
	orrs	r5, r5, r0
	b	.L471
	.size	__nand_sector_read, .-__nand_sector_read
	.section	.text.nand_sector_cache_write,"ax",%progbits
	.align	1
	.global	nand_sector_cache_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_sector_cache_write, %function
nand_sector_cache_write:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	addw	r5, r0, #1620
	mov	r6, r0
	mov	r0, r5
	mov	r8, r1
	mov	r7, r2
	bl	search_from_sector_cache_write_list
	mov	r4, r0
	cbz	r0, .L474
	mov	r1, r0
	mov	r0, r5
	bl	del_from_sector_cache_write_list
.L482:
	mov	r2, #512
	mov	r1, r7
	ldr	r0, [r4, #8]
	bl	NAND_Memcpy
	mov	r1, r4
	mov	r0, r5
	bl	add_to_sector_cache_write_list_tail
	movs	r0, #0
	b	.L473
.L474:
	ldrh	r3, [r6, #1622]
	cmp	r3, #7
	bls	.L476
	ldr	r1, [r6, #1960]
	mov	r0, r5
	bl	del_from_sector_cache_write_list
	movs	r2, #1
	mov	r4, r0
	ldr	r3, [r0, #8]
	ldr	r1, [r0, #4]
	mov	r0, r6
	bl	__nand_write
	cbz	r0, .L477
	ldr	r0, .L483
.L481:
	bl	NAND_Print
	movs	r0, #1
.L473:
	pop	{r4, r5, r6, r7, r8, pc}
.L476:
	mov	r0, r5
	bl	get_empty_sector_cahce_node
	mov	r4, r0
	cbnz	r0, .L477
	ldr	r0, .L483+4
	b	.L481
.L477:
	str	r8, [r4, #4]
	b	.L482
.L484:
	.align	2
.L483:
	.word	.LC66
	.word	.LC67
	.size	nand_sector_cache_write, .-nand_sector_cache_write
	.section	.text.__nand_sector_write,"ax",%progbits
	.align	1
	.global	__nand_sector_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	__nand_sector_write, %function
__nand_sector_write:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r8, r0
	mov	r4, r1
	mov	r6, r3
	adds	r7, r1, r2
	movs	r5, #0
.L486:
	cmp	r4, r7
	bne	.L487
	mov	r0, r5
	pop	{r4, r5, r6, r7, r8, pc}
.L487:
	mov	r2, r6
	mov	r1, r4
	mov	r0, r8
	adds	r4, r4, #1
	bl	nand_sector_cache_write
	add	r6, r6, #512
	orrs	r5, r5, r0
	b	.L486
	.size	__nand_sector_write, .-__nand_sector_write
	.section	.text.__nand_flush_sector_write_cache,"ax",%progbits
	.align	1
	.global	__nand_flush_sector_write_cache
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	__nand_flush_sector_write_cache, %function
__nand_flush_sector_write_cache:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r5, r0
	mov	r6, r1
	addw	r7, r0, #1620
	movs	r4, #0
.L489:
	ldr	r1, [r5, #1960]
	cbz	r1, .L490
	mov	r0, r7
	bl	del_from_sector_cache_write_list
	movs	r2, #1
	ldr	r3, [r0, #8]
	ldr	r1, [r0, #4]
	mov	r0, r5
	bl	__nand_write
	subs	r6, r6, #1
	mov	r4, r0
	bne	.L489
.L490:
	cbz	r4, .L488
	ldr	r0, .L499
	bl	NAND_Print
.L488:
	mov	r0, r4
	pop	{r3, r4, r5, r6, r7, pc}
.L500:
	.align	2
.L499:
	.word	.LC60
	.size	__nand_flush_sector_write_cache, .-__nand_flush_sector_write_cache
	.section	.text.get_empty_gc_node,"ax",%progbits
	.align	1
	.global	get_empty_gc_node
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_empty_gc_node, %function
get_empty_gc_node:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #0
.L504:
	lsls	r2, r3, #4
	adds	r1, r0, r2
	ldrh	r1, [r1, #6]
	cbnz	r1, .L502
	adds	r2, r2, #4
	add	r0, r0, r2
	bx	lr
.L502:
	adds	r3, r3, #1
	cmp	r3, #10
	bne	.L504
	movs	r0, #0
	bx	lr
	.size	get_empty_gc_node, .-get_empty_gc_node
	.section	.text.search_gc_node,"ax",%progbits
	.align	1
	.global	search_gc_node
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	search_gc_node, %function
search_gc_node:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #172]
.L507:
	cbnz	r0, .L509
.L506:
	bx	lr
.L509:
	ldr	r3, [r0, #4]
	cmp	r3, r1
	beq	.L506
	ldr	r0, [r0, #8]
	b	.L507
	.size	search_gc_node, .-search_gc_node
	.section	.text.add_to_gc_list_tail,"ax",%progbits
	.align	1
	.global	add_to_gc_list_tail
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	add_to_gc_list_tail, %function
add_to_gc_list_tail:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r2, r0, #164
.L511:
	ldr	r3, [r2, #8]
	cbnz	r3, .L512
	str	r1, [r2, #8]
	strd	r3, r2, [r1, #8]
	ldrh	r2, [r0]
	adds	r2, r2, #1
	strh	r2, [r0]	@ movhi
	mov	r0, r3
	bx	lr
.L512:
	mov	r2, r3
	b	.L511
	.size	add_to_gc_list_tail, .-add_to_gc_list_tail
	.section	.text.del_from_gc_list,"ax",%progbits
	.align	1
	.global	del_from_gc_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	del_from_gc_list, %function
del_from_gc_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrd	r3, r2, [r1, #8]
	str	r3, [r2, #8]
	ldr	r3, [r1, #8]
	cbz	r3, .L514
	str	r2, [r3, #12]
.L514:
	movs	r3, #0
	strd	r3, r3, [r1, #8]
	ldrh	r3, [r0]
	subs	r3, r3, #1
	strh	r3, [r0]	@ movhi
	mov	r0, r1
	bx	lr
	.size	del_from_gc_list, .-del_from_gc_list
	.section	.text.add_prio_gc,"ax",%progbits
	.align	1
	.global	add_prio_gc
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	add_prio_gc, %function
add_prio_gc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	add	r5, r0, #392
	mov	r0, r5
	mov	r7, r1
	mov	r6, r2
	bl	search_gc_node
	mov	r4, r0
	cbnz	r0, .L521
	mov	r0, r5
	bl	get_empty_gc_node
	mov	r1, r0
	cbz	r0, .L521
	str	r7, [r0, #4]
	strh	r6, [r0, #2]	@ movhi
	strd	r4, r4, [r0, #8]
	mov	r0, r5
	bl	add_to_gc_list_tail
	mov	r0, r4
.L518:
	pop	{r3, r4, r5, r6, r7, pc}
.L521:
	movs	r0, #1
	b	.L518
	.size	add_prio_gc, .-add_prio_gc
	.section	.text.check_static_wear_leveling,"ax",%progbits
	.align	1
	.global	check_static_wear_leveling
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	check_static_wear_leveling, %function
check_static_wear_leveling:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r10, lr}
	mov	r4, r0
	ldr	r3, [r0, #580]
	cbz	r3, .L523
.L525:
	movs	r0, #1
.L522:
	pop	{r3, r4, r5, r6, r7, r8, r10, pc}
.L523:
	ldr	r3, [r0, #200]
	cmp	r3, #0
	beq	.L525
	ldr	r3, [r0, #172]
	cmp	r3, #0
	beq	.L525
	ldr	r3, [r0, #292]
	ldrh	r7, [r0, #18]
	ldr	r8, [r3, #8]
	cmp	r8, r7
	blt	.L525
	ldr	r3, [r0, #4]
	ldrh	r5, [r3, #16]
	mov	r1, r5
	bl	get_block_max_erase_time_from_free_list
	cmp	r0, #0
	beq	.L525
	ldrh	r6, [r0, #6]
	ldr	r0, .L543
	umull	r0, r1, r5, r0
	ubfx	r10, r1, #2, #16
	cmp	r6, r10
	bcc	.L525
	sub	r2, r8, r7
	mov	r1, r5
	mov	r0, r4
	bl	get_block_min_erase_time_from_invalid_list
	mov	r7, r0
	cmp	r0, #0
	beq	.L525
	ldrh	r8, [r0, #6]
	cmp	r6, r8
	bls	.L525
	lsls	r2, r6, #1
	adds	r3, r2, r6
	cmp	r3, r5, lsl #1
	ble	.L526
	ldr	r2, .L543+4
.L542:
	umull	r2, r3, r5, r2
	lsrs	r3, r3, #3
	strh	r3, [r4, #574]	@ movhi
.L527:
	ldrh	r2, [r4, #574]
	sub	r3, r6, r8
	cmp	r3, r2
	blt	.L525
	mov	r2, r8
	mov	r1, r6
	ldr	r0, .L543+8
	bl	NAND_Print_DBG
	ldrh	r1, [r7]
	ldr	r0, .L543+12
	bl	NAND_Print_DBG
	ldrh	r1, [r4, #18]
	ldr	r0, .L543+16
	bl	NAND_Print_DBG
	str	r7, [r4, #580]
	movs	r0, #0
	b	.L522
.L526:
	cmp	r5, r2
	bge	.L528
	ldr	r2, .L543
	b	.L542
.L528:
	cmp	r5, r3
	bge	.L529
	movs	r1, #7
	mov	r0, r5
	bl	__aeabi_uidiv
	strh	r0, [r4, #574]	@ movhi
	b	.L527
.L529:
	strh	r10, [r4, #574]	@ movhi
	b	.L527
.L544:
	.align	2
.L543:
	.word	-858993459
	.word	-1431655765
	.word	.LC68
	.word	.LC69
	.word	.LC70
	.size	check_static_wear_leveling, .-check_static_wear_leveling
	.section	.text.prio_gc_one,"ax",%progbits
	.align	1
	.global	prio_gc_one
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	prio_gc_one, %function
prio_gc_one:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	cmp	r2, #1
	push	{r4, lr}
	ldr	r4, [r3, #32]
	mov	r3, #36
	mla	r1, r3, r1, r4
	beq	.L546
	cmp	r2, #2
	it	ne
	movne	r2, #3
.L546:
	uxth	r2, r2
	bl	add_prio_gc
	movs	r0, #0
	pop	{r4, pc}
	.size	prio_gc_one, .-prio_gc_one
	.section	.text.get_total_invalid_page,"ax",%progbits
	.align	1
	.global	get_total_invalid_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_total_invalid_page, %function
get_total_invalid_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r3, r0, #188
	movs	r0, #0
.L553:
	ldr	r3, [r3, #12]
	cbnz	r3, .L554
	bx	lr
.L554:
	ldrh	r2, [r3, #4]
	add	r0, r0, r2
	b	.L553
	.size	get_total_invalid_page, .-get_total_invalid_page
	.section	.text.is_current_blcok,"ax",%progbits
	.align	1
	.global	is_current_blcok
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_current_blcok, %function
is_current_blcok:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #17]	@ zero_extendqisi2
	lsls	r2, r3, #31
	bpl	.L556
	ldr	r3, [r0, #324]
	cmp	r1, r3
	beq	.L558
.L556:
	ldr	r0, [r0, #292]
	subs	r3, r0, r1
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	bx	lr
.L558:
	movs	r0, #1
	bx	lr
	.size	is_current_blcok, .-is_current_blcok
	.section	.text.static_wear_leveling,"ax",%progbits
	.align	1
	.global	static_wear_leveling
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	static_wear_leveling, %function
static_wear_leveling:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrh	r2, [r0, #22]
	ldrh	r3, [r0, #380]
	push	{r4, lr}
	mov	r4, r0
	cmp	r2, r3
	bls	.L561
	ldr	r3, [r0, #368]
	cmp	r3, #19
	bls	.L561
	ldr	r2, [r0, #1968]
	ldr	r3, [r2, #180]
	adds	r3, r3, #1
	str	r3, [r2, #180]
	bl	get_block_min_count_from_invalid_list
	movs	r2, #5
	mov	r1, r0
	mov	r0, r4
	bl	add_prio_gc
	cbnz	r0, .L563
	ldr	r3, [r4, #372]
	adds	r3, r3, #4
	str	r3, [r4, #372]
.L563:
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #372]
	ldrh	r3, [r3, #20]
	cmp	r2, r3
	itt	cs
	movcs	r3, #0
	strdcs	r3, r3, [r4, #368]
.L561:
	movs	r0, #0
	pop	{r4, pc}
	.size	static_wear_leveling, .-static_wear_leveling
	.section	.text.nftl_get_gc_info,"ax",%progbits
	.align	1
	.global	nftl_get_gc_info
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_get_gc_info, %function
nftl_get_gc_info:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r8, r2
	movs	r2, #0
	mov	r5, r0
	mov	r7, r1
	sub	sp, sp, #32
	ldr	ip, [r0, #4]
	mov	r6, r2
	ldr	r4, [r0, #200]
	mov	r1, r2
	mov	r0, r2
.L565:
	cbnz	r4, .L567
	ldr	ip, [r5, #1968]
	mov	fp, #10
	ldrh	r3, [r5, #22]
	strd	r1, r0, [sp, #16]
	mov	r1, r8
	strd	r6, r2, [sp, #24]
	mov	r0, r7
	ldr	r2, [ip, #124]
	ldr	r10, .L578+4
	str	r2, [sp, #12]
	ldr	r2, [ip, #120]
	str	r2, [sp, #8]
	ldrh	r2, [r5, #382]
	str	r2, [sp, #4]
	ldrh	r2, [r5, #380]
	str	r2, [sp]
	ldr	r2, .L578
	bl	NAND_Snprintf
	ldr	r5, [r5, #200]
	mov	r6, r0
.L568:
	sub	r1, r8, r6
	adds	r0, r7, r6
	cmp	r1, #1
	bne	.L571
.L569:
	movs	r3, #10
	strb	r3, [r0, #-1]
	mov	r0, r6
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L567:
	ldrh	r3, [r4, #4]
	adds	r0, r0, #1
	ldrh	lr, [ip, #20]
	ldr	r4, [r4, #12]
	add	r2, r2, r3
	cmp	r3, lr, lsr #1
	itt	hi
	addhi	r6, r6, r3
	addhi	r1, r1, #1
	b	.L565
.L571:
	cmp	r5, #0
	beq	.L569
	ldrh	r2, [r5, #4]
	cmp	r2, #0
	beq	.L569
	ldrh	r3, [r5]
	adds	r4, r4, #1
	str	r2, [sp]
	mov	r2, r10
	bl	NAND_Snprintf
	lsls	r3, r4, #29
	add	r6, r6, r0
	itt	eq
	addeq	r3, r7, r6
	strbeq	fp, [r3, #-1]
	ldr	r5, [r5, #12]
	b	.L568
.L579:
	.align	2
.L578:
	.word	.LC71
	.word	.LC72
	.size	nftl_get_gc_info, .-nftl_get_gc_info
	.section	.text.dump_buf,"ax",%progbits
	.align	1
	.global	dump_buf
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	dump_buf, %function
dump_buf:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	movs	r4, #0
	ldr	r7, .L585
	mov	r6, r0
	mov	r5, r1
	ldr	r8, .L585+8
	ldr	r0, .L585+4
	bl	NAND_Print
.L581:
	cmp	r4, r5
	bne	.L584
	ldr	r0, .L585+4
	pop	{r4, r5, r6, r7, r8, lr}
	b	NAND_Print
.L584:
	lsls	r2, r4, #28
	bne	.L582
	mov	r1, r4
	mov	r0, r7
	bl	NAND_Print
.L582:
	ldrb	r1, [r6, r4]	@ zero_extendqisi2
	mov	r0, r8
	adds	r4, r4, #1
	bl	NAND_Print
	lsls	r3, r4, #28
	bne	.L581
	ldr	r0, .L585+4
	bl	NAND_Print
	b	.L581
.L586:
	.align	2
.L585:
	.word	.LC5
	.word	.LC7
	.word	.LC73
	.size	dump_buf, .-dump_buf
	.section	.text.init_zone_after_first_scan,"ax",%progbits
	.align	1
	.global	init_zone_after_first_scan
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	init_zone_after_first_scan, %function
init_zone_after_first_scan:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r1
	ldr	r6, [r0, #4]
	mov	r4, r0
	ldr	r0, [r0, #24]
	ldrb	r1, [r6, #8]	@ zero_extendqisi2
	bl	__aeabi_uidiv
	ldrh	r1, [r6, #20]
	bl	__aeabi_uidiv
	mov	r1, r5
	mov	r6, r0
	mov	r2, r0
	ldr	r0, .L594
	bl	NAND_Print_DBG
	cmp	r6, r5
	bcc	.L588
	ldr	r0, .L594+4
	mov	r2, r6
	mov	r1, r5
.L593:
	bl	NAND_Print
	movs	r0, #1
.L587:
	pop	{r4, r5, r6, pc}
.L588:
	ldr	r1, [r4, #4]
	subs	r2, r5, r6
	ldrb	r0, [r1, #8]	@ zero_extendqisi2
	ldrh	r3, [r1, #20]
	muls	r3, r0, r3
	muls	r3, r2, r3
	str	r3, [r4, #32]
	ldr	r3, [r4, #1972]
	ldrh	r1, [r3, #12]
	subs	r1, r1, #1
	cmp	r2, r1
	bcs	.L590
	mov	r2, r6
	mov	r1, r5
	ldr	r0, .L594+8
	b	.L593
.L590:
	ldr	r0, .L594+12
	umull	r0, r1, r2, r0
	ubfx	r0, r1, #2, #16
	ldrh	r1, [r3, #14]
	strh	r0, [r4, #380]	@ movhi
	cmp	r0, r1
	ldrh	r0, [r3, #18]
	it	cc
	strhcc	r1, [r4, #380]	@ movhi
	ldrh	r1, [r3, #20]
	muls	r0, r2, r0
	bl	__aeabi_uidiv
	ldrh	r3, [r4, #380]
	strh	r0, [r4, #382]	@ movhi
	uxth	r0, r0
	adds	r2, r3, #1
	cmp	r2, r0
	mov	r0, #0
	itt	ge
	addge	r3, r3, #2
	strhge	r3, [r4, #382]	@ movhi
	movs	r3, #1
	str	r3, [r4, #384]
	b	.L587
.L595:
	.align	2
.L594:
	.word	.LC74
	.word	.LC75
	.word	.LC76
	.word	-858993459
	.size	init_zone_after_first_scan, .-init_zone_after_first_scan
	.section	.text.check_bit_nums,"ax",%progbits
	.align	1
	.global	check_bit_nums
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	check_bit_nums, %function
check_bit_nums:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r2, #0
	mov	r4, r0
.L597:
	subs	r3, r4, r0
	cmp	r3, r1
	blt	.L600
	mov	r0, r2
	pop	{r4, r5, r6, pc}
.L600:
	ldrb	r6, [r4], #1	@ zero_extendqisi2
	movs	r5, #8
	movs	r3, #1
.L599:
	tst	r6, r3
	lsl	r3, r3, #1
	it	ne
	addne	r2, r2, #1
	subs	r5, r5, #1
	uxtb	r3, r3
	bne	.L599
	b	.L597
	.size	check_bit_nums, .-check_bit_nums
	.section	.text.is_all_bit_ff,"ax",%progbits
	.align	1
	.global	is_all_bit_ff
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_all_bit_ff, %function
is_all_bit_ff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	rsb	r4, r2, r1, lsl #3
	bl	check_bit_nums
	cmp	r4, r0
	ite	gt
	movgt	r0, #0
	movle	r0, #1
	pop	{r4, pc}
	.size	is_all_bit_ff, .-is_all_bit_ff
	.section	.text.is_all_byte_ff,"ax",%progbits
	.align	1
	.global	is_all_byte_ff
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_all_byte_ff, %function
is_all_byte_ff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	subs	r2, r1, r2
	mov	r4, r0
	movs	r3, #0
.L607:
	subs	r5, r4, r0
	cmp	r1, r5
	bgt	.L609
	cmp	r3, r2
	ite	lt
	movlt	r0, #0
	movge	r0, #1
	pop	{r4, r5, pc}
.L609:
	ldrb	r5, [r4], #1	@ zero_extendqisi2
	cmp	r5, #255
	it	eq
	addeq	r3, r3, #1
	b	.L607
	.size	is_all_byte_ff, .-is_all_byte_ff
	.section	.text.do_write_error_in_build_list,"ax",%progbits
	.align	1
	.global	do_write_error_in_build_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	do_write_error_in_build_list, %function
do_write_error_in_build_list:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r8, r3
	ldr	r3, [r0, #4]
	mov	r7, r2
	sub	sp, sp, #24
	movs	r5, #0
	ldrh	r2, [r2]
	mov	r10, r1
	ldrh	r3, [r3, #28]
	add	r1, sp, #8
	strh	r5, [sp, #8]	@ movhi
	mov	r4, r0
	strh	r2, [sp, #10]	@ movhi
	strh	r3, [sp, #12]	@ movhi
	strd	r5, r5, [sp, #16]
	ldr	r3, [r0, #1976]
	blx	r3
	ldrh	r3, [r7, #6]
	strh	r5, [r7, #4]	@ movhi
	adds	r3, r3, #1
	strh	r3, [r7, #6]	@ movhi
	cmp	r0, #0
	beq	.L615
	ldr	r0, .L620
	bl	NAND_Print
	ldr	r3, [r4, #1996]
	add	r1, sp, #8
	mov	r0, r4
	blx	r3
	movs	r0, #1
.L610:
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L614:
	uxth	r3, r6
	mov	r2, r7
	mov	r1, r10
	ldr	r5, [r4, #1988]
	str	r3, [sp]
	mov	r0, r4
	ldr	r3, [r4, #284]
	blx	r5
	cbz	r0, .L613
	mov	r0, fp
	bl	NAND_Print
.L613:
	adds	r6, r6, #1
.L611:
	cmp	r8, r6
	bhi	.L614
	ldr	r3, [r4, #4]
	movs	r5, #0
	ldrh	r2, [r10]
	add	r1, sp, #8
	strh	r5, [sp, #8]	@ movhi
	mov	r0, r4
	ldrh	r3, [r3, #28]
	strh	r2, [sp, #10]	@ movhi
	strd	r5, r5, [sp, #16]
	strh	r3, [sp, #12]	@ movhi
	ldr	r3, [r4, #1996]
	blx	r3
	cmp	r8, #0
	bne	.L616
	str	r7, [r4, #292]
	mov	r0, r8
	strh	r8, [r4, #320]	@ movhi
	b	.L610
.L615:
	mov	r6, r0
	ldr	fp, .L620+4
	b	.L611
.L616:
	mov	r0, r5
	b	.L610
.L621:
	.align	2
.L620:
	.word	.LC77
	.word	.LC78
	.size	do_write_error_in_build_list, .-do_write_error_in_build_list
	.section	.text.nftl_check_pattern,"ax",%progbits
	.align	1
	.global	nftl_check_pattern
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_check_pattern, %function
nftl_check_pattern:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r0
	push	{r4, lr}
.L623:
	subs	r4, r3, r0
	cmp	r2, r4
	bgt	.L625
	movs	r0, #0
.L622:
	pop	{r4, pc}
.L625:
	ldrb	r4, [r3], #1	@ zero_extendqisi2
	cmp	r4, r1
	beq	.L623
	movs	r0, #1
	b	.L622
	.size	nftl_check_pattern, .-nftl_check_pattern
	.section	.text.is_last_phy_block,"ax",%progbits
	.align	1
	.global	is_last_phy_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_last_phy_block, %function
is_last_phy_block:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r1, #4]
	ldrh	r0, [r0]
	ldrh	r3, [r3, #24]
	subs	r3, r3, #1
	subs	r3, r3, r0
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	bx	lr
	.size	is_last_phy_block, .-is_last_phy_block
	.section	.text.get_vaild_blocks,"ax",%progbits
	.align	1
	.global	get_vaild_blocks
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_vaild_blocks, %function
get_vaild_blocks:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
	movs	r4, #36
	ldr	r3, [r0, #4]
	sub	r8, r2, r1
	mov	r7, r0
	mov	r5, r1
	mov	r6, r8
	ldr	r3, [r3, #32]
	mla	r4, r4, r1, r3
.L629:
	cmp	r5, r8
	bcc	.L632
.L628:
	mov	r0, r6
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L632:
	ldrh	r3, [r4]
	mov	r1, sp
	mov	r0, r7
	strh	r3, [sp, #2]	@ movhi
	ldr	r3, [r7, #1992]
	blx	r3
	cmp	r0, #159
	bne	.L630
	subs	r6, r6, #1
	beq	.L628
.L630:
	mov	r1, r7
	mov	r0, r4
	bl	is_last_phy_block
	cmp	r0, #1
	beq	.L628
	adds	r4, r4, #36
	adds	r5, r5, #1
	b	.L629
	.size	get_vaild_blocks, .-get_vaild_blocks
	.section	.text.is_phy_block_valid,"ax",%progbits
	.align	1
	.global	is_phy_block_valid
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_phy_block_valid, %function
is_phy_block_valid:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r1, #4]
	ldrh	r0, [r0]
	ldrh	r3, [r3, #24]
	cmp	r0, r3
	ite	cs
	movcs	r0, #0
	movcc	r0, #1
	bx	lr
	.size	is_phy_block_valid, .-is_phy_block_valid
	.section	.text.get_phy_block_addr,"ax",%progbits
	.align	1
	.global	get_phy_block_addr
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_phy_block_addr, %function
get_phy_block_addr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #4]
	movs	r0, #36
	ldr	r3, [r3, #32]
	mla	r0, r0, r1, r3
	bx	lr
	.size	get_phy_block_addr, .-get_phy_block_addr
	.section	.text.check_cross_talk,"ax",%progbits
	.align	1
	.global	check_cross_talk
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	check_cross_talk, %function
check_cross_talk:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	movs	r4, #0
	sub	sp, sp, #36
	mov	r5, r0
	mov	r6, r1
	mov	r7, r4
.L642:
	ldr	r3, [r5, #4]
	ldrh	r2, [r3, #20]
	cmp	r2, r4
	bls	.L644
	ldrh	r3, [r3, #28]
	add	r1, sp, #16
	ldrh	r2, [r6]
	mov	r0, r5
	strh	r4, [sp, #16]	@ movhi
	strh	r3, [sp, #20]	@ movhi
	strh	r2, [sp, #18]	@ movhi
	str	r7, [sp, #24]
	str	sp, [sp, #28]
	ldr	r3, [r5, #1980]
	blx	r3
	cbnz	r0, .L643
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	cmp	r3, #99
	bhi	.L643
	ldr	r2, [r5, #1968]
	ldr	r1, [r2, #168]
	cmp	r1, r3
	bhi	.L643
	str	r3, [r2, #168]
.L644:
	movs	r0, #0
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L643:
	adds	r4, r4, #1
	b	.L642
	.size	check_cross_talk, .-check_cross_talk
	.section	.text.nftl_get_bad_block_cnt,"ax",%progbits
	.align	1
	.global	nftl_get_bad_block_cnt
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_get_bad_block_cnt, %function
nftl_get_bad_block_cnt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #12]
	ldrh	r0, [r3, #20]
	bx	lr
	.size	nftl_get_bad_block_cnt, .-nftl_get_bad_block_cnt
	.section	.text.print_nftl_zone,"ax",%progbits
	.align	1
	.global	print_nftl_zone
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	print_nftl_zone, %function
print_nftl_zone:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, lr}
	mov	r4, r0
	ldr	r3, [r0, #356]
	cmp	r3, #0
	beq	.L647
	ldr	r0, .L653
	bl	NAND_Print_DBG
	ldr	r3, [r4, #4]
	ldr	r0, .L653+4
	ldrh	r1, [r3, #24]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #4]
	ldr	r0, .L653+8
	ldrh	r1, [r3, #26]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #4]
	ldr	r0, .L653+12
	ldrh	r1, [r3, #20]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #4]
	ldr	r0, .L653+16
	ldrh	r1, [r3, #16]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #4]
	ldr	r0, .L653+20
	ldrh	r1, [r3, #30]
	bl	NAND_Print_DBG
	ldr	r1, [r4, #356]
	ldr	r0, .L653+24
	bl	NAND_Print_DBG
	ldrb	r1, [r4, #16]	@ zero_extendqisi2
	ldr	r0, .L653+28
	bl	NAND_Print_DBG
	ldrb	r1, [r4, #17]	@ zero_extendqisi2
	ldr	r0, .L653+32
	bl	NAND_Print_DBG
	ldrh	r1, [r4, #18]
	ldr	r0, .L653+36
	bl	NAND_Print_DBG
	ldrh	r1, [r4, #20]
	ldr	r0, .L653+40
	bl	NAND_Print_DBG
	ldr	r1, [r4, #24]
	ldr	r0, .L653+44
	bl	NAND_Print_DBG
	ldr	r1, [r4, #32]
	ldr	r0, .L653+48
	bl	NAND_Print_DBG
	ldrh	r1, [r4, #22]
	ldr	r0, .L653+52
	bl	NAND_Print_DBG
	ldrh	r1, [r4, #380]
	ldr	r0, .L653+56
	bl	NAND_Print_DBG
	ldrh	r1, [r4, #382]
	ldr	r0, .L653+60
	bl	NAND_Print_DBG
	ldrh	r1, [r4, #388]
	ldr	r0, .L653+64
	bl	NAND_Print_DBG
	ldrh	r1, [r4, #384]
	ldr	r0, .L653+68
	bl	NAND_Print_DBG
	ldrh	r1, [r4, #394]
	ldr	r0, .L653+72
	bl	NAND_Print_DBG
	ldr	r3, [r4, #40]
	ldr	r0, .L653+76
	ldrh	r1, [r3]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #44]
	ldr	r0, .L653+80
	ldrh	r1, [r3]
	bl	NAND_Print_DBG
	add	r3, r4, #272
	ldm	r3, {r0, r1, r2}
	add	r3, r4, #260
	stm	sp, {r0, r1, r2}
	ldr	r0, .L653+84
	ldm	r3, {r1, r2, r3}
	bl	NAND_Print_DBG
	add	r3, r4, #308
	ldm	r3, {r0, r1, r2}
	add	r3, r4, #296
	stm	sp, {r0, r1, r2}
	ldr	r0, .L653+88
	ldm	r3, {r1, r2, r3}
	bl	NAND_Print_DBG
	ldr	r1, [r4, #292]
	ldr	r0, .L653+92
	bl	NAND_Print_DBG
	ldr	r3, [r4, #292]
	ldr	r0, .L653+96
	ldrh	r1, [r3]
	bl	NAND_Print_DBG
	ldrh	r1, [r4, #320]
	ldr	r0, .L653+100
	bl	NAND_Print_DBG
	ldr	r3, [r4, #292]
	ldr	r0, .L653+104
	ldr	r1, [r3, #8]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #48]
	ldr	r0, .L653+108
	ldrh	r2, [r3, #6]
	ldrh	r1, [r3]
	bl	NAND_Print_DBG
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	lsls	r3, r3, #31
	bpl	.L649
	add	r3, r4, #340
	ldm	r3, {r0, r1, r2}
	add	r3, r4, #328
	stm	sp, {r0, r1, r2}
	ldr	r0, .L653+112
	ldm	r3, {r1, r2, r3}
	bl	NAND_Print_DBG
	ldr	r1, [r4, #324]
	ldr	r0, .L653+116
	bl	NAND_Print_DBG
	ldr	r3, [r4, #324]
	ldr	r0, .L653+120
	ldrh	r1, [r3]
	bl	NAND_Print_DBG
	ldrh	r1, [r4, #352]
	ldr	r0, .L653+124
	bl	NAND_Print_DBG
	ldr	r3, [r4, #324]
	ldr	r0, .L653+128
	ldr	r1, [r3, #8]
	bl	NAND_Print_DBG
.L649:
	ldr	r1, [r4, #360]
	ldr	r0, .L653+132
	bl	NAND_Print_DBG
	ldr	r1, [r4, #284]
	ldr	r0, .L653+136
	bl	NAND_Print_DBG
	ldr	r1, [r4, #376]
	ldr	r0, .L653+140
	bl	NAND_Print_DBG
	ldrh	r1, [r4, #584]
	ldr	r0, .L653+144
	bl	NAND_Print_DBG
	ldr	r1, [r4, #368]
	ldr	r0, .L653+148
	bl	NAND_Print_DBG
	ldr	r1, [r4, #372]
	ldr	r0, .L653+152
	bl	NAND_Print_DBG
	ldr	r3, [r4, #1972]
	ldr	r0, .L653+156
	ldrh	r1, [r3]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #1972]
	ldr	r0, .L653+160
	ldrh	r1, [r3, #2]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #1972]
	ldr	r0, .L653+164
	ldrh	r1, [r3, #4]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #1972]
	ldr	r0, .L653+168
	ldrh	r1, [r3, #6]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #1972]
	ldr	r0, .L653+172
	ldrh	r1, [r3, #10]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #1972]
	ldr	r0, .L653+176
	ldrh	r1, [r3, #12]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #1972]
	ldr	r0, .L653+180
	ldrh	r1, [r3, #14]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #1972]
	ldr	r0, .L653+184
	ldrh	r1, [r3, #16]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #1972]
	ldr	r0, .L653+188
	ldrh	r1, [r3, #18]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #1972]
	ldr	r0, .L653+192
	ldrh	r1, [r3, #20]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #1972]
	ldr	r0, .L653+196
	ldrh	r1, [r3, #22]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #1972]
	ldr	r0, .L653+200
	ldrh	r1, [r3, #24]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #1972]
	ldr	r0, .L653+204
	ldrh	r1, [r3, #26]
	bl	NAND_Print_DBG
	ldr	r3, [r4, #1972]
	ldr	r0, .L653+208
	ldr	r1, [r3, #32]
	bl	NAND_Print_DBG
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	b	print_smart
.L647:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L654:
	.align	2
.L653:
	.word	.LC79
	.word	.LC80
	.word	.LC81
	.word	.LC82
	.word	.LC83
	.word	.LC84
	.word	.LC85
	.word	.LC86
	.word	.LC87
	.word	.LC88
	.word	.LC89
	.word	.LC90
	.word	.LC91
	.word	.LC92
	.word	.LC93
	.word	.LC94
	.word	.LC95
	.word	.LC96
	.word	.LC97
	.word	.LC98
	.word	.LC99
	.word	.LC100
	.word	.LC101
	.word	.LC102
	.word	.LC103
	.word	.LC104
	.word	.LC105
	.word	.LC106
	.word	.LC107
	.word	.LC108
	.word	.LC109
	.word	.LC110
	.word	.LC111
	.word	.LC112
	.word	.LC113
	.word	.LC114
	.word	.LC115
	.word	.LC116
	.word	.LC117
	.word	.LC118
	.word	.LC119
	.word	.LC120
	.word	.LC121
	.word	.LC122
	.word	.LC123
	.word	.LC124
	.word	.LC125
	.word	.LC126
	.word	.LC127
	.word	.LC128
	.word	.LC129
	.word	.LC130
	.word	.LC131
	.size	print_nftl_zone, .-print_nftl_zone
	.section	.text.nftl_set_zone_test,"ax",%progbits
	.align	1
	.global	nftl_set_zone_test
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_set_zone_test, %function
nftl_set_zone_test:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #356]
	b	print_nftl_zone
	.size	nftl_set_zone_test, .-nftl_set_zone_test
	.section	.text.nand_dbg_phy_erase,"ax",%progbits
	.align	1
	.global	nand_dbg_phy_erase
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_dbg_phy_erase, %function
nand_dbg_phy_erase:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	block_erase
	.size	nand_dbg_phy_erase, .-nand_dbg_phy_erase
	.section	.text.nand_dbg_single_phy_erase,"ax",%progbits
	.align	1
	.global	nand_dbg_single_phy_erase
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_dbg_single_phy_erase, %function
nand_dbg_single_phy_erase:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	nand_physic_erase_block
	.size	nand_dbg_single_phy_erase, .-nand_dbg_single_phy_erase
	.section	.text.clean_block_list,"ax",%progbits
	.align	1
	.global	clean_block_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	clean_block_list, %function
clean_block_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r0
	movs	r4, #0
	mov	r6, #-1
.L660:
	mov	r0, r5
	bl	out_phy_block_from_free_list
	cbnz	r0, .L663
	mov	r1, r0
	mov	r4, #-1
.L659:
	mov	r0, r5
	bl	out_phy_block_from_invalid_page_list
	cbz	r0, .L658
	strh	r1, [r0, #4]	@ movhi
	strh	r1, [r0, #2]	@ movhi
	strd	r4, r1, [r0, #8]
	strd	r1, r1, [r0, #16]
	strd	r1, r1, [r0, #24]
	str	r1, [r0, #32]
	b	.L659
.L663:
	strh	r4, [r0, #4]	@ movhi
	strh	r4, [r0, #2]	@ movhi
	strd	r6, r4, [r0, #8]
	strd	r4, r4, [r0, #16]
	strd	r4, r4, [r0, #24]
	str	r4, [r0, #32]
	b	.L660
.L658:
	pop	{r4, r5, r6, pc}
	.size	clean_block_list, .-clean_block_list
	.section	.text.nand_clean_zone_table2,"ax",%progbits
	.align	1
	.global	nand_clean_zone_table2
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_clean_zone_table2, %function
nand_clean_zone_table2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r4, r0
	ldr	r0, [r0, #24]
	add	r8, r4, #52
	mov	r5, r4
	ldrb	r1, [r3, #8]	@ zero_extendqisi2
	bl	__aeabi_uidiv
	lsls	r6, r0, #2
	ldr	fp, .L673+4
	mov	r2, r0
	ldrb	r1, [r4, #16]	@ zero_extendqisi2
	lsrs	r7, r6, #20
	ldr	r0, .L673
	add	r10, r8, r7, lsl #2
	bl	NAND_Print_DBG
.L665:
	cmp	r8, r10
	bne	.L666
	ubfx	r6, r6, #0, #20
	cbz	r6, .L667
	add	r7, r4, r7, lsl #2
	movs	r1, #255
	mov	r2, r6
	ldr	r0, [r7, #52]
	bl	NAND_Memset
	mov	r1, r6
	ldr	r0, .L673+4
	bl	NAND_Print_DBG
.L667:
	movs	r3, #0
	movw	r2, #65535
	strh	r2, [r4, #320]	@ movhi
	strh	r2, [r4, #352]	@ movhi
	mov	r2, r3
	str	r3, [r4, #292]
	str	r3, [r4, #324]
	strd	r3, r3, [r4, #172]
	strd	r3, r3, [r4, #164]
	strd	r3, r3, [r4, #180]
	strd	r3, r3, [r4, #208]
	strd	r3, r3, [r4, #200]
	strd	r3, r3, [r4, #216]
	strd	r3, r3, [r4, #244]
	strd	r3, r3, [r4, #236]
	strd	r3, r3, [r4, #252]
	str	r3, [r4, #20]
	strh	r3, [r4, #392]	@ movhi
.L668:
	strh	r3, [r5, #396]	@ movhi
	adds	r3, r3, #1
	cmp	r3, #10
	strh	r2, [r5, #398]	@ movhi
	strd	r2, r2, [r5, #400]
	add	r5, r5, #16
	str	r2, [r5, #392]
	bne	.L668
	movs	r3, #255
	strh	r2, [r4, #394]	@ movhi
	strd	r3, r2, [r4, #556]
	movs	r0, #0
	strd	r2, r2, [r4, #564]
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L666:
	ldr	r0, [r8], #4
	mov	r2, #1048576
	movs	r1, #255
	bl	NAND_Memset
	mov	r1, #1048576
	mov	r0, fp
	bl	NAND_Print_DBG
	b	.L665
.L674:
	.align	2
.L673:
	.word	.LC132
	.word	.LC133
	.size	nand_clean_zone_table2, .-nand_clean_zone_table2
	.section	.text.nand_crc16,"ax",%progbits
	.align	1
	.global	nand_crc16
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_crc16, %function
nand_crc16:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	add	r2, r2, r1
	ldr	r4, .L678
.L676:
	cmp	r2, r1
	bne	.L677
	pop	{r4, pc}
.L677:
	ldrb	r3, [r1], #1	@ zero_extendqisi2
	eors	r3, r3, r0
	uxtb	r3, r3
	ldrh	r3, [r4, r3, lsl #1]
	eor	r0, r3, r0, lsr #8
	b	.L676
.L679:
	.align	2
.L678:
	.word	.LANCHOR2
	.size	nand_crc16, .-nand_crc16
	.section	.text.get_new_current_block,"ax",%progbits
	.align	1
	.global	get_new_current_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_new_current_block, %function
get_new_current_block:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r1
	ldr	r3, [r1]
	mov	r6, r0
	ldr	r2, [r1, #16]
	movs	r1, #255
	ldr	r0, [r4, #12]
	ldr	r5, [r3, #8]
	bl	NAND_Memset
	ldrh	r3, [r6, #578]
	cbz	r3, .L681
	ldr	r3, [r6, #4]
	mov	r0, r6
	ldrh	r1, [r3, #16]
	bl	out_phy_block_from_free_list_by_erase_time
	str	r0, [r4]
	cbz	r0, .L682
	ldrh	r2, [r0, #6]
	ldrh	r1, [r0]
	ldr	r0, .L689
	bl	NAND_Print_DBG
.L682:
	ldr	r1, [r4]
	cbnz	r1, .L683
	ldr	r0, .L689+4
	bl	NAND_Print
	movs	r0, #1
.L680:
	pop	{r3, r4, r5, r6, r7, pc}
.L681:
	mov	r0, r6
	bl	out_phy_block_from_free_list
	str	r0, [r4]
	b	.L682
.L683:
	adds	r2, r5, #1
	movs	r7, #0
	strh	r7, [r4, #28]	@ movhi
	str	r2, [r1, #8]
	ldrb	r3, [r6, #17]	@ zero_extendqisi2
	ands	r0, r3, #1
	ittt	ne
	addne	r2, r5, #2
	movne	r0, r7
	strne	r2, [r1, #8]
	b	.L680
.L690:
	.align	2
.L689:
	.word	.LC134
	.word	.LC135
	.size	get_new_current_block, .-get_new_current_block
	.section	.text.new_block_init_for_write,"ax",%progbits
	.align	1
	.global	new_block_init_for_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	new_block_init_for_write, %function
new_block_init_for_write:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	push	{r4, r5, r6, r7, lr}
	mov	r7, r2
	ldrh	r2, [r1]
	sub	sp, sp, #20
	movs	r6, #0
	mov	r5, r1
	ldrh	r3, [r3, #28]
	mov	r1, sp
	strh	r2, [sp, #2]	@ movhi
	mov	r4, r0
	strh	r6, [sp]	@ movhi
	strh	r3, [sp, #4]	@ movhi
	strd	r6, r6, [sp, #8]
	ldr	r3, [r0, #1976]
	blx	r3
	ldrh	r3, [r5, #6]
	ldr	r2, [r4, #376]
	strh	r6, [r5, #4]	@ movhi
	adds	r3, r3, #1
	uxth	r3, r3
	cmp	r3, r2
	strh	r3, [r5, #6]	@ movhi
	bls	.L692
	ldr	r2, [r4, #4]
	ldrh	r2, [r2, #16]
	cmp	r2, r3
	it	hi
	strhi	r3, [r4, #376]
.L692:
	str	r7, [r5, #8]
	cbz	r0, .L691
	ldr	r3, [r4, #1996]
	mov	r1, sp
	mov	r0, r4
	blx	r3
	ldr	r0, .L697
	bl	NAND_Print
	movs	r0, #1
.L691:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L698:
	.align	2
.L697:
	.word	.LC136
	.size	new_block_init_for_write, .-new_block_init_for_write
	.section	.text.do_before_write,"ax",%progbits
	.align	1
	.global	do_before_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	do_before_write, %function
do_before_write:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	add	r5, r0, #292
.L700:
	ldrh	r3, [r4, #320]
	cbz	r3, .L703
.L707:
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	lsls	r0, r3, #31
	bpl	.L705
	add	r5, r4, #324
.L704:
	ldrh	r3, [r4, #352]
	cbnz	r3, .L705
	ldr	r1, [r4, #324]
	mov	r0, r4
	ldr	r2, [r1, #8]
	bl	new_block_init_for_write
	cbnz	r0, .L709
.L705:
	movs	r0, #0
.L699:
	pop	{r3, r4, r5, pc}
.L703:
	ldr	r1, [r4, #292]
	mov	r0, r4
	ldr	r2, [r1, #8]
	bl	new_block_init_for_write
	cmp	r0, #0
	beq	.L707
	ldr	r2, [r4, #292]
	mov	r0, r4
	ldr	r3, [r2, #8]
	subs	r1, r3, #1
	str	r1, [r2, #8]
	ldrb	r1, [r4, #17]	@ zero_extendqisi2
	lsls	r1, r1, #31
	mov	r1, r5
	itt	mi
	submi	r3, r3, #2
	strmi	r3, [r2, #8]
	bl	get_new_current_block
	cmp	r0, #0
	beq	.L700
	ldr	r0, .L722
.L721:
	bl	NAND_Print
	movs	r0, #1
	b	.L699
.L709:
	ldr	r2, [r4, #324]
	mov	r0, r4
	ldr	r3, [r2, #8]
	subs	r1, r3, #1
	str	r1, [r2, #8]
	ldrb	r1, [r4, #17]	@ zero_extendqisi2
	lsls	r1, r1, #31
	mov	r1, r5
	itt	mi
	submi	r3, r3, #2
	strmi	r3, [r2, #8]
	bl	get_new_current_block
	cmp	r0, #0
	beq	.L704
	ldr	r0, .L722+4
	b	.L721
.L723:
	.align	2
.L722:
	.word	.LC137
	.word	.LC138
	.size	do_before_write, .-do_before_write
	.section	.text.nftl_ops_init,"ax",%progbits
	.align	1
	.global	nftl_ops_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_ops_init, %function
nftl_ops_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L725
	str	r3, [r0, #1976]
	ldr	r3, .L725+4
	str	r3, [r0, #1980]
	ldr	r3, .L725+8
	str	r3, [r0, #1984]
	ldr	r3, .L725+12
	str	r3, [r0, #1992]
	ldr	r3, .L725+16
	str	r3, [r0, #1996]
	ldr	r3, .L725+20
	str	r3, [r0, #1988]
	ldr	r3, .L725+24
	str	r3, [r0, #2004]
	ldr	r3, .L725+28
	str	r3, [r0, #2008]
	ldr	r3, .L725+32
	str	r3, [r0, #2000]
	ldr	r3, .L725+36
	str	r3, [r0, #2012]
	bx	lr
.L726:
	.align	2
.L725:
	.word	_nftl_nand_erase_superblk
	.word	_nftl_nand_read_page
	.word	_nftl_nand_write_page
	.word	_nftl_nand_is_blk_good
	.word	_nftl_nand_mark_bad_blk
	.word	_nftl_nand_copy_page
	.word	_nftl_nand_read_logic_page
	.word	_nftl_nand_read_logic_history_page
	.word	_nftl_nand_write_logic_page
	.word	_nftl_discard_logic_page
	.size	nftl_ops_init, .-nftl_ops_init
	.section	.text.current_block_at_last_page,"ax",%progbits
	.align	1
	.global	current_block_at_last_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	current_block_at_last_page, %function
current_block_at_last_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #4]
	ldrh	r0, [r1, #28]
	ldrh	r3, [r3, #20]
	subs	r3, r3, #1
	subs	r3, r3, r0
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	bx	lr
	.size	current_block_at_last_page, .-current_block_at_last_page
	.section	.text.current_block_at_first_page,"ax",%progbits
	.align	1
	.global	current_block_at_first_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	current_block_at_first_page, %function
current_block_at_first_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r0, [r1, #28]
	clz	r0, r0
	lsrs	r0, r0, #5
	bx	lr
	.size	current_block_at_first_page, .-current_block_at_first_page
	.section	.text.set_spare_data,"ax",%progbits
	.align	1
	.global	set_spare_data
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	set_spare_data, %function
set_spare_data:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	add	r6, r3, #536870912
	movs	r4, #0
	add	r2, r2, r0
	subs	r6, r6, #1
.L730:
	cmp	r3, r4
	bhi	.L731
	pop	{r4, r5, r6, pc}
.L731:
	subs	r5, r6, r4
	lsls	r5, r5, #3
	lsr	r5, r1, r5
	strb	r5, [r2, r4]
	adds	r4, r4, #1
	b	.L730
	.size	set_spare_data, .-set_spare_data
	.section	.text.get_spare_data,"ax",%progbits
	.align	1
	.global	get_spare_data
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_spare_data, %function
get_spare_data:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #0
	push	{r4, lr}
	add	r1, r1, r0
	mov	r4, r3
.L733:
	cmp	r2, r3
	bhi	.L734
	mov	r0, r4
	pop	{r4, pc}
.L734:
	ldrb	r0, [r1, r3]	@ zero_extendqisi2
	adds	r3, r3, #1
	orr	r4, r0, r4, lsl #8
	b	.L733
	.size	get_spare_data, .-get_spare_data
	.section	.text.set_oob_logic_page,"ax",%progbits
	.align	1
	.global	set_oob_logic_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	set_oob_logic_page, %function
set_oob_logic_page:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r1
	mov	r5, r3
	movs	r3, #255
	mov	r1, r2
	mov	r0, r4
	strb	r3, [r4]
	movs	r2, #1
	movs	r3, #4
	bl	set_spare_data
	movs	r3, #2
	movs	r2, #5
	ldrh	r1, [sp, #16]
	bl	set_spare_data
	movs	r3, #4
	movs	r2, #7
	mov	r1, r5
	bl	set_spare_data
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	orn	r3, r3, #63
	strb	r3, [r4, #1]
	pop	{r3, r4, r5, pc}
	.size	set_oob_logic_page, .-set_oob_logic_page
	.section	.text.set_oob_special_page,"ax",%progbits
	.align	1
	.global	set_oob_special_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	set_oob_special_page, %function
set_oob_special_page:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r1
	ldrh	r6, [sp, #16]
	mov	r5, r3
	movs	r3, #255
	mov	r1, r2
	strb	r3, [r4]
	mov	r0, r4
	movs	r3, #4
	movs	r2, #1
	bl	set_spare_data
	mov	r1, r6
	movs	r3, #2
	movs	r2, #5
	bl	set_spare_data
	mov	r1, r5
	movs	r3, #4
	movs	r2, #7
	pop	{r4, r5, r6, lr}
	b	set_spare_data
	.size	set_oob_special_page, .-set_oob_special_page
	.section	.text.mark_free_block,"ax",%progbits
	.align	1
	.global	mark_free_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	mark_free_block, %function
mark_free_block:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #44
	add	r6, sp, #24
	mov	r4, r0
	mov	r5, r1
	mov	r0, r6
	movs	r2, #16
	movs	r1, #165
	bl	NAND_Memset
	ldr	r3, [r4, #4]
	movs	r7, #0
	ldrh	r1, [r5]
	mov	r0, r4
	strh	r7, [sp, #8]	@ movhi
	ldrh	r2, [r3, #28]
	ldr	r3, [r4, #284]
	strh	r1, [sp, #10]	@ movhi
	mov	r1, r6
	strh	r2, [sp, #12]	@ movhi
	mov	r2, #1431655765
	strd	r3, r6, [sp, #16]
	ldrh	r3, [r5, #6]
	str	r3, [sp]
	ldr	r3, [r5, #8]
	bl	set_oob_special_page
	ldr	r3, [r4, #1984]
	add	r1, sp, #8
	mov	r0, r4
	blx	r3
	ldr	r3, [r4, #4]
	movs	r0, #1
	ldrh	r1, [r5]
	strh	r0, [sp, #8]	@ movhi
	mov	r0, r4
	ldrh	r2, [r3, #28]
	ldr	r3, [r4, #284]
	strh	r1, [sp, #10]	@ movhi
	mov	r1, r6
	strh	r2, [sp, #12]	@ movhi
	mov	r2, #1431655765
	strd	r3, r6, [sp, #16]
	ldrh	r3, [r5, #6]
	str	r3, [sp]
	ldr	r3, [r5, #8]
	bl	set_oob_special_page
	ldr	r3, [r4, #1984]
	add	r1, sp, #8
	mov	r0, r4
	blx	r3
	ldr	r3, [r4, #4]
	ldrh	r0, [r5]
	ldr	r2, [r4, #284]
	ldrh	r1, [r3, #28]
	ldrh	r3, [r3, #20]
	strh	r0, [sp, #10]	@ movhi
	mov	r0, r4
	strh	r1, [sp, #12]	@ movhi
	mov	r1, r6
	subs	r3, r3, #2
	strd	r2, r6, [sp, #16]
	strh	r3, [sp, #8]	@ movhi
	mov	r2, #1431655765
	ldrh	r3, [r5, #6]
	str	r3, [sp]
	ldr	r3, [r5, #8]
	bl	set_oob_special_page
	ldr	r3, [r4, #1984]
	add	r1, sp, #8
	mov	r0, r4
	blx	r3
	ldr	r3, [r4, #4]
	ldrh	r0, [r5]
	ldr	r2, [r4, #284]
	ldrh	r1, [r3, #28]
	ldrh	r3, [r3, #20]
	strh	r0, [sp, #10]	@ movhi
	mov	r0, r4
	strh	r1, [sp, #12]	@ movhi
	mov	r1, r6
	subs	r3, r3, #1
	strd	r2, r6, [sp, #16]
	strh	r3, [sp, #8]	@ movhi
	mov	r2, #1431655765
	ldrh	r3, [r5, #6]
	str	r3, [sp]
	ldr	r3, [r5, #8]
	bl	set_oob_special_page
	ldr	r3, [r4, #1984]
	add	r1, sp, #8
	mov	r0, r4
	blx	r3
	mov	r0, r7
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
	.size	mark_free_block, .-mark_free_block
	.section	.text.erase_block,"ax",%progbits
	.align	1
	.global	erase_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	erase_block, %function
erase_block:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
	mov	r5, r0
	mov	r4, r1
	ldr	r0, .L741
	mov	r8, r2
	movs	r6, #0
	ldrh	r1, [r1]
	bl	NAND_Print
	ldr	r3, [r5, #4]
	mov	r1, sp
	ldrh	r2, [r4]
	mov	r0, r5
	strh	r6, [sp]	@ movhi
	ldrh	r3, [r3, #28]
	strh	r2, [sp, #2]	@ movhi
	strd	r6, r6, [sp, #8]
	strh	r3, [sp, #4]	@ movhi
	ldr	r3, [r5, #1976]
	blx	r3
	mov	r7, r0
	cbz	r0, .L739
	ldrh	r1, [r4]
	ldr	r0, .L741+4
	bl	NAND_Print
	ldr	r3, [r5, #1996]
	mov	r1, sp
	mov	r0, r5
	blx	r3
	movs	r3, #255
	strh	r6, [r4, #4]	@ movhi
	strh	r3, [r4, #2]	@ movhi
	ldrh	r3, [r5, #20]
	adds	r3, r3, #1
	strh	r3, [r5, #20]	@ movhi
.L738:
	mov	r0, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L739:
	mov	r3, #-1
	mov	r1, r4
	str	r3, [r4, #8]
	mov	r0, r5
	strh	r8, [r4, #6]	@ movhi
	bl	put_phy_block_to_free_list
	mov	r1, r4
	mov	r0, r5
	bl	mark_free_block
	ldr	r3, [r5, #4]
	ldrh	r3, [r3, #20]
	strh	r7, [r4, #2]	@ movhi
	strh	r3, [r4, #4]	@ movhi
	b	.L738
.L742:
	.align	2
.L741:
	.word	.LC139
	.word	.LC140
	.size	erase_block, .-erase_block
	.section	.text.adjust_free_list,"ax",%progbits
	.align	1
	.global	adjust_free_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	adjust_free_list, %function
adjust_free_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r0
	bl	out_phy_block_from_free_list
	mov	r4, r0
	cbnz	r0, .L744
	ldr	r0, .L745
	bl	NAND_Print
.L744:
	ldrh	r2, [r4, #6]
	mov	r1, r4
	mov	r0, r5
	adds	r2, r2, #1
	uxth	r2, r2
	bl	erase_block
	mov	r1, r4
	mov	r0, r5
	bl	out_phy_block_from_free_list_by_block
	str	r0, [r5, #48]
	ldrh	r2, [r0, #6]
	ldrh	r1, [r0]
	ldr	r0, .L745+4
	bl	NAND_Print
	movs	r0, #0
	pop	{r3, r4, r5, pc}
.L746:
	.align	2
.L745:
	.word	.LC141
	.word	.LC142
	.size	adjust_free_list, .-adjust_free_list
	.section	.text.nand_dbg_zone_erase,"ax",%progbits
	.align	1
	.global	nand_dbg_zone_erase
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_dbg_zone_erase, %function
nand_dbg_zone_erase:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r2
	ldr	r3, [r0, #4]
	movs	r2, #36
	mov	r4, r0
	ldr	r3, [r3, #32]
	mla	r1, r2, r1, r3
	bl	out_phy_block_from_free_list_by_block
	mov	r2, r5
	mov	r1, r0
	mov	r0, r4
	pop	{r3, r4, r5, lr}
	b	erase_block
	.size	nand_dbg_zone_erase, .-nand_dbg_zone_erase
	.section	.text.torture_block_and_mark,"ax",%progbits
	.align	1
	.global	torture_block_and_mark
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	torture_block_and_mark, %function
torture_block_and_mark:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, lr}
	sub	sp, sp, #44
	add	r7, sp, #8
	mov	r4, r0
	mov	r5, r1
	movs	r2, #15
	movs	r1, #0
	mov	r0, r7
	bl	memset
	ldrh	r1, [r5]
	ldr	r0, .L764
	bl	NAND_Print
	ldr	r3, [r4, #4]
	mov	r0, r4
	ldrh	r1, [r5]
	ldrh	r2, [r3, #28]
	movs	r3, #0
	strh	r3, [sp, #24]	@ movhi
	strh	r1, [sp, #26]	@ movhi
	add	r1, sp, #24
	strd	r3, r3, [sp, #32]
	strh	r2, [sp, #28]	@ movhi
	ldr	r3, [r4, #1976]
	blx	r3
	mov	r6, r0
	cbz	r0, .L749
	ldrh	r1, [r5]
	ldr	r0, .L764+4
.L761:
	bl	NAND_Print
	b	.L750
.L749:
	ldrh	r3, [r5, #6]
	movs	r1, #165
	ldr	r0, [r4, #284]
	mov	r8, r6
	adds	r3, r3, #1
	strh	r3, [r5, #6]	@ movhi
	ldr	r3, [r4, #4]
	ldrh	r2, [r3, #26]
	bl	NAND_Memset
	movs	r2, #15
	movs	r1, #165
	mov	r0, r7
	bl	NAND_Memset
.L752:
	ldr	r3, [r4, #4]
	mov	r0, r4
	ldrh	r1, [r5]
	strh	r8, [sp, #24]	@ movhi
	ldrh	r2, [r3, #28]
	ldr	r3, [r4, #284]
	strh	r1, [sp, #26]	@ movhi
	add	r1, sp, #24
	strh	r2, [sp, #28]	@ movhi
	strd	r3, r7, [sp, #32]
	ldr	r3, [r4, #1984]
	blx	r3
	mov	r6, r0
	cbz	r0, .L751
	ldrh	r2, [r5]
	mov	r3, r8
	ldr	r1, .L764+8
	ldr	r0, .L764+12
.L762:
	bl	NAND_Print
.L750:
	ldr	r3, [r4, #1996]
	add	r1, sp, #24
	mov	r0, r4
	blx	r3
	movs	r3, #0
	strh	r3, [r5, #4]	@ movhi
	movs	r3, #255
	strh	r3, [r5, #2]	@ movhi
	ldrh	r3, [r4, #20]
	adds	r3, r3, #1
	strh	r3, [r4, #20]	@ movhi
	b	.L748
.L751:
	add	r8, r8, #1
	cmp	r8, #3
	bne	.L752
	mov	r8, r0
.L756:
	ldr	r3, [r4, #4]
	movs	r1, #0
	ldr	r0, [r4, #284]
	ldrh	r2, [r3, #26]
	bl	NAND_Memset
	movs	r2, #15
	movs	r1, #0
	mov	r0, r7
	bl	NAND_Memset
	ldr	r3, [r4, #4]
	mov	r0, r4
	ldrh	r1, [r5]
	strh	r8, [sp, #24]	@ movhi
	ldrh	r2, [r3, #28]
	ldr	r3, [r4, #284]
	strh	r1, [sp, #26]	@ movhi
	add	r1, sp, #24
	strh	r2, [sp, #28]	@ movhi
	strd	r3, r7, [sp, #32]
	ldr	r3, [r4, #1980]
	blx	r3
	mov	r6, r0
	cbz	r0, .L753
	mov	r3, r8
	ldrh	r2, [r5]
	ldr	r1, .L764+8
	ldr	r0, .L764+16
	b	.L762
.L753:
	ldr	r10, [r4, #4]
	movs	r1, #165
	ldr	r0, [r4, #284]
	ldrh	r2, [r10, #26]
	bl	nftl_check_pattern
	mov	r6, r0
	cbz	r0, .L754
	ldrh	r2, [r5]
	movs	r3, #165
	ldr	r1, .L764+8
	ldr	r0, .L764+20
	str	r3, [sp]
	mov	r3, r8
.L763:
	bl	NAND_Print
	b	.L750
.L754:
	movs	r2, #15
	movs	r1, #165
	mov	r0, r7
	bl	nftl_check_pattern
	mov	r6, r0
	cbz	r0, .L755
	movs	r3, #165
	ldrh	r2, [r5]
	str	r3, [sp]
	mov	r3, r8
	ldr	r1, .L764+8
	ldr	r0, .L764+24
	b	.L763
.L755:
	add	r8, r8, #1
	cmp	r8, #3
	bne	.L756
	ldrh	r3, [r10, #28]
	add	r1, sp, #24
	ldrh	r2, [r5]
	strh	r0, [sp, #24]	@ movhi
	strh	r3, [sp, #28]	@ movhi
	strd	r0, r0, [sp, #32]
	mov	r0, r4
	strh	r2, [sp, #26]	@ movhi
	ldr	r3, [r4, #1976]
	blx	r3
	mov	r6, r0
	cbz	r0, .L757
	ldrh	r1, [r5]
	ldr	r0, .L764+28
	b	.L761
.L757:
	ldrh	r3, [r5, #6]
	mov	r1, r5
	mov	r0, r4
	adds	r3, r3, #1
	strh	r3, [r5, #6]	@ movhi
	mov	r3, #-1
	str	r3, [r5, #8]
	bl	put_phy_block_to_free_list
	mov	r1, r5
	mov	r0, r4
	bl	mark_free_block
	ldr	r3, [r4, #4]
	ldrh	r3, [r3, #20]
	strh	r6, [r5, #2]	@ movhi
	strh	r3, [r5, #4]	@ movhi
.L748:
	mov	r0, r6
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, pc}
.L765:
	.align	2
.L764:
	.word	.LC143
	.word	.LC140
	.word	.LANCHOR3
	.word	.LC144
	.word	.LC145
	.word	.LC146
	.word	.LC147
	.word	.LC148
	.size	torture_block_and_mark, .-torture_block_and_mark
	.section	.text.set_no_use_page,"ax",%progbits
	.align	1
	.global	set_no_use_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	set_no_use_page, %function
set_no_use_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #255
	push	{r4, lr}
	mov	r4, r1
	strb	r3, [r1]
	movs	r3, #1
	movs	r1, #170
	mov	r2, r3
	mov	r0, r4
	bl	set_spare_data
	movs	r3, #1
	movs	r2, #2
	movs	r1, #187
	pop	{r4, lr}
	b	set_spare_data
	.size	set_no_use_page, .-set_no_use_page
	.section	.text.set_start_block_flag,"ax",%progbits
	.align	1
	.global	set_start_block_flag
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	set_start_block_flag, %function
set_start_block_flag:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #255
	push	{r4, r5, r6, lr}
	mov	r4, r1
	strb	r3, [r1]
	movs	r3, #1
	mov	r5, r2
	mov	r0, r4
	mov	r2, r3
	movs	r1, #170
	bl	set_spare_data
	movs	r3, #1
	movs	r2, #2
	movs	r1, #238
	bl	set_spare_data
	mov	r1, r5
	movs	r3, #4
	movs	r2, #3
	pop	{r4, r5, r6, lr}
	b	set_spare_data
	.size	set_start_block_flag, .-set_start_block_flag
	.section	.text.set_end_block_flag,"ax",%progbits
	.align	1
	.global	set_end_block_flag
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	set_end_block_flag, %function
set_end_block_flag:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #255
	push	{r4, lr}
	mov	r4, r1
	strb	r3, [r1]
	movs	r3, #1
	movs	r1, #170
	mov	r2, r3
	mov	r0, r4
	bl	set_spare_data
	movs	r3, #1
	movs	r2, #2
	movs	r1, #204
	pop	{r4, lr}
	b	set_spare_data
	.size	set_end_block_flag, .-set_end_block_flag
	.section	.text.build_zone_list_first,"ax",%progbits
	.align	1
	.global	build_zone_list_first
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	build_zone_list_first, %function
build_zone_list_first:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, lr}
	mov	r4, r0
	sub	sp, sp, #36
	ldr	r0, .L795
	mov	r10, r1
	bl	NAND_Print_DBG
	ldr	r3, [r4, #24]
	ldr	r5, [r4, #40]
	cmp	r3, #0
	beq	.L790
	ldr	r6, [r4, #4]
	ldr	r0, [r4, #32]
	ldrb	r1, [r6, #8]	@ zero_extendqisi2
	add	r0, r0, r3
	bl	__aeabi_uidiv
	ldrh	r1, [r6, #20]
	bl	__aeabi_uidiv
	mov	r8, r0
.L770:
	movs	r7, #0
	strh	r7, [r4, #18]	@ movhi
.L771:
	ldrh	r3, [r4, #18]
	cmp	r3, r8
	bcs	.L781
	ldr	r3, [r4, #4]
	mov	r0, r4
	ldrh	r1, [r5]
	str	r5, [r4, #44]
	ldrh	r2, [r3, #28]
	ldr	r3, [r4, #284]
	strh	r1, [sp, #18]	@ movhi
	add	r1, sp, #16
	strh	r7, [sp, #16]	@ movhi
	str	r3, [sp, #24]
	strh	r2, [sp, #20]	@ movhi
	str	sp, [sp, #28]
	ldr	r3, [r4, #1992]
	blx	r3
	cmp	r0, #1
	bne	.L772
	ldr	r3, [r4, #1976]
	add	r1, sp, #16
	mov	r0, r4
	blx	r3
	mov	r6, r0
	cbz	r0, .L773
	movs	r3, #255
	add	r1, sp, #16
	strh	r3, [r5, #2]	@ movhi
	mov	r0, r4
	ldr	r3, [r4, #1996]
	blx	r3
.L774:
	movw	r3, #65535
	str	r7, [r5, #20]
	strh	r3, [r5, #4]	@ movhi
	mov	r1, r4
	strd	r7, r7, [r5, #12]
	mov	r0, r5
	str	r5, [r4, #44]
	bl	is_last_phy_block
	cmp	r0, #1
	bne	.L777
.L781:
	ldrh	r1, [r4, #18]
	cmp	r1, #1
	bhi	.L778
	ldr	r0, .L795+4
	bl	NAND_Print
	movs	r0, #1
	b	.L769
.L790:
	mov	r8, #-1
	b	.L770
.L773:
	ldrh	r3, [r4, #18]
	adds	r3, r3, #1
	uxth	r3, r3
	cmp	r3, #1
	strh	r3, [r4, #18]	@ movhi
	strh	r0, [r5, #2]	@ movhi
	strh	r0, [r5, #6]	@ movhi
	bne	.L774
	movs	r2, #16
	movs	r1, #255
	mov	r0, sp
	bl	NAND_Memset
	mov	r2, r10
	mov	r1, sp
	mov	r0, r4
	bl	set_start_block_flag
	ldr	r3, [r4, #4]
	ldrh	r1, [r5]
	strh	r6, [sp, #16]	@ movhi
	ldrh	r2, [r3, #28]
	ldr	r3, [r4, #284]
	strh	r1, [sp, #18]	@ movhi
	strh	r2, [sp, #20]	@ movhi
	str	r3, [sp, #24]
	str	sp, [sp, #28]
.L775:
	ldr	r3, [r4, #4]
	ldrh	r3, [r3, #20]
	cmp	r3, r6
	bhi	.L776
	add	r3, r5, #36
	str	r3, [r4, #40]
	b	.L774
.L776:
	ldr	r3, [r4, #1984]
	add	r1, sp, #16
	mov	r0, r4
	adds	r6, r6, #1
	blx	r3
	ldrh	r3, [sp, #16]
	adds	r3, r3, #1
	strh	r3, [sp, #16]	@ movhi
	b	.L775
.L772:
	movs	r3, #255
	strh	r3, [r5, #2]	@ movhi
	b	.L774
.L777:
	adds	r5, r5, #36
	b	.L771
.L778:
	cmp	r8, #-1
	add	r1, r1, #-1
	strh	r1, [r4, #18]	@ movhi
	bne	.L782
.L784:
	movs	r0, #0
.L769:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, pc}
.L782:
	mov	r1, r4
	mov	r0, r5
	bl	is_last_phy_block
	cmp	r0, #1
	beq	.L784
	movs	r7, #0
.L785:
	ldr	r2, [r4, #4]
	ldrh	r3, [r5]
	ldrh	r1, [r2, #24]
	cmp	r1, r3
	bls	.L784
	ldrh	r1, [r2, #28]
	mov	r0, r4
	ldr	r2, [r4, #284]
	strh	r3, [sp, #18]	@ movhi
	strh	r1, [sp, #20]	@ movhi
	add	r1, sp, #16
	strh	r7, [sp, #16]	@ movhi
	str	r2, [sp, #24]
	str	sp, [sp, #28]
	ldr	r3, [r4, #1992]
	blx	r3
	cmp	r0, #1
	bne	.L786
	ldr	r3, [r4, #1976]
	add	r1, sp, #16
	mov	r0, r4
	blx	r3
	mov	r6, r0
	cbz	r0, .L787
	movs	r3, #255
	add	r1, sp, #16
	strh	r3, [r5, #2]	@ movhi
	mov	r0, r4
	ldr	r3, [r4, #1996]
	blx	r3
.L788:
	adds	r5, r5, #36
	b	.L785
.L787:
	movs	r2, #16
	mov	r0, sp
	movs	r1, #255
	bl	NAND_Memset
	mov	r1, sp
	mov	r0, r4
	bl	set_end_block_flag
	ldr	r3, [r4, #4]
	mov	r0, r4
	ldrh	r1, [r5]
	strh	r6, [sp, #16]	@ movhi
	ldrh	r2, [r3, #28]
	ldr	r3, [r4, #284]
	strh	r1, [sp, #18]	@ movhi
	add	r1, sp, #16
	strh	r2, [sp, #20]	@ movhi
	str	r3, [sp, #24]
	str	sp, [sp, #28]
	ldr	r3, [r4, #1984]
	blx	r3
	b	.L784
.L786:
	movs	r3, #255
	strh	r3, [r5, #2]	@ movhi
	b	.L788
.L796:
	.align	2
.L795:
	.word	.LC149
	.word	.LC150
	.size	build_zone_list_first, .-build_zone_list_first
	.section	.text.get_bad_flag_from_oob,"ax",%progbits
	.align	1
	.global	get_bad_flag_from_oob
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_bad_flag_from_oob, %function
get_bad_flag_from_oob:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	movs	r2, #4
	movs	r1, #1
	bl	get_spare_data
	adds	r0, r0, #0
	it	ne
	movne	r0, #1
	pop	{r3, pc}
	.size	get_bad_flag_from_oob, .-get_bad_flag_from_oob
	.section	.text.get_block_used_count_from_oob,"ax",%progbits
	.align	1
	.global	get_block_used_count_from_oob
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_block_used_count_from_oob, %function
get_block_used_count_from_oob:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r2, #4
	movs	r1, #7
	b	get_spare_data
	.size	get_block_used_count_from_oob, .-get_block_used_count_from_oob
	.section	.text.get_used_block_count,"ax",%progbits
	.align	1
	.global	get_used_block_count
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_used_block_count, %function
get_used_block_count:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrh	r2, [r1]
	movs	r3, #0
	push	{r4, lr}
	sub	sp, sp, #32
	add	r4, sp, #16
	strh	r3, [sp]	@ movhi
	mov	r1, sp
	strh	r2, [sp, #2]	@ movhi
	strh	r3, [sp, #4]	@ movhi
	str	r3, [sp, #8]
	str	r4, [sp, #12]
	ldr	r3, [r0, #1980]
	blx	r3
	mov	r0, r4
	bl	get_block_used_count_from_oob
	add	sp, sp, #32
	@ sp needed
	pop	{r4, pc}
	.size	get_used_block_count, .-get_used_block_count
	.section	.text.get_logic_page_from_oob,"ax",%progbits
	.align	1
	.global	get_logic_page_from_oob
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_logic_page_from_oob, %function
get_logic_page_from_oob:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	movs	r2, #4
	movs	r1, #1
	bl	get_spare_data
	bic	r0, r0, #-268435456
	pop	{r3, pc}
	.size	get_logic_page_from_oob, .-get_logic_page_from_oob
	.section	.text.get_special_data_from_oob,"ax",%progbits
	.align	1
	.global	get_special_data_from_oob
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_special_data_from_oob, %function
get_special_data_from_oob:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r2, #4
	movs	r1, #1
	b	get_spare_data
	.size	get_special_data_from_oob, .-get_special_data_from_oob
	.section	.text._nftl_nand_copy_page,"ax",%progbits
	.align	1
	.global	_nftl_nand_copy_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nftl_nand_copy_page, %function
_nftl_nand_copy_page:
	@ args = 4, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #56
	mov	r8, r2
	ldrh	r2, [sp, #80]
	mov	r6, r1
	add	r5, sp, #8
	ldrh	r1, [r1]
	mov	r4, r0
	strh	r2, [sp, #24]	@ movhi
	strh	r2, [sp, #40]	@ movhi
	ldr	r2, [r0, #4]
	strh	r1, [sp, #26]	@ movhi
	ldrh	r1, [r8]
	ldrh	r2, [r2, #28]
	str	r3, [sp, #32]
	strh	r1, [sp, #42]	@ movhi
	add	r1, sp, #24
	strh	r2, [sp, #28]	@ movhi
	strh	r2, [sp, #44]	@ movhi
	str	r3, [sp, #48]
	str	r5, [sp, #36]
	ldr	r3, [r0, #1980]
	str	r5, [sp, #52]
	blx	r3
	cmp	r0, #10
	ite	ne
	movne	r7, r0
	moveq	r7, #0
	mov	r0, r5
	bl	get_special_data_from_oob
	ldrh	r3, [r8, #6]
	mov	r2, r0
	mov	r1, r5
	mov	r0, r4
	adds	r3, r3, #1
	uxth	r3, r3
	str	r3, [sp]
	ldr	r3, [r6, #8]
	bl	set_oob_special_page
	ldr	r3, [r4, #1984]
	add	r1, sp, #40
	mov	r0, r4
	blx	r3
	orr	r0, r7, r0, lsl #8
	add	sp, sp, #56
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
	.size	_nftl_nand_copy_page, .-_nftl_nand_copy_page
	.section	.text.get_erase_count_from_oob,"ax",%progbits
	.align	1
	.global	get_erase_count_from_oob
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_erase_count_from_oob, %function
get_erase_count_from_oob:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	movs	r2, #2
	movs	r1, #5
	bl	get_spare_data
	uxth	r0, r0
	pop	{r3, pc}
	.size	get_erase_count_from_oob, .-get_erase_count_from_oob
	.section	.text.is_ftl_start_flag_page,"ax",%progbits
	.align	1
	.global	is_ftl_start_flag_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_ftl_start_flag_page, %function
is_ftl_start_flag_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	cmp	r3, #170
	bne	.L807
	ldrb	r0, [r0, #2]	@ zero_extendqisi2
	sub	r3, r0, #238
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	bx	lr
.L807:
	movs	r0, #0
	bx	lr
	.size	is_ftl_start_flag_page, .-is_ftl_start_flag_page
	.section	.text.is_no_use_device,"ax",%progbits
	.align	1
	.global	is_no_use_device
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_no_use_device, %function
is_no_use_device:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #24]
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	sub	sp, sp, #32
	mov	r6, r1
	ldr	r5, [r0, #40]
	cmp	r3, #0
	beq	.L818
	ldr	r7, [r0, #4]
	ldr	r0, [r0, #32]
	ldrb	r1, [r7, #8]	@ zero_extendqisi2
	add	r0, r0, r3
	bl	__aeabi_uidiv
	ldrh	r1, [r7, #20]
	bl	__aeabi_uidiv
	mov	r7, r0
.L809:
	movs	r3, #0
	mov	r8, r3
	strh	r3, [r4, #18]	@ movhi
.L810:
	ldrh	r3, [r4, #18]
	cmp	r3, r7
	bcs	.L825
	ldr	r3, [r4, #4]
	mov	r0, r4
	ldrh	r1, [r5]
	str	r5, [r4, #44]
	ldrh	r2, [r3, #28]
	ldr	r3, [r4, #284]
	strh	r1, [sp, #18]	@ movhi
	add	r1, sp, #16
	strh	r8, [sp, #16]	@ movhi
	str	r3, [sp, #24]
	strh	r2, [sp, #20]	@ movhi
	str	sp, [sp, #28]
	ldr	r3, [r4, #1992]
	blx	r3
	cmp	r0, #1
	bne	.L811
	ldr	r3, [r4, #1980]
	add	r1, sp, #16
	mov	r0, r4
	blx	r3
	mov	r2, r0
	mov	r0, sp
	bl	is_ftl_start_flag_page
	cmp	r0, #1
	beq	.L812
.L825:
	movs	r0, #1
.L808:
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L818:
	mov	r7, #-1
	b	.L809
.L812:
	cbz	r2, .L814
	cmp	r2, #10
	bne	.L825
.L814:
	movs	r2, #4
	movs	r1, #3
	mov	r0, sp
	bl	get_spare_data
	cmp	r0, r6
	beq	.L816
	ldr	r0, .L826
	bl	NAND_Print
	b	.L825
.L816:
	adds	r5, r5, #36
	movs	r0, #0
	str	r5, [r4, #40]
	b	.L808
.L811:
	movs	r3, #255
	mov	r1, r4
	strh	r3, [r5, #2]	@ movhi
	mov	r0, r5
	ldrh	r3, [r4, #18]
	adds	r3, r3, #1
	strh	r3, [r4, #18]	@ movhi
	bl	is_last_phy_block
	cmp	r0, #1
	beq	.L825
	adds	r5, r5, #36
	b	.L810
.L827:
	.align	2
.L826:
	.word	.LC151
	.size	is_no_use_device, .-is_no_use_device
	.section	.text.is_ftl_end_flag_page,"ax",%progbits
	.align	1
	.global	is_ftl_end_flag_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_ftl_end_flag_page, %function
is_ftl_end_flag_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	cmp	r3, #170
	bne	.L830
	ldrb	r0, [r0, #2]	@ zero_extendqisi2
	sub	r3, r0, #204
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	bx	lr
.L830:
	movs	r0, #0
	bx	lr
	.size	is_ftl_end_flag_page, .-is_ftl_end_flag_page
	.section	.text.is_ftl_special_data,"ax",%progbits
	.align	1
	.global	is_ftl_special_data
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_ftl_special_data, %function
is_ftl_special_data:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r0, [r0, #1]	@ zero_extendqisi2
	sub	r3, r0, #170
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	bx	lr
	.size	is_ftl_special_data, .-is_ftl_special_data
	.section	.text.is_ftl_logic_page_data,"ax",%progbits
	.align	1
	.global	is_ftl_logic_page_data
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_ftl_logic_page_data, %function
is_ftl_logic_page_data:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r0, [r0, #1]	@ zero_extendqisi2
	and	r0, r0, #240
	sub	r3, r0, #192
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	bx	lr
	.size	is_ftl_logic_page_data, .-is_ftl_logic_page_data
	.section	.text.is_nouse_page,"ax",%progbits
	.align	1
	.global	is_nouse_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_nouse_page, %function
is_nouse_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r2, r0, #1
	add	r1, r0, #9
	movs	r3, #0
	push	{r4, lr}
.L835:
	ldrb	r4, [r2, #1]!	@ zero_extendqisi2
	cmp	r4, #255
	it	eq
	addeq	r3, r3, #1
	cmp	r2, r1
	bne	.L835
	cmp	r3, #8
	bls	.L837
	ldrb	r0, [r0]	@ zero_extendqisi2
	sub	r3, r0, #255
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
.L833:
	pop	{r4, pc}
.L837:
	movs	r0, #0
	b	.L833
	.size	is_nouse_page, .-is_nouse_page
	.section	.text.is_fill_page,"ax",%progbits
	.align	1
	.global	is_fill_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_fill_page, %function
is_fill_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	get_special_data_from_oob
	sub	r3, r0, #1431655765
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	pop	{r3, pc}
	.size	is_fill_page, .-is_fill_page
	.section	.text.is_phy_mapping_page,"ax",%progbits
	.align	1
	.global	is_phy_mapping_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_phy_mapping_page, %function
is_phy_mapping_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	get_special_data_from_oob
	ldr	r3, .L841
	subs	r3, r0, r3
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	pop	{r3, pc}
.L842:
	.align	2
.L841:
	.word	-1431633921
	.size	is_phy_mapping_page, .-is_phy_mapping_page
	.section	.text.crc_wrong,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	crc_wrong, %function
crc_wrong:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r6, r0
	mov	r0, r2
	mov	r7, r1
	mov	r5, r2
	bl	is_nouse_page
	cbnz	r0, .L848
	ldr	r3, [r6, #4]
	mov	r0, r5
	ldrb	r4, [r3, #8]	@ zero_extendqisi2
	bl	is_phy_mapping_page
	cbnz	r0, .L845
	lsls	r4, r4, #9
.L846:
	mov	r2, r4
	mov	r1, r7
	movw	r0, #65535
	bl	nand_crc16
	ldrb	r3, [r5, #12]	@ zero_extendqisi2
	mov	r1, r0
	ldrb	r2, [r5, #13]	@ zero_extendqisi2
	orr	r2, r2, r3, lsl #8
	cmp	r0, r2
	beq	.L848
	mov	r3, r4
	ldr	r0, .L849
	bl	NAND_Print
	movs	r0, #1
.L843:
	pop	{r3, r4, r5, r6, r7, pc}
.L845:
	ldr	r4, [r6, #308]
	b	.L846
.L848:
	movs	r0, #0
	b	.L843
.L850:
	.align	2
.L849:
	.word	.LC152
	.size	crc_wrong, .-crc_wrong
	.section	.text.nand_power_off_ecc_error,"ax",%progbits
	.align	1
	.global	nand_power_off_ecc_error
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_power_off_ecc_error, %function
nand_power_off_ecc_error:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r4, r2
	ldrb	r5, [r2]	@ zero_extendqisi2
	sub	sp, sp, #60
	cmp	r5, #255
	beq	.L852
	ldr	r0, .L863
.L862:
	bl	NAND_Print
	movs	r3, #1
	movw	r2, #3063
	ldr	r1, .L863+4
	ldr	r0, .L863+8
	bl	NAND_Print
	ldr	r0, .L863+12
	bl	NAND_Print
	ldrb	r0, [r4, #15]	@ zero_extendqisi2
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	ldrb	r2, [r4, #1]	@ zero_extendqisi2
	str	r0, [sp, #48]
	ldrb	r0, [r4, #14]	@ zero_extendqisi2
	ldrb	r1, [r4]	@ zero_extendqisi2
	str	r0, [sp, #44]
	ldrb	r0, [r4, #13]	@ zero_extendqisi2
	str	r0, [sp, #40]
	ldrb	r0, [r4, #12]	@ zero_extendqisi2
	str	r0, [sp, #36]
	ldrb	r0, [r4, #11]	@ zero_extendqisi2
	str	r0, [sp, #32]
	ldrb	r0, [r4, #10]	@ zero_extendqisi2
	str	r0, [sp, #28]
	ldrb	r0, [r4, #9]	@ zero_extendqisi2
	str	r0, [sp, #24]
	ldrb	r0, [r4, #8]	@ zero_extendqisi2
	str	r0, [sp, #20]
	ldrb	r0, [r4, #7]	@ zero_extendqisi2
	str	r0, [sp, #16]
	ldrb	r0, [r4, #6]	@ zero_extendqisi2
	str	r0, [sp, #12]
	ldrb	r0, [r4, #5]	@ zero_extendqisi2
	str	r0, [sp, #8]
	ldrb	r0, [r4, #4]	@ zero_extendqisi2
	str	r0, [sp, #4]
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	str	r0, [sp]
	ldr	r0, .L863+16
	bl	NAND_Print
	movs	r0, #1
	b	.L856
.L852:
	ldr	r3, [r0, #1972]
	ldrh	r3, [r3, #28]
	cbz	r3, .L854
	bl	crc_wrong
	cbnz	r0, .L855
.L858:
	movs	r0, #0
.L856:
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, pc}
.L855:
	ldr	r0, .L863+20
	b	.L862
.L854:
	ldrb	r3, [r2, #11]	@ zero_extendqisi2
	cmp	r3, #165
	bne	.L857
	ldrb	r3, [r2, #15]	@ zero_extendqisi2
	cmp	r3, #165
	beq	.L858
.L857:
	ldr	r0, .L863+24
	b	.L862
.L864:
	.align	2
.L863:
	.word	.LC153
	.word	.LANCHOR4
	.word	.LC156
	.word	.LC157
	.word	.LC158
	.word	.LC154
	.word	.LC155
	.size	nand_power_off_ecc_error, .-nand_power_off_ecc_error
	.section	.text.recover_block_phy_page_mapping,"ax",%progbits
	.align	1
	.global	recover_block_phy_page_mapping
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	recover_block_phy_page_mapping, %function
recover_block_phy_page_mapping:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r10, r2
	movs	r4, #0
	ldr	r2, [r0, #308]
	sub	sp, sp, #40
	mov	r5, r0
	mov	r7, r1
	mov	r0, r10
	movs	r1, #255
	bl	NAND_Memset
.L866:
	ldr	r2, [r5, #4]
	ldrh	r3, [r2, #20]
	subs	r3, r3, #1
	cmp	r3, r4
	bgt	.L877
	movs	r0, #0
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L877:
	ldr	r3, [r5, #1972]
	uxth	r0, r4
	ldrh	r1, [r7]
	add	r6, sp, #8
	ldrh	r3, [r3, #28]
	cmp	r3, #0
	beq	.L867
	ldr	r3, [r5, #284]
	ldrh	r2, [r2, #28]
	strh	r0, [sp, #24]	@ movhi
	strh	r1, [sp, #26]	@ movhi
	strh	r2, [sp, #28]	@ movhi
.L888:
	mov	fp, #0
	strd	r3, r6, [sp, #32]
.L871:
	ldr	r3, [r5, #1980]
	add	r1, sp, #24
	mov	r0, r5
	blx	r3
	subs	r8, r0, #0
	bge	.L869
	mov	r3, r4
	ldrh	r2, [r7]
	mov	r1, r8
	ldr	r0, .L889
	bl	NAND_Print
	cmp	fp, #0
	beq	.L878
	ldrh	r2, [r7]
	mov	r3, r4
	str	fp, [sp]
	mov	r1, r8
	ldr	r0, .L889+4
	bl	NAND_Print
.L869:
	mov	r0, r6
	bl	is_ftl_logic_page_data
	cmp	r0, #1
	bne	.L872
	cmp	r8, #0
	beq	.L873
	cmp	r8, #10
	bne	.L874
.L873:
	mov	r2, r6
	ldr	r1, [r5, #284]
	mov	r0, r5
	bl	nand_power_off_ecc_error
	cbz	r0, .L875
	ldr	r0, .L889+8
	bl	NAND_Print
.L874:
	adds	r4, r4, #1
	b	.L866
.L867:
	strh	r0, [sp, #24]	@ movhi
	strh	r1, [sp, #26]	@ movhi
	strh	r3, [sp, #28]	@ movhi
	b	.L888
.L878:
	mov	fp, #1
	b	.L871
.L875:
	mov	r0, r6
	bl	get_logic_page_from_oob
	str	r0, [r10, r4, lsl #2]
	mov	r3, r0
	ldr	r2, [r5, #28]
	cmp	r0, r2
	bcc	.L874
	mov	r2, r4
	ldrh	r1, [r7]
	ldr	r0, .L889+12
	bl	NAND_Print
	mov	r3, #-1
	str	r3, [r10, r4, lsl #2]
	b	.L874
.L872:
	mov	r0, r6
	bl	is_nouse_page
	cmp	r0, #1
	beq	.L874
	mov	r2, r4
	ldrh	r1, [r7]
	ldr	r0, .L889+16
	bl	NAND_Print
	b	.L874
.L890:
	.align	2
.L889:
	.word	.LC159
	.word	.LC160
	.word	.LC161
	.word	.LC162
	.word	.LC163
	.size	recover_block_phy_page_mapping, .-recover_block_phy_page_mapping
	.section	.text.get_used_page_num,"ax",%progbits
	.align	1
	.global	get_used_page_num
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_used_page_num, %function
get_used_page_num:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r6, r0
	mov	fp, r2
	mov	r5, r3
	sub	sp, sp, #104
	movs	r4, #0
	str	r1, [sp, #64]
	str	r4, [r2]
.L892:
	ldr	r3, [r6, #4]
	ldrh	r2, [r3, #20]
	cmp	r2, r4
	bhi	.L903
.L891:
	mov	r0, r4
	add	sp, sp, #104
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L903:
	cmp	r5, #0
	beq	.L893
	ldr	r2, [r5, #4]
	ldrb	r2, [r2, r4]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L893
	ldrh	r7, [r3, #26]
	ldr	r2, [r5, #8]
	add	r8, r7, #64
	mla	r8, r4, r8, r2
	add	r7, r7, r8
.L894:
	ldr	r2, [sp, #64]
	uxth	r0, r4
	ldrh	r1, [r2]
	ldr	r2, [r6, #1972]
	ldrh	r2, [r2, #28]
	cmp	r2, #0
	beq	.L895
	ldrh	r3, [r3, #28]
	strh	r0, [sp, #88]	@ movhi
	strh	r1, [sp, #90]	@ movhi
	strh	r3, [sp, #92]	@ movhi
	str	r8, [sp, #96]
.L941:
	str	r7, [sp, #100]
	add	r1, sp, #88
	ldr	r3, [r6, #1980]
	mov	r0, r6
	blx	r3
	mov	r10, r0
	cbz	r0, .L897
	cmp	r0, #10
	beq	.L897
	ldr	r3, [sp, #64]
	mov	r2, r4
	ldr	r0, .L943
	ldrh	r1, [r3]
	bl	NAND_Print
	ldr	r3, [fp]
	adds	r3, r3, #1
	str	r3, [fp]
.L897:
	mov	r0, r7
	bl	is_nouse_page
	cmp	r0, #1
	beq	.L914
	adds	r3, r4, #1
	cmp	r10, #0
	beq	.L899
	cmp	r10, #10
	bne	.L900
.L899:
	cmp	r8, #0
	beq	.L900
	mov	r2, r7
	mov	r1, r8
	mov	r0, r6
	str	r3, [sp, #68]
	bl	nand_power_off_ecc_error
	ldr	r3, [sp, #68]
	cbz	r0, .L902
	ldr	r0, .L943+4
	bl	NAND_Print
	ldr	r3, [sp, #68]
.L900:
	mov	r4, r3
	b	.L892
.L893:
	ldrb	r2, [r3, #8]	@ zero_extendqisi2
	cmp	r2, #8
	ittee	eq
	ldreq	r8, [r6, #284]
	addeq	r7, sp, #72
	addne	r7, sp, #72
	movne	r8, #0
	b	.L894
.L895:
	strh	r0, [sp, #88]	@ movhi
	strh	r1, [sp, #90]	@ movhi
	strh	r2, [sp, #92]	@ movhi
	str	r2, [sp, #96]
	b	.L941
.L902:
	ldr	r2, [r5, #4]
	movs	r1, #1
	strb	r1, [r2, r4]
	ldr	r2, [r5]
	cmp	r2, r3
	it	cc
	strcc	r3, [r5]
	b	.L900
.L911:
	cmp	r5, #0
	beq	.L916
	ldr	r2, [r5, #4]
	ldrb	r2, [r2, r7]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L916
	ldrh	r2, [r3, #26]
	ldr	r1, [r5, #8]
	add	r8, r2, #64
	mla	r8, r7, r8, r1
	add	fp, r8, r2
.L904:
	ldr	r1, [r6, #1972]
	uxth	ip, r7
	ldr	r2, [sp, #64]
	ldrh	r1, [r1, #28]
	ldrh	r0, [r2]
	cmp	r1, #0
	beq	.L905
	ldrh	r3, [r3, #28]
	strh	ip, [sp, #88]	@ movhi
	strh	r0, [sp, #90]	@ movhi
	strh	r3, [sp, #92]	@ movhi
	str	r8, [sp, #96]
.L942:
	ldr	r3, [r6, #1980]
	add	r1, sp, #88
	str	fp, [sp, #100]
	mov	r0, r6
	blx	r3
	str	r0, [sp, #68]
	mov	r0, fp
	bl	is_nouse_page
	cmp	r0, #1
	add	r10, r7, #1
	beq	.L908
	ldrb	r0, [fp, #15]	@ zero_extendqisi2
	ldr	r2, [sp, #64]
	ldrb	r3, [fp]	@ zero_extendqisi2
	ldrh	r1, [r2]
	str	r0, [sp, #56]
	ldrb	r0, [fp, #14]	@ zero_extendqisi2
	str	r0, [sp, #52]
	ldrb	r0, [fp, #13]	@ zero_extendqisi2
	str	r0, [sp, #48]
	ldrb	r0, [fp, #12]	@ zero_extendqisi2
	str	r0, [sp, #44]
	ldrb	r0, [fp, #11]	@ zero_extendqisi2
	str	r0, [sp, #40]
	ldrb	r0, [fp, #10]	@ zero_extendqisi2
	str	r0, [sp, #36]
	ldrb	r0, [fp, #9]	@ zero_extendqisi2
	str	r0, [sp, #32]
	ldrb	r0, [fp, #8]	@ zero_extendqisi2
	str	r0, [sp, #28]
	ldrb	r0, [fp, #7]	@ zero_extendqisi2
	str	r0, [sp, #24]
	ldrb	r0, [fp, #6]	@ zero_extendqisi2
	str	r0, [sp, #20]
	ldrb	r0, [fp, #5]	@ zero_extendqisi2
	str	r0, [sp, #16]
	ldrb	r0, [fp, #4]	@ zero_extendqisi2
	str	r0, [sp, #12]
	ldrb	r0, [fp, #3]	@ zero_extendqisi2
	str	r0, [sp, #8]
	ldrb	r0, [fp, #2]	@ zero_extendqisi2
	str	r0, [sp, #4]
	ldrb	r2, [fp, #1]	@ zero_extendqisi2
	ldr	r0, .L943+8
	str	r2, [sp]
	mov	r2, r7
	bl	NAND_Print
	ldr	r3, [sp, #68]
	cbz	r3, .L909
	cmp	r3, #10
	bne	.L908
.L909:
	cmp	r8, #0
	beq	.L908
	ldr	r3, [r5, #4]
	movs	r2, #1
	strb	r2, [r3, r7]
	ldr	r3, [r5]
	cmp	r3, r10
	it	cc
	strcc	r10, [r5]
.L908:
	mov	r7, r10
.L898:
	ldr	r3, [r6, #4]
	ldrh	r2, [r3, #20]
	cmp	r2, r7
	bhi	.L911
	b	.L891
.L916:
	add	fp, sp, #72
	mov	r8, #0
	b	.L904
.L905:
	strh	ip, [sp, #88]	@ movhi
	strh	r0, [sp, #90]	@ movhi
	strh	r1, [sp, #92]	@ movhi
	str	r1, [sp, #96]
	b	.L942
.L914:
	mov	r7, r4
	b	.L898
.L944:
	.align	2
.L943:
	.word	.LC164
	.word	.LC165
	.word	.LC166
	.size	get_used_page_num, .-get_used_page_num
	.section	.text.get_used_page_num_no_crosstalk,"ax",%progbits
	.align	1
	.global	get_used_page_num_no_crosstalk
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_used_page_num_no_crosstalk, %function
get_used_page_num_no_crosstalk:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r6, r3
	movs	r3, #0
	mov	r8, r0
	mov	r10, r3
	mov	fp, r3
	mov	r4, #-1
	mov	r5, r3
	sub	sp, sp, #48
	str	r3, [r2]
	str	r1, [sp, #4]
.L946:
	ldr	r2, [r8, #4]
	ldrh	r3, [r2, #20]
	cmp	r3, r5
	bhi	.L955
	adds	r2, r4, #1
	bne	.L953
	mov	r4, r3
.L956:
	mov	r0, r4
	add	sp, sp, #48
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L955:
	cbz	r6, .L947
	ldr	r3, [r6, #4]
	ldrb	r3, [r3, r5]	@ zero_extendqisi2
	cbnz	r3, .L947
	ldrh	r7, [r2, #26]
	ldr	r3, [r6, #8]
	add	r1, r7, #64
	mla	r3, r5, r1, r3
	add	r7, r7, r3
.L948:
	ldr	r1, [sp, #4]
	mov	r0, r8
	ldrh	r2, [r2, #28]
	str	r3, [sp, #40]
	ldrh	r1, [r1]
	strh	r2, [sp, #36]	@ movhi
	strh	r5, [sp, #32]	@ movhi
	strh	r1, [sp, #34]	@ movhi
	add	r1, sp, #32
	str	r7, [sp, #44]
	ldr	r2, [r8, #1980]
	str	r3, [sp, #8]
	blx	r2
	ldr	r3, [sp, #8]
	cbz	r0, .L949
	cmp	r0, #10
	beq	.L949
	ldr	r3, [sp, #4]
	cmp	r4, #-1
	it	eq
	moveq	r4, r5
	mov	r2, r5
	ldr	r0, .L976
	ldrh	r1, [r3]
	bl	NAND_Print
.L950:
	adds	r5, r5, #1
	b	.L946
.L947:
	ldrb	r3, [r2, #8]	@ zero_extendqisi2
	cmp	r3, #4
	ittee	eq
	ldreq	r3, [r8, #284]
	addeq	r7, sp, #16
	addne	r7, sp, #16
	movne	r3, #0
	b	.L948
.L949:
	mov	r0, r7
	str	r3, [sp, #8]
	bl	is_nouse_page
	cmp	r0, #1
	ldr	r3, [sp, #8]
	bne	.L951
	add	r10, r10, #1
	cmp	r4, #-1
	it	eq
	moveq	r4, r5
	cmp	r10, #3
	bne	.L950
.L953:
	cmp	fp, r4
	beq	.L956
	ldr	r1, [sp, #4]
	mov	r3, r4
	mov	r2, fp
	ldr	r0, .L976+4
	ldrh	r1, [r1]
	bl	NAND_Print
	ldr	r2, [r8, #1968]
	ldr	r3, [r2, #168]
	adds	r3, r3, #1
	str	r3, [r2, #168]
	movs	r3, #0
.L957:
	ldr	r2, [r6]
	cmp	r2, r3
	bls	.L956
	ldr	r2, [r6, #4]
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	cbz	r2, .L958
	ldr	r2, [r8, #4]
	ldr	r1, [r6, #8]
	ldrh	r0, [r2, #26]
	add	r1, r1, r0
	add	r2, r0, #64
	mla	r2, r3, r2, r1
	ldr	r1, [r8, #1968]
	ldr	r1, [r1, #168]
	strb	r1, [r2, #14]
.L958:
	adds	r3, r3, #1
	b	.L957
.L951:
	mov	r2, r7
	mov	r1, r3
	mov	r0, r8
	bl	nand_power_off_ecc_error
	cbz	r0, .L954
	ldr	r0, .L976+8
	bl	NAND_Print
	b	.L950
.L954:
	adds	r1, r4, #1
	add	fp, fp, #1
	bne	.L950
	ldr	r2, [r6, #4]
	movs	r1, #1
	adds	r3, r5, #1
	mov	r0, r7
	str	r3, [sp, #12]
	strb	r1, [r2, r5]
	ldr	r2, [r6, #12]
	str	r2, [sp, #8]
	bl	get_logic_page_from_oob
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	str	r0, [r2, r5, lsl #2]
	ldr	r2, [r6]
	cmp	r2, r3
	it	cc
	strcc	r3, [r6]
	b	.L950
.L977:
	.align	2
.L976:
	.word	.LC167
	.word	.LC169
	.word	.LC168
	.size	get_used_page_num_no_crosstalk, .-get_used_page_num_no_crosstalk
	.section	.text.current_block_ecc_error,"ax",%progbits
	.align	1
	.global	current_block_ecc_error
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	current_block_ecc_error, %function
current_block_ecc_error:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r4, r0
	ldr	r5, .L998
	sub	sp, sp, #48
	mov	r8, r1
.L979:
	mov	r0, r4
	bl	out_phy_block_from_free_list
	mov	r7, r0
	cbnz	r0, .L980
	ldr	r0, .L998+4
	bl	NAND_Print
.L978:
	mov	r0, r7
	add	sp, sp, #48
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L980:
	ldr	r2, [r8, #8]
	mov	r1, r0
	str	r2, [r0, #8]
	mov	r0, r4
	bl	new_block_init_for_write
	mov	r6, r0
	cbz	r0, .L982
	mov	r0, r5
	bl	NAND_Print
	b	.L979
.L982:
	ldr	fp, .L998+32
	mov	r5, r6
	ldrh	r1, [r8]
	ldr	r0, .L998+8
	bl	NAND_Print
.L983:
	ldr	r3, [r4, #4]
	ldrh	r2, [r3, #20]
	cmp	r2, r5
	bgt	.L990
	ldrh	r2, [r8, #6]
	mov	r1, r8
	mov	r0, r4
	adds	r2, r2, #1
	uxth	r2, r2
	bl	erase_block
	mov	r2, r6
	mov	r1, r5
	ldr	r0, .L998+12
	bl	NAND_Print_DBG
	b	.L978
.L990:
	ldrh	r2, [r3, #28]
	mov	r0, r4
	ldrh	r1, [r8]
	ldr	r3, [r4, #284]
	strh	r2, [sp, #20]	@ movhi
	strh	r1, [sp, #18]	@ movhi
	add	r1, sp, #16
	str	r3, [sp, #24]
	strh	r5, [sp, #16]	@ movhi
	ldr	r3, [r4, #1980]
	str	sp, [sp, #28]
	blx	r3
	mov	r10, r0
	mov	r0, sp
	bl	is_ftl_logic_page_data
	cmp	r0, #1
	bne	.L984
	cmp	r10, #0
	beq	.L985
	cmp	r10, #10
	bne	.L986
.L985:
	mov	r2, sp
	ldr	r1, [r4, #284]
	mov	r0, r4
	bl	nand_power_off_ecc_error
	cbz	r0, .L987
	ldr	r0, .L998+16
	bl	NAND_Print
.L988:
	adds	r5, r5, #1
	b	.L983
.L987:
	mov	r2, r10
	mov	r1, r5
	ldr	r0, .L998+20
	bl	NAND_Print
	ldr	r3, [r4, #4]
	mov	r0, r4
	ldrh	r1, [r7]
	strh	r6, [sp, #32]	@ movhi
	adds	r6, r6, #1
	ldrh	r2, [r3, #28]
	ldr	r3, [r4, #284]
	strh	r1, [sp, #34]	@ movhi
	add	r1, sp, #32
	strh	r2, [sp, #36]	@ movhi
	str	r3, [sp, #40]
	str	sp, [sp, #44]
	ldr	r3, [r4, #1984]
	blx	r3
	b	.L988
.L986:
	ldr	r0, .L998+24
	mov	r1, r5
.L997:
	bl	NAND_Print
	b	.L988
.L984:
	ldrb	r3, [sp, #1]	@ zero_extendqisi2
	cmp	r3, #170
	bne	.L989
	mov	r1, r5
	mov	r0, fp
	b	.L997
.L989:
	mov	r0, sp
	bl	is_nouse_page
	cmp	r0, #1
	beq	.L988
	mov	r1, r5
	ldr	r0, .L998+28
	b	.L997
.L999:
	.align	2
.L998:
	.word	.LC171
	.word	.LC170
	.word	.LC172
	.word	.LC178
	.word	.LC173
	.word	.LC174
	.word	.LC175
	.word	.LC177
	.word	.LC176
	.size	current_block_ecc_error, .-current_block_ecc_error
	.section	.text.init_smart_info,"ax",%progbits
	.align	1
	.global	init_smart_info
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	init_smart_info, %function
init_smart_info:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #320
	mov	r4, r0
	sub	sp, sp, #32
	mov	r5, r1
	movs	r1, #0
	ldr	r0, [r0, #1968]
	bl	NAND_Memset
	ldr	r3, [r4, #1968]
	ldr	r6, .L1014
	ldr	r2, [r3, #140]
	str	r6, [r3, #112]
	adds	r2, r2, #1
	str	r2, [r3, #140]
	cmp	r5, #0
	beq	.L1001
	ldr	r3, [r4, #4]
	ldrh	r0, [r5]
	ldr	r2, [r4, #284]
	ldrh	r1, [r3, #28]
	ldrh	r3, [r3, #20]
	strh	r0, [sp, #18]	@ movhi
	mov	r0, r4
	strh	r1, [sp, #20]	@ movhi
	add	r1, sp, #16
	subs	r3, r3, #1
	str	r2, [sp, #24]
	strh	r3, [sp, #16]	@ movhi
	str	sp, [sp, #28]
	ldr	r3, [r4, #1980]
	blx	r3
	mov	r5, r0
	mov	r0, sp
	bl	is_phy_mapping_page
	cmp	r0, #1
	bne	.L1003
	cbz	r5, .L1004
	cmp	r5, #10
	bne	.L1003
.L1004:
	ldr	r3, [r4, #308]
	ldr	r1, [r4, #284]
	add	r1, r1, r3
	ldr	r3, [r1, #112]
	cmp	r3, r6
	bne	.L1003
	mov	r2, #320
	ldr	r0, [r4, #1968]
	bl	NAND_Memcpy
	ldr	r3, [r4, #1968]
	ldr	r2, [r3, #140]
	adds	r2, r2, #1
	str	r2, [r3, #140]
	ldr	r2, [r3, #164]
	adds	r2, r2, #1
	itt	eq
	moveq	r2, #0
	streq	r2, [r3, #164]
	ldr	r2, [r3, #172]
	adds	r2, r2, #1
	itt	eq
	moveq	r2, #0
	streq	r2, [r3, #172]
	ldr	r2, [r3, #176]
	adds	r2, r2, #1
	itt	eq
	moveq	r2, #0
	streq	r2, [r3, #176]
.L1003:
	mov	r0, r4
	bl	print_smart
.L1001:
	movs	r0, #0
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, pc}
.L1015:
	.align	2
.L1014:
	.word	-1431655935
	.size	init_smart_info, .-init_smart_info
	.section	.text.is_function_info_page,"ax",%progbits
	.align	1
	.global	is_function_info_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_function_info_page, %function
is_function_info_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	get_special_data_from_oob
	lsrs	r0, r0, #16
	ldr	r3, .L1017
	lsls	r0, r0, #16
	subs	r3, r0, r3
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	pop	{r3, pc}
.L1018:
	.align	2
.L1017:
	.word	-1441726464
	.size	is_function_info_page, .-is_function_info_page
	.section	.text.is_power_down_info_page,"ax",%progbits
	.align	1
	.global	is_power_down_info_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_power_down_info_page, %function
is_power_down_info_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	get_special_data_from_oob
	ldr	r3, .L1020
	subs	r3, r0, r3
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	pop	{r3, pc}
.L1021:
	.align	2
.L1020:
	.word	-1441713357
	.size	is_power_down_info_page, .-is_power_down_info_page
	.section	.text.recover_phy_page_mapping,"ax",%progbits
	.align	1
	.global	recover_phy_page_mapping
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	recover_phy_page_mapping, %function
recover_phy_page_mapping:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r8, r2
	ldr	r10, .L1056+20
	movs	r4, #0
	sub	sp, sp, #32
	mov	r5, r0
	ldr	fp, .L1056+24
	mov	r7, r1
	ldr	r2, [r0, #308]
	movs	r1, #255
	mov	r0, r8
	bl	NAND_Memset
.L1023:
	ldr	r3, [r5, #4]
	ldrh	r2, [r3, #20]
	cmp	r2, r4
	ble	.L1026
	ldrh	r2, [r3, #28]
	mov	r0, r5
	ldrh	r1, [r7]
	ldr	r3, [r5, #284]
	strh	r2, [sp, #20]	@ movhi
	strh	r1, [sp, #18]	@ movhi
	add	r1, sp, #16
	str	r3, [sp, #24]
	strh	r4, [sp, #16]	@ movhi
	ldr	r3, [r5, #1980]
	str	sp, [sp, #28]
	blx	r3
	mov	r6, r0
	mov	r0, sp
	bl	is_nouse_page
	cmp	r0, #1
	bne	.L1024
	cbnz	r6, .L1025
.L1027:
	mov	r2, r4
	ldrh	r1, [r7]
	ldr	r0, .L1056
	bl	NAND_Print
.L1026:
	mov	r0, r4
	b	.L1022
.L1025:
	cmp	r6, #10
	beq	.L1027
.L1024:
	mov	r0, sp
	bl	is_ftl_logic_page_data
	cmp	r0, #1
	bne	.L1028
	cbz	r6, .L1029
	cmp	r6, #10
	bne	.L1030
.L1029:
	mov	r2, sp
	ldr	r1, [r5, #284]
	mov	r0, r5
	bl	nand_power_off_ecc_error
	cbz	r0, .L1031
	mov	r2, r4
	ldrh	r1, [r7]
	ldr	r0, .L1056+4
	bl	NAND_Print
.L1030:
	mov	r2, r4
	ldrh	r1, [r7]
	ldr	r0, .L1056+8
	bl	NAND_Print
	movw	r0, #65535
.L1022:
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L1031:
	mov	r0, sp
	bl	get_logic_page_from_oob
	str	r0, [r8, r4, lsl #2]
	mov	r3, r0
	ldr	r2, [r5, #28]
	cmp	r0, r2
	bcc	.L1032
	mov	r2, r4
	ldrh	r1, [r7]
	ldr	r0, .L1056+12
	bl	NAND_Print
	mov	r3, #-1
	str	r3, [r8, r4, lsl #2]
.L1032:
	cbz	r6, .L1037
	cmp	r6, #10
	bne	.L1030
.L1037:
	adds	r4, r4, #1
	b	.L1023
.L1028:
	ldrb	r3, [sp, #1]	@ zero_extendqisi2
	cmp	r3, #170
	bne	.L1033
	ldr	r0, .L1056+16
	mov	r1, r4
.L1055:
	bl	NAND_Print
	b	.L1032
.L1033:
	mov	r0, sp
	bl	is_power_down_info_page
	cmp	r0, #1
	bne	.L1034
	cbz	r6, .L1035
	cmp	r6, #10
	bne	.L1030
.L1035:
	mov	r0, sp
	bl	get_special_data_from_oob
	mov	r1, r4
	str	r0, [r8, r4, lsl #2]
	mov	r0, fp
	b	.L1055
.L1034:
	mov	r1, r4
	mov	r0, r10
	b	.L1055
.L1057:
	.align	2
.L1056:
	.word	.LC179
	.word	.LC180
	.word	.LC184
	.word	.LC162
	.word	.LC181
	.word	.LC183
	.word	.LC182
	.size	recover_phy_page_mapping, .-recover_phy_page_mapping
	.section	.text.get_logic_page_map,"ax",%progbits
	.align	1
	.global	get_logic_page_map
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_logic_page_map, %function
get_logic_page_map:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	mov	r2, r1
	ldr	r3, [r0, #28]
	cmp	r3, r1
	bhi	.L1059
	ldr	r1, .L1061
	ldr	r0, .L1061+4
	bl	NAND_Print
	movs	r0, #0
.L1058:
	pop	{r3, pc}
.L1059:
	lsrs	r1, r1, #18
	add	r0, r0, r1, lsl #2
	rsb	r1, r1, r1, lsl #14
	ldr	r0, [r0, #52]
	add	r2, r2, r1, lsl #18
	add	r0, r0, r2, lsl #2
	b	.L1058
.L1062:
	.align	2
.L1061:
	.word	.LANCHOR5
	.word	.LC185
	.size	get_logic_page_map, .-get_logic_page_map
	.section	.text.print_logic_page_map,"ax",%progbits
	.align	1
	.global	print_logic_page_map
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	print_logic_page_map, %function
print_logic_page_map:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	push	{r0, r1, r4, r5, r6, r7, r8, lr}
	mov	r5, r0
	ldr	r7, .L1068
	movs	r4, #0
	ldr	r8, .L1068+4
	ldrb	r1, [r3, #8]	@ zero_extendqisi2
	ldr	r0, [r0, #24]
	bl	__aeabi_uidiv
	mov	r6, r0
.L1064:
	cmp	r4, r6
	bne	.L1067
	movs	r0, #0
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L1067:
	mov	r1, r4
	mov	r0, r5
	bl	get_logic_page_map
	cbnz	r0, .L1065
	mov	r0, r8
	bl	NAND_Print
.L1066:
	adds	r4, r4, #1
	b	.L1064
.L1065:
	ldrh	r2, [r0, #2]
	movw	r3, #65535
	cmp	r2, r3
	beq	.L1066
	ldrb	r1, [r0, #1]	@ zero_extendqisi2
	ldrh	r3, [r0]
	mov	r0, r7
	ubfx	r1, r1, #4, #1
	str	r1, [sp]
	ubfx	r3, r3, #0, #12
	mov	r1, r4
	bl	NAND_Print_DBG
	b	.L1066
.L1069:
	.align	2
.L1068:
	.word	.LC187
	.word	.LC186
	.size	print_logic_page_map, .-print_logic_page_map
	.section	.text.get_cold_logic_page,"ax",%progbits
	.align	1
	.global	get_cold_logic_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_cold_logic_page, %function
get_cold_logic_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r0
	ldr	r8, .L1076
	mov	r6, r2
	mov	r4, r1
	movw	r7, #65535
.L1071:
	cmp	r4, r6
	bcc	.L1075
	mov	r4, #-1
	b	.L1070
.L1075:
	mov	r1, r4
	mov	r0, r5
	bl	get_logic_page_map
	cbnz	r0, .L1072
	mov	r0, r8
	bl	NAND_Print
.L1073:
	adds	r4, r4, #1
	b	.L1071
.L1072:
	ldrh	r3, [r0, #2]
	cmp	r3, r7
	beq	.L1073
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	ldr	r2, [r5, #364]
	ubfx	r1, r3, #4, #1
	cmp	r1, r2
	beq	.L1073
	bfi	r3, r2, #4, #1
	strb	r3, [r0, #1]
.L1070:
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, pc}
.L1077:
	.align	2
.L1076:
	.word	.LC186
	.size	get_cold_logic_page, .-get_cold_logic_page
	.section	.text.read_reclaim,"ax",%progbits
	.align	1
	.global	read_reclaim
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	read_reclaim, %function
read_reclaim:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r1
	mov	r7, r2
	mov	r6, r0
	bl	get_nftl_read_claim_page_no
	ldr	r5, [r1, #12]
	mov	r1, r0
	ldr	r2, [r5, #28]
	mov	r0, r5
	bl	get_cold_logic_page
	adds	r3, r0, #1
	mov	r5, r0
	bne	.L1079
	mov	r1, r4
	mov	r0, r6
	pop	{r3, r4, r5, r6, r7, lr}
	b	set_nftl_read_claim_complete
.L1079:
	ldr	r0, [r4, #12]
	mov	r3, r7
	mov	r1, r5
	ldr	r2, [r0, #4]
	ldrb	r2, [r2, #8]	@ zero_extendqisi2
	bl	nand_cache_read
	ldr	r3, [r4, #12]
	mov	r2, r5
	mov	r0, r6
	ldrb	r1, [r3, #16]	@ zero_extendqisi2
	bl	set_nftl_read_claim_flag
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, pc}
	.size	read_reclaim, .-read_reclaim
	.section	.text.recover_logic_page_mapping,"ax",%progbits
	.align	1
	.global	recover_logic_page_mapping
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	recover_logic_page_mapping, %function
recover_logic_page_mapping:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r6, r0
	mov	r4, r1
	mov	fp, r2
	mov	r10, r3
	movs	r5, #0
.L1081:
	cmp	r5, r10
	bne	.L1091
	movs	r0, #0
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L1091:
	ldr	r3, [fp, r5, lsl #2]
	ldr	r2, [r6, #28]
	cmp	r2, r3
	bls	.L1082
	mov	r1, r3
	mov	r0, r6
	bl	get_logic_page_map
	mov	r7, r0
	cbnz	r0, .L1083
	ldr	r0, .L1095
	bl	NAND_Print
	ldrh	r3, [r4, #4]
	adds	r3, r3, #1
	strh	r3, [r4, #4]	@ movhi
.L1084:
	adds	r5, r5, #1
	b	.L1081
.L1083:
	ldrh	r3, [r0, #2]
	movw	r2, #65535
	cmp	r3, r2
	beq	.L1086
	ldr	r2, [r6, #4]
	mov	r8, #36
	mul	r8, r8, r3
	ldr	r2, [r2, #32]
	add	r3, r2, r8
	cmp	r4, r3
	beq	.L1087
	mov	r1, r3
	mov	r0, r6
	str	r2, [sp, #4]
	str	r3, [sp]
	bl	phy_block_from_invalid_page_incr
	ldrd	r3, r2, [sp]
.L1088:
	ldr	r0, [r6, #4]
	ldrh	r1, [r3, #4]
	ldrh	r3, [r0, #20]
	cmp	r1, r3
	bls	.L1086
	ldrh	r1, [r2, r8]
	ldr	r0, .L1095+4
	bl	NAND_Print
.L1086:
	ldrh	r3, [r7]
	bfi	r3, r5, #0, #12
	strh	r3, [r7]	@ movhi
	ldrh	r3, [r4]
	strh	r3, [r7, #2]	@ movhi
	b	.L1084
.L1087:
	ldrh	r1, [r4, #4]
	adds	r1, r1, #1
	strh	r1, [r4, #4]	@ movhi
	b	.L1088
.L1082:
	adds	r2, r3, #1
	beq	.L1090
	mov	r2, r5
	ldrh	r1, [r4]
	ldr	r0, .L1095+8
	bl	NAND_Print
.L1090:
	ldrh	r3, [r4, #4]
	ldr	r2, [r6, #4]
	adds	r3, r3, #1
	ldrh	r2, [r2, #20]
	uxth	r3, r3
	strh	r3, [r4, #4]	@ movhi
	cmp	r2, r3
	bcs	.L1084
	ldr	r0, .L1095+12
	bl	NAND_Print
	b	.L1084
.L1096:
	.align	2
.L1095:
	.word	.LC188
	.word	.LC189
	.word	.LC190
	.word	.LC191
	.size	recover_logic_page_mapping, .-recover_logic_page_mapping
	.section	.text.get_current_used_block,"ax",%progbits
	.align	1
	.global	get_current_used_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_current_used_block, %function
get_current_used_block:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, r8, r10, lr}
	mov	r4, r0
	mov	r5, r2
	mov	r6, r1
	cmp	r1, #0
	beq	.L1098
	ldr	r3, [r0, #292]
	cmp	r3, r1
	beq	.L1099
	movw	r2, #1013
	ldr	r1, .L1132
	ldr	r0, .L1132+4
	bl	NAND_Print
.L1099:
	ldr	r3, [r4, #292]
	ldrh	r2, [r4, #320]
	ldr	r0, .L1132+8
	ldrh	r1, [r3]
	bl	NAND_Print_DBG
	ldrh	r3, [r4, #320]
	mov	r0, r4
	ldr	r2, [r4, #304]
	ldr	r1, [r4, #292]
	bl	recover_logic_page_mapping
	ldr	r3, [r4, #292]
	ldrh	r1, [r4, #320]
	ldrh	r2, [r3, #4]
	cmp	r1, r2
	bcs	.L1100
	ldr	r0, .L1132+12
	bl	NAND_Print
.L1100:
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	lsls	r3, r3, #31
	bpl	.L1130
	ldr	r6, .L1132+16
	ldr	r8, .L1132+44
.L1101:
	ldr	r7, [r4, #324]
	cbz	r7, .L1103
.L1112:
	ldr	r2, [r4, #336]
	mov	r0, r4
	ldr	r1, [r4, #324]
	bl	recover_phy_page_mapping
	uxth	r3, r0
	movw	r2, #65535
	cmp	r3, r2
	strh	r3, [r4, #352]	@ movhi
	bne	.L1128
	ldr	r0, .L1132+20
.L1129:
	bl	NAND_Print
	ldr	r1, [r4, #324]
	mov	r0, r4
	ldrh	r2, [r1, #6]
	adds	r2, r2, #1
	uxth	r2, r2
	bl	erase_block
	movs	r3, #0
	str	r3, [r4, #324]
	b	.L1101
.L1103:
	mov	r0, r4
	bl	out_phy_block_from_free_list
	mov	r1, r0
	str	r0, [r4, #324]
	cbnz	r0, .L1106
.L1131:
	movs	r0, #1
	b	.L1097
.L1106:
	ldr	r3, [r4, #292]
	strh	r7, [r4, #352]	@ movhi
	ldr	r2, [r3, #8]
	adds	r2, r2, #1
	str	r2, [r0, #8]
	mov	r0, r4
	bl	new_block_init_for_write
	cbz	r0, .L1107
	mov	r0, r8
	bl	NAND_Print
	str	r7, [r4, #324]
	b	.L1101
.L1107:
	ldrh	r10, [r4, #320]
	mov	r5, r0
.L1109:
	cmp	r5, r10
	ldr	r2, [r4, #324]
	bcs	.L1112
	uxth	r3, r5
	ldr	r7, [r4, #1988]
	ldr	r1, [r4, #292]
	mov	r0, r4
	str	r3, [sp]
	ldr	r3, [r4, #284]
	blx	r7
	cbz	r0, .L1110
	mov	r0, r6
	bl	NAND_Print
.L1110:
	adds	r5, r5, #1
	b	.L1109
.L1128:
	ldr	r3, [r4, #292]
	ldr	r1, [r4, #324]
	ldr	r2, [r3, #8]
	uxth	r3, r0
	mov	r0, r4
	adds	r2, r2, #1
	str	r2, [r1, #8]
	ldr	r2, [r4, #336]
	bl	recover_logic_page_mapping
	ldrh	r1, [r4, #352]
	ldrh	r2, [r4, #320]
	cmp	r1, r2
	bls	.L1113
	ldr	r0, .L1132+24
	bl	NAND_Print
	ldrh	r2, [r4, #320]
	ldrh	r1, [r4, #352]
	ldr	r0, .L1132+28
	bl	NAND_Print
.L1130:
	movs	r0, #0
.L1097:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, pc}
.L1113:
	bcs	.L1130
	ldr	r0, .L1132+32
	b	.L1129
.L1098:
	ldr	r0, .L1132+36
	bl	NAND_Print_DBG
	ldr	r3, [r4, #172]
	cbz	r3, .L1115
	mov	r0, r4
	bl	out_phy_block_from_free_list
	str	r0, [r4, #292]
	cmp	r0, #0
	beq	.L1131
	adds	r5, r5, #1
	strh	r6, [r4, #320]	@ movhi
	str	r5, [r0, #8]
	ldrb	r0, [r4, #17]	@ zero_extendqisi2
	ands	r0, r0, #1
	beq	.L1117
	mov	r0, r4
	bl	out_phy_block_from_free_list
	str	r0, [r4, #324]
	cmp	r0, #0
	beq	.L1131
	ldr	r3, [r4, #292]
	strh	r6, [r4, #352]	@ movhi
	ldr	r3, [r3, #8]
	adds	r3, r3, #1
	str	r3, [r0, #8]
	b	.L1130
.L1117:
	str	r0, [r4, #324]
	b	.L1097
.L1115:
	ldr	r0, .L1132+40
	bl	NAND_Print
	mov	r0, r4
	bl	print_free_list
	mov	r0, r4
	bl	print_block_invalid_list
	b	.L1131
.L1133:
	.align	2
.L1132:
	.word	.LANCHOR6
	.word	.LC192
	.word	.LC193
	.word	.LC194
	.word	.LC196
	.word	.LC197
	.word	.LC198
	.word	.LC199
	.word	.LC171
	.word	.LC200
	.word	.LC201
	.word	.LC195
	.size	get_current_used_block, .-get_current_used_block
	.section	.text.check_invalid_page_right,"ax",%progbits
	.align	1
	.global	check_invalid_page_right
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	check_invalid_page_right, %function
check_invalid_page_right:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	movs	r4, #0
	ldr	fp, .L1143+4
	mov	r8, r0
	mov	r10, r1
	mov	r7, r2
	mov	r6, r3
	mov	r5, r4
.L1135:
	cmp	r6, r5
	bhi	.L1140
	ldrh	r2, [r7, #4]
	cmp	r2, r4
	beq	.L1142
	mov	r3, r6
	mov	r1, r4
	ldr	r0, .L1143
	bl	NAND_Print
	movs	r0, #1
.L1134:
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L1140:
	ldr	r3, [r10, #8]
	ldr	r1, [r3, r5, lsl #2]
	adds	r3, r1, #1
	beq	.L1136
	mov	r0, r8
	bl	get_logic_page_map
	cbnz	r0, .L1137
	mov	r0, fp
	bl	NAND_Print_DBG
.L1136:
	adds	r4, r4, #1
	b	.L1138
.L1137:
	ldrh	r2, [r0, #2]
	ldrh	r3, [r7]
	cmp	r2, r3
	bne	.L1136
	ldrh	r3, [r0]
	ubfx	r3, r3, #0, #12
	cmp	r3, r5
	bne	.L1136
.L1138:
	adds	r5, r5, #1
	b	.L1135
.L1142:
	movs	r0, #0
	b	.L1134
.L1144:
	.align	2
.L1143:
	.word	.LC203
	.word	.LC202
	.size	check_invalid_page_right, .-check_invalid_page_right
	.section	.text.do_write_error,"ax",%progbits
	.align	1
	.global	do_write_error
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	do_write_error, %function
do_write_error:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r4, r0
	ldr	r10, .L1167+4
	sub	sp, sp, #24
	mov	r6, r1
	ldr	fp, .L1167+8
.L1146:
	mov	r0, r4
	bl	out_phy_block_from_free_list
	mov	r5, r0
	cbnz	r0, .L1147
.L1151:
	ldr	r0, .L1167
	bl	NAND_Print
	movs	r0, #1
.L1145:
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L1147:
	ldr	r3, [r4, #4]
	movs	r7, #0
	ldrh	r2, [r0]
	add	r1, sp, #8
	strh	r7, [sp, #8]	@ movhi
	mov	r0, r4
	ldrh	r3, [r3, #28]
	strh	r2, [sp, #10]	@ movhi
	strd	r7, r7, [sp, #16]
	strh	r3, [sp, #12]	@ movhi
	ldr	r3, [r4, #1976]
	blx	r3
	ldrh	r3, [r5, #6]
	strh	r7, [r5, #4]	@ movhi
	adds	r3, r3, #1
	strh	r3, [r5, #6]	@ movhi
	cbz	r0, .L1149
	ldr	r3, [r4, #1996]
	add	r1, sp, #8
	mov	r0, r4
	blx	r3
	ldrh	r1, [r5]
	mov	r0, fp
	bl	NAND_Print
	ldrh	r2, [r4, #380]
	ldrh	r3, [r4, #22]
	cmp	r3, r2, lsr #2
	bhi	.L1146
	b	.L1151
.L1149:
	ldr	r3, [r6]
	mov	r8, r0
	ldr	r3, [r3, #8]
	adds	r3, r3, #1
	str	r3, [r5, #8]
.L1152:
	ldrh	r3, [r6, #28]
	ldr	r1, [r6]
	cmp	r3, r8
	bhi	.L1155
.L1153:
	ldrh	r3, [r1, #4]
	movs	r7, #0
	ldrh	r2, [r1]
	mov	r0, r4
	strh	r7, [sp, #8]	@ movhi
	strh	r3, [r5, #4]	@ movhi
	ldr	r3, [r4, #4]
	strh	r2, [sp, #10]	@ movhi
	ldrh	r2, [r1, #6]
	ldrh	r3, [r3, #28]
	strd	r7, r7, [sp, #16]
	adds	r2, r2, #1
	uxth	r2, r2
	strh	r3, [sp, #12]	@ movhi
	bl	erase_block
	ldr	r3, [r6]
	ldrh	r3, [r3, #2]
	strh	r3, [r5, #2]	@ movhi
	str	r5, [r6]
.L1156:
	ldrh	r3, [r6, #28]
	cmp	r3, r7
	bhi	.L1160
	movs	r0, #0
	b	.L1145
.L1155:
	ldr	r3, [r6, #12]
	ldr	r3, [r3, r8, lsl #2]
	adds	r3, r3, #1
	beq	.L1153
	uxth	r3, r8
	ldr	r7, [r4, #1988]
	mov	r2, r5
	str	r3, [sp]
	mov	r0, r4
	ldr	r3, [r4, #284]
	blx	r7
	cbz	r0, .L1154
	ldrh	r1, [r5]
	mov	r0, r10
	bl	NAND_Print
	ldr	r3, [r4, #4]
	mov	r0, r4
	ldrh	r1, [r5]
	ldrh	r2, [r3, #28]
	movs	r3, #0
	strh	r3, [sp, #8]	@ movhi
	strh	r1, [sp, #10]	@ movhi
	add	r1, sp, #8
	strd	r3, r3, [sp, #16]
	strh	r2, [sp, #12]	@ movhi
	ldr	r3, [r4, #1996]
	blx	r3
	b	.L1146
.L1154:
	add	r8, r8, #1
	b	.L1152
.L1160:
	ldr	r3, [r6, #12]
	ldr	r1, [r3, r7, lsl #2]
	adds	r3, r1, #1
	beq	.L1158
	mov	r0, r4
	bl	get_logic_page_map
	cbz	r0, .L1158
	ldr	r3, [r6]
	ldrh	r3, [r3]
	strh	r3, [r0, #2]	@ movhi
	ldrh	r3, [r0]
	bfi	r3, r7, #0, #12
	strh	r3, [r0]	@ movhi
.L1158:
	adds	r7, r7, #1
	b	.L1156
.L1168:
	.align	2
.L1167:
	.word	.LC204
	.word	.LC206
	.word	.LC205
	.size	do_write_error, .-do_write_error
	.section	.text.write_phy_data_to_current_block,"ax",%progbits
	.align	1
	.global	write_phy_data_to_current_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	write_phy_data_to_current_block, %function
write_phy_data_to_current_block:
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	sub	sp, sp, #48
	add	r7, sp, #16
	mov	r4, r0
	mov	fp, r2
	mov	r0, r7
	movs	r2, #16
	mov	r5, r1
	movs	r1, #165
	str	r3, [sp, #12]
	ldr	r6, [sp, #80]
	mov	r8, #3
	bl	NAND_Memset
	ldr	r3, [r4, #4]
	mov	r1, fp
	movw	r0, #65535
	ldrb	r2, [r3, #8]	@ zero_extendqisi2
	ldr	r3, .L1186
	cmp	r6, r3
	itet	ne
	lslne	r2, r2, #9
	ldrheq	r2, [r4, #308]
	uxthne	r2, r2
	bl	nand_crc16
	lsrs	r3, r0, #8
	strb	r0, [sp, #29]
	strb	r3, [sp, #28]
.L1172:
	ldr	r0, [r5]
	ldr	lr, [r4, #4]
	ldr	r3, .L1186
	ldrh	r1, [r0]
	ldrh	r2, [r5, #28]
	ldrh	ip, [lr, #28]
	cmp	r6, r3
	strh	r1, [sp, #34]	@ movhi
	strh	r2, [sp, #32]	@ movhi
	strh	ip, [sp, #36]	@ movhi
	strd	fp, r7, [sp, #40]
	bne	.L1173
	ldrh	r3, [r0, #6]
	mov	r2, r6
	str	r3, [sp]
	ldr	r3, [r0, #8]
.L1185:
	mov	r1, r7
	mov	r0, r4
	bl	set_oob_special_page
	b	.L1174
.L1173:
	cmp	r6, #192
	bne	.L1175
	ldrh	r3, [lr, #20]
	subs	r3, r3, #1
	cmp	r2, r3
	bne	.L1176
	ldr	r0, .L1186+4
	bl	NAND_Print_DBG
.L1176:
	ldr	r3, [r5]
	mov	r1, r7
	mov	r0, r4
	ldrh	r2, [r3, #6]
	str	r2, [sp]
	ldr	r2, [sp, #12]
	ldr	r3, [r3, #8]
	bl	set_oob_logic_page
.L1174:
	ldr	r3, [r5]
	mov	r10, #1
	add	r1, sp, #32
	mov	r0, r4
	strh	r10, [r3, #2]	@ movhi
	ldr	r3, [r4, #1984]
	blx	r3
	cbz	r0, .L1169
	subs	r8, r8, #1
	beq	.L1179
	ldrh	r1, [sp, #34]
	ldr	r0, .L1186+8
	bl	NAND_Print_DBG
	mov	r1, r5
	mov	r0, r4
	bl	do_write_error
	cmp	r0, #0
	beq	.L1172
	ldr	r0, .L1186+12
	bl	NAND_Print
	mov	r0, r10
.L1169:
	add	sp, sp, #48
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L1175:
	ldr	r3, .L1186+16
	cmp	r6, r3
	bne	.L1174
	ldrh	r3, [lr, #20]
	subs	r3, r3, #1
	cmp	r2, r3
	bne	.L1177
	ldr	r0, .L1186+20
	bl	NAND_Print_DBG
.L1177:
	ldr	r3, [r5]
	ldrh	r2, [r3, #6]
	str	r2, [sp]
	ldr	r2, .L1186+16
	ldr	r3, [r3, #8]
	b	.L1185
.L1179:
	mov	r0, r8
	b	.L1169
.L1187:
	.align	2
.L1186:
	.word	-1431633921
	.word	.LC207
	.word	.LC209
	.word	.LC210
	.word	-1441713357
	.word	.LC208
	.size	write_phy_data_to_current_block, .-write_phy_data_to_current_block
	.section	.text.write_phy_page_map_to_current_block,"ax",%progbits
	.align	1
	.global	write_phy_page_map_to_current_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	write_phy_page_map_to_current_block, %function
write_phy_page_map_to_current_block:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #324
	push	{r0, r1, r4, r5, r6, lr}
	cmp	r1, r3
	mov	r4, r0
	mov	r5, r1
	bne	.L1189
	ldr	r1, [r0, #312]
	mov	r2, #320
	ldr	r0, [r0, #344]
	bl	NAND_Memcpy
.L1189:
	ldr	r3, .L1192
	mov	r1, r5
	ldr	r2, [r5, #4]
	mov	r0, r4
	str	r3, [sp]
	movs	r3, #0
	bl	write_phy_data_to_current_block
	mov	r6, r0
	cbz	r0, .L1190
	ldr	r0, .L1192+4
	bl	NAND_Print
.L1188:
	mov	r0, r6
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L1190:
	mov	r1, r5
	ldrh	r3, [r5, #28]
	ldr	r2, [r1], #4
	adds	r3, r3, #1
	ldrh	r0, [r2, #4]
	uxth	r3, r3
	strh	r3, [r5, #28]	@ movhi
	adds	r0, r0, #1
	strh	r0, [r2, #4]	@ movhi
	mov	r0, r4
	bl	check_invalid_page_right
	ldr	r3, [r4, #4]
	ldrh	r2, [r5, #28]
	ldrh	r3, [r3, #20]
	cmp	r2, r3
	bne	.L1188
	ldr	r1, [r5]
	mov	r0, r4
	bl	put_phy_block_to_invalid_page_list
	mov	r0, r4
	bl	adjust_invaild_list
	b	.L1188
.L1193:
	.align	2
.L1192:
	.word	-1431633921
	.word	.LC211
	.size	write_phy_page_map_to_current_block, .-write_phy_page_map_to_current_block
	.section	.text.do_after_write,"ax",%progbits
	.align	1
	.global	do_after_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	do_after_write, %function
do_after_write:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	add	r6, r0, #292
	mov	r1, r6
	mov	r4, r0
	bl	current_block_at_last_page
	cmp	r0, #1
	mov	r5, r0
	bne	.L1202
	mov	r0, r4
	bl	write_phy_page_map_to_current_block
	cbz	r0, .L1196
	ldr	r0, .L1213
.L1212:
	bl	NAND_Print
.L1194:
	mov	r0, r5
	pop	{r4, r5, r6, pc}
.L1196:
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	lsls	r2, r3, #31
	bpl	.L1198
	add	r1, r4, #324
	mov	r0, r4
	bl	write_phy_page_map_to_current_block
	cbz	r0, .L1198
	ldr	r0, .L1213
	bl	NAND_Print
.L1198:
	mov	r1, r6
	mov	r0, r4
	bl	get_new_current_block
	cbz	r0, .L1200
	ldr	r0, .L1213+4
	b	.L1212
.L1200:
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	lsls	r3, r3, #31
	bpl	.L1201
	add	r1, r4, #324
	mov	r0, r4
	bl	get_new_current_block
	cbz	r0, .L1201
	ldr	r0, .L1213+8
	b	.L1212
.L1201:
	ldr	r3, [r4, #368]
	adds	r3, r3, #1
	str	r3, [r4, #368]
.L1202:
	movs	r5, #0
	b	.L1194
.L1214:
	.align	2
.L1213:
	.word	.LC212
	.word	.LC213
	.word	.LC214
	.size	do_after_write, .-do_after_write
	.section	.text.fill_no_use_data_to_page,"ax",%progbits
	.align	1
	.global	fill_no_use_data_to_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	fill_no_use_data_to_page, %function
fill_no_use_data_to_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	add	r5, r0, #292
	mov	r1, r5
	mov	r4, r0
	bl	current_block_at_last_page
	cbz	r0, .L1216
	mov	r0, r4
	bl	write_phy_page_map_to_current_block
	cbz	r0, .L1217
	ldr	r0, .L1245
.L1243:
	bl	NAND_Print
	movs	r0, #1
	b	.L1215
.L1217:
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	lsls	r1, r3, #31
	bpl	.L1220
	add	r1, r4, #324
	mov	r0, r4
	bl	write_phy_page_map_to_current_block
	cbz	r0, .L1220
	ldr	r0, .L1245
	bl	NAND_Print
.L1220:
	mov	r1, r5
	mov	r0, r4
	bl	get_new_current_block
	cbz	r0, .L1222
	ldr	r0, .L1245+4
	b	.L1243
.L1222:
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	lsls	r2, r3, #31
	bmi	.L1223
.L1224:
	movs	r0, #0
.L1215:
	pop	{r3, r4, r5, pc}
.L1223:
	add	r1, r4, #324
	mov	r0, r4
	bl	get_new_current_block
	cmp	r0, #0
	beq	.L1224
	ldr	r0, .L1245+8
	b	.L1243
.L1216:
	ldrh	r3, [r4, #320]
	cmp	r3, #0
	beq	.L1224
	mov	r0, r4
	bl	write_phy_page_map_to_current_block
	cbz	r0, .L1225
	ldr	r0, .L1245
	bl	NAND_Print
.L1225:
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	lsls	r3, r3, #31
	bmi	.L1226
.L1244:
	movs	r0, #8
	b	.L1215
.L1226:
	add	r1, r4, #324
	mov	r0, r4
	bl	write_phy_page_map_to_current_block
	cmp	r0, #0
	beq	.L1244
	ldr	r0, .L1245
	bl	NAND_Print
	b	.L1244
.L1246:
	.align	2
.L1245:
	.word	.LC212
	.word	.LC213
	.word	.LC214
	.size	fill_no_use_data_to_page, .-fill_no_use_data_to_page
	.section	.text.fill_no_use_data_to_current_block,"ax",%progbits
	.align	1
	.global	fill_no_use_data_to_current_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	fill_no_use_data_to_current_block, %function
fill_no_use_data_to_current_block:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r0
	movs	r4, #0
.L1248:
	ldr	r3, [r5, #4]
	ldrh	r3, [r3, #20]
	cmp	r3, r4
	bgt	.L1250
	movs	r0, #1
.L1247:
	pop	{r3, r4, r5, pc}
.L1250:
	mov	r0, r5
	bl	fill_no_use_data_to_page
	cmp	r0, #0
	beq	.L1247
	adds	r4, r4, #1
	b	.L1248
	.size	fill_no_use_data_to_current_block, .-fill_no_use_data_to_current_block
	.section	.text.fill_no_use_page_to_current_block,"ax",%progbits
	.align	1
	.global	fill_no_use_page_to_current_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	fill_no_use_page_to_current_block, %function
fill_no_use_page_to_current_block:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, r0
	mov	r5, r1
	movs	r4, #0
.L1255:
	cmp	r4, r5
	blt	.L1257
	movs	r0, #1
.L1254:
	pop	{r4, r5, r6, pc}
.L1257:
	mov	r0, r6
	bl	fill_no_use_data_to_page
	cmp	r0, #0
	beq	.L1254
	adds	r4, r4, #1
	b	.L1255
	.size	fill_no_use_page_to_current_block, .-fill_no_use_page_to_current_block
	.section	.text.nand_before_shutdown,"ax",%progbits
	.align	1
	.global	nand_before_shutdown
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_before_shutdown, %function
nand_before_shutdown:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r1, #8
	b	fill_no_use_page_to_current_block
	.size	nand_before_shutdown, .-nand_before_shutdown
	.section	.text.write_logic_data_to_current_block,"ax",%progbits
	.align	1
	.global	write_logic_data_to_current_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	write_logic_data_to_current_block, %function
write_logic_data_to_current_block:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #192
	push	{r0, r1, r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r8, r0
	mov	r4, r1
	mov	fp, r3
	bne	.L1263
	mov	r1, r3
	bl	get_logic_page_map
	mov	r10, r0
	cbnz	r0, .L1264
.L1270:
	movs	r7, #1
	ldr	r0, .L1286
	bl	NAND_Print_DBG
.L1262:
	mov	r0, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L1264:
	ldrh	r3, [r0, #2]
	movw	r2, #65535
	cmp	r3, r2
	beq	.L1278
	ldr	r2, [r8, #4]
	movs	r5, #36
	ldr	r1, [r2, #32]
	mla	r5, r5, r3, r1
	ldr	r3, [r4]
	cmp	r3, r5
	bne	.L1277
	ldrh	r3, [r5, #4]
	ldrh	r2, [r2, #20]
	adds	r3, r3, #1
	uxth	r3, r3
	cmp	r2, r3
	strh	r3, [r5, #4]	@ movhi
	bcs	.L1278
	ldrh	r1, [r4, #28]
	ldr	r0, .L1286+4
	bl	NAND_Print_DBG
.L1278:
	movs	r6, #0
	b	.L1266
.L1277:
	movs	r6, #1
.L1266:
	movs	r3, #192
	ldr	r2, [sp, #40]
	str	r3, [sp]
	mov	r1, r4
	mov	r3, fp
	mov	r0, r8
	bl	write_phy_data_to_current_block
	mov	r7, r0
	cbz	r0, .L1267
	ldr	r0, .L1286+8
.L1285:
	bl	NAND_Print
	b	.L1262
.L1267:
	ldr	r3, [r4]
	ldrh	r1, [r4, #28]
	ldr	r2, [r8, #364]
	ldrh	r3, [r3]
	ubfx	r0, r1, #0, #12
	adds	r1, r1, #1
	clz	r2, r2
	strh	r3, [r10, #2]	@ movhi
	lsrs	r2, r2, #5
	ldrh	r3, [r10]
	bfi	r3, r0, #0, #12
	strh	r3, [r10]	@ movhi
	ubfx	r3, r3, #8, #8
	bfi	r3, r2, #4, #1
	strb	r3, [r10, #1]
	ldr	r3, [r4, #12]
	str	fp, [r3, r0, lsl #2]
	strh	r1, [r4, #28]	@ movhi
.L1268:
	cmp	r6, #0
	beq	.L1273
	mov	r1, r5
	mov	r0, r8
	bl	phy_block_from_invalid_page_incr
	b	.L1273
.L1263:
	ldr	r6, .L1286+12
	cmp	r2, r6
	bne	.L1269
	mov	r1, r3
	bl	get_logic_page_map
	mov	r7, r0
	cmp	r0, #0
	beq	.L1270
	ldrh	r3, [r0, #2]
	movw	r2, #65535
	cmp	r3, r2
	beq	.L1281
	ldr	r2, [r8, #4]
	movs	r5, #36
	ldr	r1, [r2, #32]
	mla	r5, r5, r3, r1
	ldr	r3, [r4]
	cmp	r3, r5
	bne	.L1280
	ldrh	r3, [r0]
	mov	r0, #-1
	ldr	r1, [r4, #12]
	ldrh	r2, [r2, #20]
	ubfx	r3, r3, #0, #12
	str	r0, [r1, r3, lsl #2]
	ldrh	r3, [r5, #4]
	adds	r3, r3, #1
	uxth	r3, r3
	cmp	r2, r3
	strh	r3, [r5, #4]	@ movhi
	bcs	.L1281
	ldrh	r1, [r4, #28]
	ldr	r0, .L1286+16
	bl	NAND_Print
.L1281:
	movs	r6, #0
	b	.L1271
.L1280:
	movs	r6, #1
.L1271:
	movw	r3, #65535
	movw	r2, #4095
	strh	r3, [r7, #2]	@ movhi
	ldrh	r3, [r7]
	bfi	r3, r2, #0, #12
	strh	r3, [r7]	@ movhi
	ubfx	r3, r3, #8, #8
	orr	r3, r3, #16
	strb	r3, [r7, #1]
	b	.L1268
.L1269:
	ldr	r5, .L1286+20
	cmp	r2, r5
	bne	.L1273
	ldr	r6, [r1]
	ldrh	r5, [r6, #4]
	adds	r5, r5, #1
	strh	r5, [r6, #4]	@ movhi
	str	r2, [sp]
	ldr	r2, [sp, #40]
	bl	write_phy_data_to_current_block
	mov	r7, r0
	cbz	r0, .L1274
	ldr	r0, .L1286+24
	b	.L1285
.L1274:
	ldrh	r3, [r4, #28]
	adds	r3, r3, #1
	strh	r3, [r4, #28]	@ movhi
.L1273:
	mov	r0, r8
	movs	r7, #0
	bl	adjust_invaild_list
	b	.L1262
.L1287:
	.align	2
.L1286:
	.word	.LC215
	.word	.LC216
	.word	.LC217
	.word	-1441722095
	.word	.LC218
	.word	-1441713357
	.word	.LC219
	.size	write_logic_data_to_current_block, .-write_logic_data_to_current_block
	.section	.text.write_data_to_page,"ax",%progbits
	.align	1
	.global	write_data_to_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	write_data_to_page, %function
write_data_to_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, r5, r6, r7, r8, lr}
	mov	r6, r1
	str	r3, [sp]
	mov	r7, r2
	mov	r8, r3
	mov	r3, r2
	mov	r2, r1
	add	r1, r0, #292
	mov	r4, r0
	bl	write_logic_data_to_current_block
	mov	r5, r0
	cbz	r0, .L1289
.L1292:
	movs	r5, #1
	ldr	r0, .L1294
	bl	NAND_Print
.L1288:
	mov	r0, r5
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L1289:
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	lsls	r3, r3, #31
	bpl	.L1288
	str	r8, [sp]
	mov	r3, r7
	mov	r2, r6
	add	r1, r4, #324
	mov	r0, r4
	bl	write_logic_data_to_current_block
	cmp	r0, #0
	beq	.L1288
	b	.L1292
.L1295:
	.align	2
.L1294:
	.word	.LC220
	.size	write_data_to_page, .-write_data_to_page
	.section	.text._nftl_discard_logic_page,"ax",%progbits
	.align	1
	.global	_nftl_discard_logic_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nftl_discard_logic_page, %function
_nftl_discard_logic_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, r1
	movs	r3, #0
	ldr	r1, .L1297
	b	write_data_to_page
.L1298:
	.align	2
.L1297:
	.word	-1441722095
	.size	_nftl_discard_logic_page, .-_nftl_discard_logic_page
	.section	.text.nand_write_data_page,"ax",%progbits
	.align	1
	.global	nand_write_data_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_write_data_page, %function
nand_write_data_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, r1
	add	r1, r0, #292
	mov	r5, r0
	mov	r7, r2
	mov	r8, r3
	bl	current_block_at_last_page
	cmp	r0, #1
	mov	r4, r0
	bne	.L1300
	mov	r0, r5
	bl	do_after_write
	cbz	r0, .L1300
	ldr	r0, .L1311
	bl	NAND_Print
.L1299:
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, pc}
.L1300:
	mov	r0, r5
	bl	do_before_write
	cbz	r0, .L1302
	ldr	r0, .L1311+4
.L1310:
	bl	NAND_Print
	movs	r4, #1
	b	.L1299
.L1302:
	mov	r3, r8
	mov	r2, r7
	mov	r1, r6
	mov	r0, r5
	bl	write_data_to_page
	cbz	r0, .L1303
	ldr	r0, .L1311+8
	b	.L1310
.L1303:
	mov	r0, r5
	bl	do_after_write
	mov	r4, r0
	cmp	r0, #0
	beq	.L1299
	ldr	r0, .L1311+12
	b	.L1310
.L1312:
	.align	2
.L1311:
	.word	.LC221
	.word	.LC222
	.word	.LC223
	.word	.LC224
	.size	nand_write_data_page, .-nand_write_data_page
	.section	.text.nand_write_logic_page_no_gc,"ax",%progbits
	.align	1
	.global	nand_write_logic_page_no_gc
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_write_logic_page_no_gc, %function
nand_write_logic_page_no_gc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r2
	mov	r2, r1
	movs	r1, #192
	b	nand_write_data_page
	.size	nand_write_logic_page_no_gc, .-nand_write_logic_page_no_gc
	.section	.text.garbage_collect_first,"ax",%progbits
	.align	1
	.global	garbage_collect_first
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	garbage_collect_first, %function
garbage_collect_first:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	sub	sp, sp, #96
	mov	r5, r1
	add	r7, sp, #64
	mov	r4, r0
	mov	r6, r2
	movs	r1, #90
	movs	r2, #16
	mov	r0, r7
	bl	NAND_Memset
	cbnz	r5, .L1315
	mov	r0, r4
	bl	out_phy_block_from_invalid_page_list
.L1355:
	mov	r5, r0
	cbnz	r0, .L1318
	ldr	r0, .L1356
	bl	NAND_Print
	movs	r0, #8
.L1314:
	add	sp, sp, #96
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L1315:
	mov	r1, r5
	mov	r0, r4
	bl	is_current_blcok
	cmp	r0, #1
	beq	.L1333
	mov	r0, r4
	bl	out_phy_block_from_invalid_page_list_by_block
	b	.L1355
.L1318:
	ldr	r2, [r4, #1968]
	ldrh	r0, [r0]
	ldr	r3, [r2, #120]
	strh	r0, [sp, #82]	@ movhi
	mov	r0, r4
	adds	r3, r3, #1
	str	r3, [r2, #120]
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #284]
	ldrh	r1, [r3, #28]
	ldrh	r3, [r3, #20]
	strd	r2, r7, [sp, #88]
	strh	r1, [sp, #84]	@ movhi
	add	r1, sp, #80
	subs	r3, r3, #1
	strh	r3, [sp, #80]	@ movhi
	ldr	r3, [r4, #1980]
	blx	r3
	mov	r10, r0
	mov	r0, r7
	bl	is_phy_mapping_page
	cmp	r0, #1
	mov	r8, r0
	beq	.L1319
	ldr	r0, .L1356+4
	mov	r8, #1
	bl	NAND_Print_DBG
	ldr	r3, [r4, #4]
	ldrh	r1, [r5]
	ldr	r0, .L1356+8
	ldrh	r2, [r3, #20]
	ldrh	r3, [r3, #28]
	subs	r2, r2, #1
	str	r3, [sp]
	movs	r3, #0
	bl	NAND_Print_DBG
	ldrb	r0, [sp, #79]	@ zero_extendqisi2
	ldrb	r3, [sp, #67]	@ zero_extendqisi2
	ldrb	r2, [sp, #66]	@ zero_extendqisi2
	str	r0, [sp, #44]
	ldrb	r0, [sp, #78]	@ zero_extendqisi2
	ldrb	r1, [sp, #65]	@ zero_extendqisi2
	str	r0, [sp, #40]
	ldrb	r0, [sp, #77]	@ zero_extendqisi2
	str	r0, [sp, #36]
	ldrb	r0, [sp, #76]	@ zero_extendqisi2
	str	r0, [sp, #32]
	ldrb	r0, [sp, #75]	@ zero_extendqisi2
	str	r0, [sp, #28]
	ldrb	r0, [sp, #74]	@ zero_extendqisi2
	str	r0, [sp, #24]
	ldrb	r0, [sp, #73]	@ zero_extendqisi2
	str	r0, [sp, #20]
	ldrb	r0, [sp, #72]	@ zero_extendqisi2
	str	r0, [sp, #16]
	ldrb	r0, [sp, #71]	@ zero_extendqisi2
	str	r0, [sp, #12]
	ldrb	r0, [sp, #70]	@ zero_extendqisi2
	str	r0, [sp, #8]
	ldrb	r0, [sp, #69]	@ zero_extendqisi2
	str	r0, [sp, #4]
	ldrb	r0, [sp, #68]	@ zero_extendqisi2
	str	r0, [sp]
	ldr	r0, .L1356+12
	bl	NAND_Print_DBG
	ldrh	r2, [r5]
	ldrb	r1, [r4, #16]	@ zero_extendqisi2
	ldr	r0, .L1356+16
	bl	NAND_Print_DBG
	ldr	r2, [r4, #268]
	mov	r1, r5
	mov	r0, r4
	bl	recover_block_phy_page_mapping
.L1320:
	ldr	r3, [r4, #4]
	mov	r2, r5
	add	r1, r4, #260
	mov	r0, r4
	ldrh	r3, [r3, #20]
	bl	check_invalid_page_right
	cmp	r0, #0
	beq	.L1322
	mov	r8, #1
	movw	r6, #65535
	ldr	r0, .L1356+20
	bl	NAND_Print
.L1324:
	mov	r10, #0
.L1323:
	ldr	r3, [r4, #4]
	ldrh	r3, [r3, #20]
	subs	r3, r3, #1
	cmp	r3, r10
	bhi	.L1331
.L1330:
	ldr	r3, [r4, #4]
	ldrh	r3, [r3, #20]
	subs	r3, r3, #1
	cmp	r3, r10
	bne	.L1332
	movs	r6, #0
	strh	r6, [r4, #386]	@ movhi
	cmp	r8, #0
	beq	.L1332
	ldr	r0, .L1356+24
	bl	NAND_Print
	ldrh	r2, [r5, #6]
	mov	r1, r5
	mov	r0, r4
	adds	r2, r2, #1
	uxth	r2, r2
	bl	erase_block
.L1333:
	movs	r0, #0
	b	.L1314
.L1319:
	cmp	r10, #0
	beq	.L1321
	cmp	r10, #10
	beq	.L1321
	ldrh	r1, [r5]
	ldr	r0, .L1356+28
	bl	NAND_Print_DBG
	ldr	r2, [r4, #268]
	mov	r1, r5
	mov	r0, r4
	bl	recover_block_phy_page_mapping
	b	.L1320
.L1321:
	ldr	r2, [r4, #272]
	mov	r8, #0
	ldr	r1, [r4, #284]
	ldr	r0, [r4, #268]
	bl	NAND_Memcpy
	b	.L1320
.L1322:
	movw	r3, #65535
	cmp	r8, #0
	it	ne
	movne	r6, r3
	b	.L1324
.L1331:
	ldr	r3, [r4, #268]
	ldr	r3, [r3, r10, lsl #2]
	adds	r2, r3, #1
	beq	.L1325
	mov	r1, r3
	mov	r0, r4
	str	r3, [sp, #60]
	bl	get_logic_page_map
	mov	fp, r0
	cmp	r0, #0
	beq	.L1325
	ldrh	r2, [r0, #2]
	ldrh	r1, [r5]
	cmp	r1, r2
	bne	.L1325
	ldrh	r2, [r0]
	ubfx	r2, r2, #0, #12
	cmp	r2, r10
	bne	.L1325
	ldr	r0, [r4, #1968]
	ldr	ip, [r4, #4]
	strh	r1, [sp, #82]	@ movhi
	add	r1, sp, #80
	ldr	r2, [r0, #124]
	strh	r10, [sp, #80]	@ movhi
	adds	r2, r2, #1
	str	r2, [r0, #124]
	ldrh	r0, [ip, #28]
	ldr	r2, [r4, #288]
	strh	r0, [sp, #84]	@ movhi
	mov	r0, r4
	strd	r2, r7, [sp, #88]
	ldr	r2, [r4, #1980]
	blx	r2
	str	r0, [sp, #56]
	mov	r0, r7
	bl	get_logic_page_from_oob
	ldrd	r2, r3, [sp, #56]
	cbz	r2, .L1326
	cmp	r2, #10
	bne	.L1327
.L1326:
	cmp	r3, r0
	beq	.L1328
	ldrh	r1, [r5]
	mov	r2, r10
	str	r3, [sp]
	mov	r3, r0
	ldr	r0, .L1356+32
	mov	r8, #1
	bl	NAND_Print_DBG
	ldrb	r0, [sp, #79]	@ zero_extendqisi2
	movw	r6, #65535
	ldrb	r3, [sp, #66]	@ zero_extendqisi2
	ldrb	r2, [sp, #65]	@ zero_extendqisi2
	str	r0, [sp, #48]
	ldrb	r0, [sp, #78]	@ zero_extendqisi2
	ldrb	r1, [sp, #64]	@ zero_extendqisi2
	str	r0, [sp, #44]
	ldrb	r0, [sp, #77]	@ zero_extendqisi2
	str	r0, [sp, #40]
	ldrb	r0, [sp, #76]	@ zero_extendqisi2
	str	r0, [sp, #36]
	ldrb	r0, [sp, #75]	@ zero_extendqisi2
	str	r0, [sp, #32]
	ldrb	r0, [sp, #74]	@ zero_extendqisi2
	str	r0, [sp, #28]
	ldrb	r0, [sp, #73]	@ zero_extendqisi2
	str	r0, [sp, #24]
	ldrb	r0, [sp, #72]	@ zero_extendqisi2
	str	r0, [sp, #20]
	ldrb	r0, [sp, #71]	@ zero_extendqisi2
	str	r0, [sp, #16]
	ldrb	r0, [sp, #70]	@ zero_extendqisi2
	str	r0, [sp, #12]
	ldrb	r0, [sp, #69]	@ zero_extendqisi2
	str	r0, [sp, #8]
	ldrb	r0, [sp, #68]	@ zero_extendqisi2
	str	r0, [sp, #4]
	ldrb	r0, [sp, #67]	@ zero_extendqisi2
	str	r0, [sp]
	ldr	r0, .L1356+36
	bl	NAND_Print
	ldrh	r3, [fp]
	movw	r2, #4095
	strh	r6, [fp, #2]	@ movhi
	bfi	r3, r2, #0, #12
	strh	r3, [fp]	@ movhi
	ldrh	r3, [r5, #4]
	adds	r3, r3, #1
	strh	r3, [r5, #4]	@ movhi
.L1329:
	subs	r6, r6, #1
	uxth	r6, r6
	cmp	r6, #0
	beq	.L1330
.L1325:
	add	r10, r10, #1
	b	.L1323
.L1328:
	ldr	r2, [r4, #288]
	mov	r1, r3
	mov	r0, r4
	bl	nand_write_logic_page_no_gc
	cmp	r0, #0
	beq	.L1329
	ldr	r0, .L1356+40
	bl	NAND_Print
	movs	r0, #1
	b	.L1314
.L1327:
	ldrh	r3, [r5, #4]
	mov	r8, #1
	movw	r6, #65535
	adds	r3, r3, #1
	strh	r3, [r5, #4]	@ movhi
	b	.L1329
.L1332:
	mov	r1, r5
	mov	r0, r4
	bl	put_phy_block_to_invalid_page_list
	mov	r0, r4
	bl	adjust_invaild_list
	b	.L1333
.L1357:
	.align	2
.L1356:
	.word	.LC225
	.word	.LC226
	.word	.LC227
	.word	.LC228
	.word	.LC229
	.word	.LC231
	.word	.LC235
	.word	.LC230
	.word	.LC232
	.word	.LC233
	.word	.LC234
	.size	garbage_collect_first, .-garbage_collect_first
	.section	.text.do_prio_gc,"ax",%progbits
	.align	1
	.global	do_prio_gc
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	do_prio_gc, %function
do_prio_gc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, [r0, #564]
	push	{r3, r4, r5, r6, r7, lr}
	mov	r6, r0
	cmp	r1, #0
	beq	.L1371
	add	r4, r0, #392
	mov	r0, r4
	bl	del_from_gc_list
	ldr	r7, [r0, #4]
	mov	r5, r0
	mov	r0, r6
	mov	r1, r7
	bl	is_current_blcok
	cmp	r0, #1
	bne	.L1360
	mov	r1, r5
	mov	r0, r4
	bl	add_to_gc_list_tail
.L1372:
	movs	r4, #0
.L1358:
	mov	r0, r4
	pop	{r3, r4, r5, r6, r7, pc}
.L1360:
	cbnz	r7, .L1361
	ldr	r0, .L1375
	bl	NAND_Print_DBG
	strh	r7, [r5, #2]	@ movhi
	strh	r7, [r6, #394]	@ movhi
	str	r7, [r5, #4]
	b	.L1372
.L1361:
	mov	r0, r6
	bl	is_block_in_invalid_list
	ldrh	r2, [r5, #2]
	mov	r4, r0
	cbnz	r0, .L1362
	ldrh	r1, [r7]
	ldr	r0, .L1375+4
.L1373:
	bl	NAND_Print_DBG
	b	.L1374
.L1362:
	cmp	r2, #5
	strh	r2, [r6, #394]	@ movhi
	bne	.L1363
	movs	r4, #0
	movs	r2, #4
	mov	r0, r6
	bl	garbage_collect_first
.L1374:
	strh	r4, [r5, #2]	@ movhi
	strh	r4, [r6, #394]	@ movhi
	str	r4, [r5, #4]
	b	.L1358
.L1363:
	movw	r2, #65535
	mov	r0, r6
	bl	garbage_collect_first
	ldr	r3, [r5, #4]
	mov	r4, r0
	cbz	r0, .L1364
	ldrh	r1, [r3]
	movs	r4, #1
	ldrh	r2, [r5, #2]
	ldr	r0, .L1375+8
	bl	NAND_Print
	movs	r3, #0
	strh	r3, [r5, #2]	@ movhi
	strh	r3, [r6, #394]	@ movhi
	str	r3, [r5, #4]
	b	.L1358
.L1364:
	mov	r1, r3
	mov	r0, r6
	bl	is_block_in_free_list
	cbnz	r0, .L1365
	ldrh	r2, [r5, #2]
	ldrh	r1, [r3]
	ldr	r0, .L1375+12
	b	.L1373
.L1365:
	mov	r0, r6
	bl	out_phy_block_from_free_list_by_block
	mov	r1, r0
	cbnz	r0, .L1366
	ldr	r3, [r5, #4]
	ldrh	r2, [r5, #2]
	ldr	r0, .L1375+16
	ldrh	r1, [r3]
	b	.L1373
.L1366:
	ldrh	r2, [r0, #6]
	mov	r0, r6
	adds	r2, r2, #1
	uxth	r2, r2
	bl	erase_block
	movs	r3, #0
	strh	r3, [r5, #2]	@ movhi
	strh	r3, [r6, #394]	@ movhi
	str	r3, [r5, #4]
	b	.L1358
.L1371:
	mov	r4, r1
	b	.L1358
.L1376:
	.align	2
.L1375:
	.word	.LC236
	.word	.LC237
	.word	.LC238
	.word	.LC239
	.word	.LC240
	.size	do_prio_gc, .-do_prio_gc
	.section	.text.prio_gc_all,"ax",%progbits
	.align	1
	.global	prio_gc_all
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	prio_gc_all, %function
prio_gc_all:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, r0
	movs	r5, #10
	movs	r4, #0
.L1378:
	mov	r0, r6
	bl	do_prio_gc
	subs	r5, r5, #1
	orr	r4, r4, r0
	bne	.L1378
	mov	r0, r4
	pop	{r4, r5, r6, pc}
	.size	prio_gc_all, .-prio_gc_all
	.section	.text.done_static_wear_leveling,"ax",%progbits
	.align	1
	.global	done_static_wear_leveling
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	done_static_wear_leveling, %function
done_static_wear_leveling:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	ldr	r5, [r0, #580]
	cbz	r5, .L1386
	mov	r1, r5
	bl	is_current_blcok
	cmp	r0, #1
	bne	.L1382
	movs	r3, #0
	str	r3, [r4, #580]
.L1386:
	movs	r5, #2
	b	.L1380
.L1382:
	mov	r0, r4
	bl	is_block_in_invalid_list
	ldrh	r1, [r5]
	mov	r6, r0
	cbnz	r0, .L1383
	ldr	r0, .L1387
	bl	NAND_Print_DBG
	str	r6, [r4, #580]
	b	.L1386
.L1383:
	ldrh	r2, [r5, #6]
	movs	r5, #1
	ldr	r0, .L1387+4
	bl	NAND_Print_DBG
	ldr	r2, [r4, #1968]
	mov	r0, r4
	strh	r5, [r4, #578]	@ movhi
	ldr	r3, [r2, #128]
	add	r3, r3, r5
	str	r3, [r2, #128]
	bl	fill_no_use_data_to_current_block
	movw	r2, #65535
	ldr	r1, [r4, #580]
	mov	r0, r4
	bl	garbage_collect_first
	ldr	r2, [r4, #580]
	mov	r3, r0
	cbz	r0, .L1384
	ldrh	r1, [r2]
	ldr	r0, .L1387+8
	bl	NAND_Print
	movs	r3, #0
	str	r3, [r4, #580]
.L1380:
	mov	r0, r5
	pop	{r4, r5, r6, pc}
.L1384:
	strh	r0, [r4, #578]	@ movhi
	mov	r1, r2
	mov	r0, r4
	bl	is_block_in_free_list
	mov	r5, r0
	cbnz	r0, .L1385
	ldrh	r1, [r2]
	ldr	r0, .L1387+12
	bl	NAND_Print
	str	r5, [r4, #580]
	b	.L1380
.L1385:
	str	r3, [r4, #580]
	mov	r5, r3
	b	.L1380
.L1388:
	.align	2
.L1387:
	.word	.LC241
	.word	.LC242
	.word	.LC243
	.word	.LC244
	.size	done_static_wear_leveling, .-done_static_wear_leveling
	.section	.text.do_static_wear_leveling,"ax",%progbits
	.align	1
	.global	do_static_wear_leveling
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	do_static_wear_leveling, %function
do_static_wear_leveling:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #1972]
	push	{r4, lr}
	mov	r4, r0
	ldrh	r3, [r3, #6]
	cbnz	r3, .L1390
.L1392:
	movs	r0, #0
.L1389:
	pop	{r4, pc}
.L1390:
	ldrh	r3, [r0, #384]
	cbz	r3, .L1393
	bl	check_static_wear_leveling
	cmp	r0, #0
	bne	.L1392
	mov	r0, r4
	pop	{r4, lr}
	b	done_static_wear_leveling
.L1393:
	movs	r0, #1
	b	.L1389
	.size	do_static_wear_leveling, .-do_static_wear_leveling
	.section	.text.gc_one,"ax",%progbits
	.align	1
	.global	gc_one
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	gc_one, %function
gc_one:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #200]
	push	{r4, lr}
	cbnz	r3, .L1395
.L1397:
	movs	r4, #8
.L1394:
	mov	r0, r4
	pop	{r4, pc}
.L1395:
	ldrh	r3, [r3, #4]
	cmp	r3, r1
	bls	.L1397
	movw	r2, #65535
	movs	r1, #0
	bl	garbage_collect_first
	cmp	r0, #8
	mov	r4, r0
	beq	.L1397
	cbnz	r0, .L1398
	ldr	r0, .L1402
	bl	NAND_Print_DBG
	b	.L1394
.L1398:
	ldr	r0, .L1402+4
	movs	r4, #1
	bl	NAND_Print
	b	.L1394
.L1403:
	.align	2
.L1402:
	.word	.LC245
	.word	.LC246
	.size	gc_one, .-gc_one
	.section	.text.gc_all_cnt,"ax",%progbits
	.align	1
	.global	gc_all_cnt
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	gc_all_cnt, %function
gc_all_cnt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r0
	mov	r6, r1
	mov	r4, r2
.L1405:
	cbz	r4, .L1409
	mov	r1, r6
	mov	r0, r5
	bl	gc_one
	cmp	r0, #8
	add	r4, r4, #-1
	bne	.L1405
.L1409:
	movs	r0, #0
	pop	{r4, r5, r6, pc}
	.size	gc_all_cnt, .-gc_all_cnt
	.section	.text.gc_all_base_on_free_blks,"ax",%progbits
	.align	1
	.global	gc_all_base_on_free_blks
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	gc_all_base_on_free_blks, %function
gc_all_base_on_free_blks:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrh	r3, [r0, #22]
	ldrh	r1, [r0, #380]
	push	{r4, r5, r6, lr}
	mov	r5, r0
	cmp	r3, r1
	bcc	.L1410
	ldrh	r2, [r0, #382]
	add	r2, r2, r2, lsl #1
	cmp	r2, r3
	bcc	.L1410
	ldr	r6, .L1415
	ldrb	r0, [r6, #10]	@ zero_extendqisi2
	ldrh	r4, [r6, #8]
	muls	r4, r0, r4
	ldr	r0, [r6, #4]
	muls	r0, r4, r0
	cmp	r0, #264192
	bcs	.L1410
	ldr	r0, [r5, #4]
	subs	r3, r3, r1
	subs	r1, r2, r1
	ldrh	r4, [r0, #20]
	lsrs	r4, r4, #1
	subs	r0, r4, #3
	muls	r0, r3, r0
	bl	__aeabi_uidiv
	adds	r1, r4, r0
	movs	r2, #3
	mov	r0, r5
	uxth	r1, r1
	pop	{r4, r5, r6, lr}
	b	gc_all_cnt
.L1410:
	movs	r0, #0
	pop	{r4, r5, r6, pc}
.L1416:
	.align	2
.L1415:
	.word	.LANCHOR7
	.size	gc_all_base_on_free_blks, .-gc_all_base_on_free_blks
	.section	.text.gc_all,"ax",%progbits
	.align	1
	.global	gc_all
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	gc_all, %function
gc_all:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	mov	r5, r1
.L1418:
	mov	r1, r5
	mov	r0, r4
	bl	gc_one
	cmp	r0, #0
	beq	.L1418
	movs	r0, #0
	pop	{r3, r4, r5, pc}
	.size	gc_all, .-gc_all
	.section	.text.gc_all_enhance,"ax",%progbits
	.align	1
	.global	gc_all_enhance
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	gc_all_enhance, %function
gc_all_enhance:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r1, [r0, #22]
	ldrh	r2, [r0, #380]
	push	{r4}
	cmp	r2, r1
	bhi	.L1421
	ldrh	r2, [r0, #382]
	add	r2, r2, r2, lsl #1
	cmp	r2, r1
	bcc	.L1421
	ldr	r4, .L1426
	ldrb	r2, [r4, #10]	@ zero_extendqisi2
	ldrh	r1, [r4, #8]
	muls	r1, r2, r1
	ldr	r2, [r4, #4]
	muls	r2, r1, r2
	cmp	r2, #264192
	bcs	.L1421
	ldr	r3, [r0, #4]
	pop	{r4}
	ldrh	r1, [r3, #20]
	lsrs	r1, r1, #1
	b	gc_all
.L1421:
	movs	r0, #0
	pop	{r4}
	bx	lr
.L1427:
	.align	2
.L1426:
	.word	.LANCHOR7
	.size	gc_all_enhance, .-gc_all_enhance
	.section	.text.gc_win_block,"ax",%progbits
	.align	1
	.global	gc_win_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	gc_win_block, %function
gc_win_block:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r7, r0
	ldr	r3, [r0, #4]
	movs	r5, #0
	ldrh	r6, [r3, #20]
	muls	r6, r1, r6
.L1429:
	cmp	r5, r6
	blt	.L1431
	movs	r4, #0
	b	.L1428
.L1431:
	ldr	r4, [r7, #200]
	cbz	r4, .L1428
	ldrh	r3, [r4, #4]
	movs	r1, #1
	mov	r0, r7
	add	r5, r5, r3
	subs	r5, r5, #1
	bl	gc_one
	mov	r4, r0
	cmp	r0, #0
	beq	.L1429
	cmp	r0, #1
	bne	.L1428
	ldr	r0, .L1435
	bl	NAND_Print_DBG
.L1428:
	mov	r0, r4
	pop	{r3, r4, r5, r6, r7, pc}
.L1436:
	.align	2
.L1435:
	.word	.LC247
	.size	gc_win_block, .-gc_win_block
	.section	.text.power_on_gc,"ax",%progbits
	.align	1
	.global	power_on_gc
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	power_on_gc, %function
power_on_gc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, lr}
	mov	r4, r0
	ldrh	r6, [r0, #22]
	sub	sp, sp, #20
	ldrh	r7, [r0, #380]
	ldr	r3, [r0, #4]
	cmp	r6, r7
	ldrh	r5, [r3, #20]
	bcc	.L1438
	ldrb	r8, [r3, #8]	@ zero_extendqisi2
	ldrh	r10, [r0, #382]
	ldr	r0, [r0, #32]
	mov	r1, r8
	bl	__aeabi_uidiv
	mov	r1, r5
	bl	__aeabi_uidiv
	mov	r1, r8
	str	r0, [sp, #8]
	ldr	r0, [r4, #24]
	bl	__aeabi_uidiv
	mov	r1, r5
	bl	__aeabi_uidiv
	ldrh	r3, [r4, #18]
	mov	r2, r7
	str	r0, [sp, #4]
	mov	r1, r6
	ldr	r0, .L1448
	str	r3, [sp]
	mov	r3, r10
	bl	NAND_Print_DBG
.L1439:
	movs	r0, #0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, pc}
.L1438:
	subs	r5, r5, #10
	movs	r7, #0
	uxth	r5, r5
.L1440:
	ldrh	r2, [r4, #22]
	uxth	r6, r7
	ldrh	r3, [r4, #380]
	cmp	r2, r3
	bcs	.L1443
	mov	r1, r5
	mov	r0, r4
	bl	gc_one
	cmp	r0, #8
	add	r7, r7, #1
	bne	.L1440
.L1443:
	ldr	r3, [r4, #4]
	ldr	r7, .L1448+4
	ldrh	r5, [r3, #20]
	lsrs	r5, r5, #3
.L1441:
	ldrh	r1, [r4, #22]
	cmp	r1, #4
	bhi	.L1446
	mov	r0, r7
	bl	NAND_Print_DBG
	mov	r1, r5
	mov	r0, r4
	bl	gc_one
	cmp	r0, #8
	bne	.L1444
.L1446:
	mov	r1, r6
	ldr	r0, .L1448+8
	bl	NAND_Print_DBG
	b	.L1439
.L1444:
	adds	r6, r6, #1
	uxth	r6, r6
	b	.L1441
.L1449:
	.align	2
.L1448:
	.word	.LC248
	.word	.LC249
	.word	.LC250
	.size	power_on_gc, .-power_on_gc
	.section	.text.all_time_gc,"ax",%progbits
	.align	1
	.global	all_time_gc
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	all_time_gc, %function
all_time_gc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrh	r1, [r0, #22]
	ldrh	r2, [r0, #382]
	push	{r3, lr}
	cmp	r1, r2
	bcs	.L1451
	ldrh	r2, [r0, #384]
	cbz	r2, .L1451
	ldr	r3, [r0, #4]
	ldrh	r1, [r3, #20]
	subs	r1, r1, #3
	uxth	r1, r1
	bl	gc_one
.L1451:
	movs	r0, #0
	pop	{r3, pc}
	.size	all_time_gc, .-all_time_gc
	.section	.text.shutdown_on_gc,"ax",%progbits
	.align	1
	.global	shutdown_on_gc
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	shutdown_on_gc, %function
shutdown_on_gc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrh	r2, [r0, #382]
	push	{r4, r5, lr}
	sub	sp, sp, #20
	ldrh	r3, [r0, #384]
	mov	r4, r0
	str	r2, [sp, #8]
	ldrh	r2, [r0, #380]
	ldr	r5, .L1463
	ldr	r1, .L1463+4
	str	r2, [sp, #4]
	ldrh	r2, [r0, #22]
	str	r2, [sp]
	ldr	r2, [r0, #200]
	ldr	r0, .L1463+8
	bl	NAND_Print_DBG
.L1456:
	ldrh	r1, [r4, #22]
	ldrh	r3, [r4, #382]
.L1459:
	cmp	r1, r3
	bhi	.L1458
	ldr	r2, [r4, #200]
	cbnz	r2, .L1457
	ldrh	r2, [r4, #380]
	ldr	r0, .L1463+12
	bl	NAND_Print
.L1458:
	movs	r0, #0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, pc}
.L1457:
	ldrh	r2, [r4, #384]
	cmp	r2, #0
	beq	.L1459
	movs	r1, #0
	mov	r0, r4
	bl	gc_one
	ldrh	r3, [r4, #382]
	mov	r0, r5
	ldrh	r2, [r4, #380]
	ldrh	r1, [r4, #22]
	bl	NAND_Print_DBG
	b	.L1456
.L1464:
	.align	2
.L1463:
	.word	.LC253
	.word	.LANCHOR8
	.word	.LC251
	.word	.LC252
	.size	shutdown_on_gc, .-shutdown_on_gc
	.section	.text.garbage_collect,"ax",%progbits
	.align	1
	.global	garbage_collect
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	garbage_collect, %function
garbage_collect:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrh	r3, [r0, #380]
	ldrh	r1, [r0, #22]
	push	{r4, lr}
	mov	r4, r0
	cmp	r3, r1
	itt	cs
	movcs	r3, #0
	strhcs	r3, [r0, #384]	@ movhi
	ldrh	r0, [r0, #384]
	cbz	r0, .L1467
.L1484:
	movs	r0, #0
	b	.L1465
.L1467:
	ldrh	r3, [r4, #382]
	cmp	r3, r1
	bls	.L1469
	ldrh	r3, [r4, #386]
	cbnz	r3, .L1471
	ldr	r3, [r4, #200]
	cbnz	r3, .L1472
	ldr	r0, .L1486
	bl	NAND_Print
.L1485:
	movs	r0, #1
.L1465:
	pop	{r4, pc}
.L1472:
	ldrh	r2, [r3, #4]
	ldr	r3, [r4, #4]
	ldrh	r3, [r3, #20]
	cmp	r2, r3, lsr #1
	bcc	.L1473
	movs	r3, #4
.L1483:
	strh	r3, [r4, #388]	@ movhi
	ldr	r3, [r4, #1972]
	ldrh	r2, [r4, #22]
	ldrh	r3, [r3, #16]
	cmp	r2, r3
	itt	ls
	movwls	r3, #65535
	strhls	r3, [r4, #388]	@ movhi
.L1471:
	ldrh	r2, [r4, #388]
	movw	r3, #65535
	cmp	r2, r3
	beq	.L1478
	movs	r1, #0
	mov	r0, r4
	bl	garbage_collect_first
	cmp	r0, #0
	beq	.L1484
	ldrh	r1, [r4, #22]
	ldr	r0, .L1486+4
	bl	NAND_Print
	b	.L1485
.L1473:
	cmp	r2, r3, lsr #2
	bcc	.L1475
	movs	r3, #8
	b	.L1483
.L1475:
	cmp	r2, r3, lsr #3
	bcc	.L1476
	movs	r3, #16
	b	.L1483
.L1476:
	ldr	r0, .L1486+8
	bl	NAND_Print_DBG
	movw	r3, #65535
	b	.L1483
.L1478:
	movs	r1, #1
	mov	r0, r4
	bl	gc_win_block
	b	.L1484
.L1469:
	movs	r3, #1
	strh	r0, [r4, #388]	@ movhi
	str	r3, [r4, #384]
	b	.L1465
.L1487:
	.align	2
.L1486:
	.word	.LC254
	.word	.LC256
	.word	.LC255
	.size	garbage_collect, .-garbage_collect
	.section	.text._nftl_nand_write_logic_page,"ax",%progbits
	.align	1
	.global	_nftl_nand_write_logic_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nftl_nand_write_logic_page, %function
_nftl_nand_write_logic_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r0
	mov	r6, r1
	bl	nand_write_logic_page_no_gc
	mov	r4, r0
	cbz	r0, .L1489
	movs	r4, #1
	mov	r1, r6
	ldr	r0, .L1491
	bl	NAND_Print
.L1488:
	mov	r0, r4
	pop	{r4, r5, r6, pc}
.L1489:
	mov	r0, r5
	bl	garbage_collect
	mov	r0, r5
	bl	all_time_gc
	mov	r0, r5
	bl	do_prio_gc
	b	.L1488
.L1492:
	.align	2
.L1491:
	.word	.LC257
	.size	_nftl_nand_write_logic_page, .-_nftl_nand_write_logic_page
	.section	.text._nftl_nand_read_logic_page,"ax",%progbits
	.align	1
	.global	_nftl_nand_read_logic_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nftl_nand_read_logic_page, %function
_nftl_nand_read_logic_page:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #36
	mov	r4, r0
	mov	r7, r1
	mov	r6, r2
	bl	get_logic_page_map
	mov	r5, r0
	cbnz	r0, .L1494
	movs	r6, #1
	ldr	r0, .L1498
	bl	NAND_Print_DBG
.L1493:
	mov	r0, r6
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L1494:
	ldrh	r2, [r0, #2]
	movw	r1, #65535
	ldr	r3, [r4, #4]
	cmp	r2, r1
	bne	.L1496
	mov	r0, r6
	ldrh	r2, [r3, #26]
	movs	r1, #255
	movs	r6, #0
	bl	NAND_Memset
	b	.L1493
.L1496:
	ldrb	r1, [r0, #1]	@ zero_extendqisi2
	ldr	r0, [r4, #364]
	bfi	r1, r0, #4, #1
	mov	r0, r4
	strb	r1, [r5, #1]
	ldrh	r1, [r3, #28]
	ldrh	r3, [r5]
	str	r6, [sp, #24]
	strh	r1, [sp, #20]	@ movhi
	add	r1, sp, #16
	ubfx	r3, r3, #0, #12
	strh	r2, [sp, #18]	@ movhi
	strh	r3, [sp, #16]	@ movhi
	str	sp, [sp, #28]
	ldr	r3, [r4, #1980]
	blx	r3
	adds	r3, r0, #2
	mov	r6, r0
	bne	.L1497
	ldr	r3, [r4, #4]
	movs	r0, #36
	ldrh	r1, [r5, #2]
	movs	r2, #1
	ldr	r3, [r3, #32]
	mla	r1, r0, r1, r3
	mov	r0, r4
	bl	add_prio_gc
	mov	r1, r7
	ldr	r0, .L1498+4
	bl	NAND_Print
.L1497:
	mov	r0, r4
	bl	do_prio_gc
	b	.L1493
.L1499:
	.align	2
.L1498:
	.word	.LC202
	.word	.LC258
	.size	_nftl_nand_read_logic_page, .-_nftl_nand_read_logic_page
	.section	.text.set_physic_op_par,"ax",%progbits
	.align	1
	.global	set_physic_op_par
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	set_physic_op_par, %function
set_physic_op_par:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	strh	r3, [r0, #4]	@ movhi
	ldr	r3, [sp]
	strh	r2, [r0]	@ movhi
	strh	r1, [r0, #2]	@ movhi
	str	r3, [r0, #8]
	ldr	r3, [sp, #4]
	str	r3, [r0, #12]
	bx	lr
	.size	set_physic_op_par, .-set_physic_op_par
	.section	.text.nftl_malloc,"ax",%progbits
	.align	1
	.global	nftl_malloc
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_malloc, %function
nftl_malloc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #1572864
	push	{r4, lr}
	mov	r4, r0
	bls	.L1502
	mov	r1, r0
	ldr	r0, .L1503
	bl	NAND_Print
.L1502:
	mov	r0, r4
	pop	{r4, lr}
	b	NAND_Malloc
.L1504:
	.align	2
.L1503:
	.word	.LC259
	.size	nftl_malloc, .-nftl_malloc
	.section	.text.nftl_cache_init,"ax",%progbits
	.align	1
	.global	nftl_cache_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_cache_init, %function
nftl_cache_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #1972]
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	mov	r6, r0
	movs	r7, #255
	mov	r8, #-1
	movs	r5, #0
	ldrh	r3, [r3, #22]
	strh	r5, [r0, #586]	@ movhi
	strh	r5, [r0, #588]	@ movhi
	strh	r3, [r0, #584]	@ movhi
	strh	r5, [r0, #590]	@ movhi
	str	r5, [r0, #1568]
	str	r5, [r0, #1572]
	str	r5, [r0, #1576]
	str	r5, [r0, #1580]
	str	r5, [r0, #1600]
	str	r5, [r0, #1604]
	str	r5, [r0, #1608]
	str	r5, [r0, #1612]
.L1506:
	ldr	r3, [r4, #4]
	ldrh	r0, [r3, #26]
	ldrh	r3, [r4, #584]
	cmp	r3, r5
	bhi	.L1509
	bl	nftl_malloc
	str	r0, [r4, #1616]
	cbnz	r0, .L1510
	ldr	r1, .L1512
	ldr	r0, .L1512+4
	b	.L1511
.L1509:
	movs	r3, #0
	strh	r5, [r6, #592]	@ movhi
	strh	r7, [r6, #594]	@ movhi
	str	r8, [r6, #600]
	strd	r3, r3, [r6, #608]
	strd	r3, r3, [r6, #616]
	adds	r6, r6, #32
	strh	r3, [r6, #564]	@ movhi
	strh	r3, [r6, #566]	@ movhi
	bl	nftl_malloc
	str	r0, [r6, #572]
	cbnz	r0, .L1507
	ldr	r1, .L1512
	ldr	r0, .L1512+8
.L1511:
	bl	NAND_Print
	movs	r0, #1
.L1505:
	pop	{r4, r5, r6, r7, r8, pc}
.L1507:
	adds	r5, r5, #1
	b	.L1506
.L1510:
	movs	r0, #0
	b	.L1505
.L1513:
	.align	2
.L1512:
	.word	.LANCHOR9
	.word	.LC261
	.word	.LC260
	.size	nftl_cache_init, .-nftl_cache_init
	.section	.text.malloc_logic_page_map,"ax",%progbits
	.align	1
	.global	malloc_logic_page_map
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	malloc_logic_page_map, %function
malloc_logic_page_map:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	add	r7, r0, #52
	mov	r4, r1
	mov	r6, r0
	add	r2, r0, #152
	mov	r3, r7
	movs	r1, #0
.L1515:
	str	r1, [r3], #4
	cmp	r3, r2
	bne	.L1515
	ldr	r8, .L1527+12
	movs	r5, #0
.L1519:
	cmp	r4, r8
	bls	.L1516
	mov	r0, #1048576
	bl	NAND_Malloc
	str	r0, [r7], #4
	cbnz	r0, .L1517
	ldr	r0, .L1527
	mov	r1, r5
.L1526:
	bl	NAND_Print
	mvn	r0, #1
.L1514:
	pop	{r4, r5, r6, r7, r8, pc}
.L1517:
	mov	r2, #1048576
	movs	r1, #255
	adds	r5, r5, #1
	sub	r4, r4, #262144
	bl	NAND_Memset
	cmp	r5, #25
	bne	.L1519
	cbz	r4, .L1522
	mov	r1, r4
	ldr	r0, .L1527+4
	b	.L1526
.L1516:
	lsls	r4, r4, #2
	mov	r0, r4
	bl	nftl_malloc
	add	r3, r6, r5, lsl #2
	str	r0, [r3, #52]
	cbnz	r0, .L1521
	mov	r1, r5
	ldr	r0, .L1527+8
	b	.L1526
.L1521:
	mov	r2, r4
	movs	r1, #255
	bl	NAND_Memset
	movs	r0, #0
	b	.L1514
.L1522:
	mov	r0, r4
	b	.L1514
.L1528:
	.align	2
.L1527:
	.word	.LC262
	.word	.LC264
	.word	.LC263
	.word	262143
	.size	malloc_logic_page_map, .-malloc_logic_page_map
	.section	.text.zone_param_init,"ax",%progbits
	.align	1
	.global	zone_param_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	zone_param_init, %function
zone_param_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r7, r3
	ldr	r3, [r0, #4]
	mov	r4, r0
	mov	r5, r1
	mov	r6, r2
	ldrh	r0, [r3, #26]
	bl	nftl_malloc
	str	r0, [r4, #284]
	cbnz	r0, .L1530
	ldr	r1, .L1541
	ldr	r0, .L1541+4
.L1539:
	bl	NAND_Print
	b	.L1540
.L1530:
	ldr	r3, [r4, #4]
	ldrh	r0, [r3, #26]
	bl	nftl_malloc
	str	r0, [r4, #288]
	cbnz	r0, .L1532
	ldr	r1, .L1541
	ldr	r0, .L1541+8
	b	.L1539
.L1532:
	ldr	r2, [r4, #4]
	movs	r1, #36
	strh	r5, [r4, #36]	@ movhi
	mov	r0, r6
	str	r6, [r4, #24]
	ldr	r3, [r2, #32]
	str	r7, [r4, #32]
	mla	r5, r1, r5, r3
	movs	r3, #0
	strh	r3, [r4, #18]	@ movhi
	str	r5, [r4, #40]
	strh	r3, [r4, #20]	@ movhi
	strh	r3, [r4, #22]	@ movhi
	str	r3, [r4, #44]
	ldrb	r1, [r2, #8]	@ zero_extendqisi2
	bl	__aeabi_uidiv
	mov	r1, r0
	mov	r0, r4
	bl	malloc_logic_page_map
	mov	r5, r0
	cbz	r0, .L1533
	ldr	r0, .L1541+12
	bl	NAND_Print
.L1540:
	mvn	r5, #1
.L1529:
	mov	r0, r5
	pop	{r3, r4, r5, r6, r7, pc}
.L1533:
	ldr	r3, [r4, #4]
	ldrh	r0, [r3, #20]
	mov	r3, #320
	str	r3, [r4, #316]
	lsls	r0, r0, #2
	str	r0, [r4, #308]
	add	r0, r0, r3
	str	r0, [r4, #300]
	bl	nftl_malloc
	mov	r3, r0
	str	r0, [r4, #296]
	cbnz	r0, .L1534
	ldr	r1, .L1541
	ldr	r0, .L1541+16
	b	.L1539
.L1534:
	ldr	r2, [r4, #308]
	movs	r1, #255
	str	r0, [r4, #304]
	add	r3, r3, r2
	ldr	r2, [r4, #300]
	str	r3, [r4, #312]
	str	r3, [r4, #1968]
	bl	NAND_Memset
	ldr	r3, [r4, #308]
	ldr	r0, [r4, #300]
	str	r3, [r4, #340]
	str	r0, [r4, #332]
	bl	nftl_malloc
	mov	r3, r0
	str	r0, [r4, #328]
	cbnz	r0, .L1535
	ldr	r1, .L1541
	ldr	r0, .L1541+20
	b	.L1539
.L1535:
	ldr	r2, [r4, #340]
	movs	r1, #255
	str	r0, [r4, #336]
	add	r3, r3, r2
	ldr	r2, [r4, #332]
	str	r3, [r4, #344]
	bl	NAND_Memset
	ldr	r3, [r4, #308]
	ldr	r0, [r4, #300]
	str	r3, [r4, #272]
	ldr	r3, [r4, #316]
	str	r0, [r4, #264]
	str	r3, [r4, #280]
	bl	nftl_malloc
	str	r0, [r4, #260]
	cbnz	r0, .L1536
	ldr	r1, .L1541
	ldr	r0, .L1541+24
	b	.L1539
.L1536:
	ldr	r3, [r4, #272]
	mov	r1, r5
	str	r0, [r4, #268]
	str	r5, [r4, #356]
	add	r0, r0, r3
	ldr	r3, [r4, #4]
	str	r0, [r4, #276]
	str	r5, [r4, #376]
	ldrh	r2, [r3, #16]
	strd	r5, r5, [r4, #360]
	strd	r5, r5, [r4, #368]
	strd	r5, r5, [r4, #576]
	lsrs	r3, r2, #1
	str	r5, [r4, #292]
	str	r5, [r4, #324]
	strh	r3, [r4, #572]	@ movhi
	ldr	r3, .L1541+28
	strd	r5, r5, [r4, #172]
	strd	r5, r5, [r4, #164]
	strd	r5, r5, [r4, #180]
	umull	r2, r3, r2, r3
	mov	r2, r4
	strd	r5, r5, [r4, #208]
	strd	r5, r5, [r4, #200]
	strd	r5, r5, [r4, #216]
	lsrs	r3, r3, #2
	strh	r3, [r4, #574]	@ movhi
	movw	r3, #65535
	strh	r3, [r4, #320]	@ movhi
	strh	r3, [r4, #352]	@ movhi
	mov	r3, r5
	strd	r5, r5, [r4, #244]
	strd	r5, r5, [r4, #236]
	strd	r5, r5, [r4, #252]
	strh	r5, [r4, #392]	@ movhi
.L1537:
	strh	r1, [r2, #396]	@ movhi
	adds	r1, r1, #1
	cmp	r1, #10
	strh	r3, [r2, #398]	@ movhi
	strd	r3, r3, [r2, #400]
	add	r2, r2, #16
	str	r3, [r2, #392]
	bne	.L1537
	movs	r2, #255
	strh	r3, [r4, #394]	@ movhi
	strd	r2, r3, [r4, #556]
	strd	r3, r3, [r4, #564]
	b	.L1529
.L1542:
	.align	2
.L1541:
	.word	.LANCHOR10
	.word	.LC265
	.word	.LC266
	.word	.LC267
	.word	.LC268
	.word	.LC269
	.word	.LC270
	.word	-1431655765
	.size	zone_param_init, .-zone_param_init
	.section	.text.nftl_free,"ax",%progbits
	.align	1
	.global	nftl_free
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_free, %function
nftl_free:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r1, #0
	b	NAND_Free
	.size	nftl_free, .-nftl_free
	.section	.text.nftl_cache_exit,"ax",%progbits
	.align	1
	.global	nftl_cache_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_cache_exit, %function
nftl_cache_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r0
	movs	r4, #0
.L1545:
	ldrh	r3, [r5, #584]
	cmp	r3, r4
	bgt	.L1546
	ldr	r0, [r5, #1616]
	bl	nftl_free
	movs	r0, #0
	pop	{r3, r4, r5, pc}
.L1546:
	add	r3, r5, r4, lsl #5
	adds	r4, r4, #1
	ldr	r0, [r3, #604]
	bl	nftl_free
	b	.L1545
	.size	nftl_cache_exit, .-nftl_cache_exit
	.section	.text.nand_clean_zone_table,"ax",%progbits
	.align	1
	.global	nand_clean_zone_table
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_clean_zone_table, %function
nand_clean_zone_table:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r1, #1000
	mov	r4, r0
	bl	__nand_flush_write_cache
	mov	r0, r4
	bl	clean_block_list
	mov	r0, r4
	bl	nand_clean_zone_table2
	mov	r0, r4
	bl	nftl_cache_exit
	movs	r0, #0
	pop	{r4, pc}
	.size	nand_clean_zone_table, .-nand_clean_zone_table
	.section	.text.nftl_sector_cache_exit,"ax",%progbits
	.align	1
	.global	nftl_sector_cache_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_sector_cache_exit, %function
nftl_sector_cache_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	ldr	r0, [r0, #1624]
	bl	nftl_free
	movs	r0, #0
	pop	{r3, pc}
	.size	nftl_sector_cache_exit, .-nftl_sector_cache_exit
	.section	.text.init_nrc,"ax",%progbits
	.align	1
	.global	init_nrc
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	init_nrc, %function
init_nrc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r5, r0
	movs	r0, #16
	mov	r6, r1
	bl	NAND_Malloc
	mov	r4, r0
	cbnz	r0, .L1550
	movw	r2, #1399
	ldr	r1, .L1570
	ldr	r0, .L1570+4
	bl	NAND_Print
.L1569:
	mov	r0, #-1
	b	.L1549
.L1550:
	movs	r2, #16
	movs	r1, #0
	bl	NAND_Memset
	ldr	r3, [r5, #4]
	ldrh	r5, [r3, #20]
	ldrh	r0, [r3, #26]
	adds	r0, r0, #64
	muls	r0, r5, r0
	bl	nftl_malloc
	str	r0, [r4, #8]
	cbnz	r0, .L1552
	ldr	r1, .L1570
	mov	r2, #1408
	ldr	r0, .L1570+8
.L1568:
.L1553:
	bl	NAND_Print
	ldr	r0, [r4, #8]
	cbz	r0, .L1556
	bl	nftl_free
.L1556:
	ldr	r0, [r4, #12]
	cbz	r0, .L1557
	bl	nftl_free
.L1557:
	ldr	r0, [r4, #4]
	cbz	r0, .L1558
	bl	nftl_free
.L1558:
	mov	r0, r4
	bl	nftl_free
	movs	r3, #0
	str	r3, [r6]
	b	.L1569
.L1552:
	lsls	r7, r5, #2
	mov	r0, r7
	bl	nftl_malloc
	str	r0, [r4, #12]
	cbnz	r0, .L1554
	movw	r2, #1413
	ldr	r1, .L1570
	ldr	r0, .L1570+12
	b	.L1568
.L1554:
	mov	r2, r7
	movs	r1, #255
	bl	NAND_Memset
	mov	r0, r5
	bl	nftl_malloc
	str	r0, [r4, #4]
	cbnz	r0, .L1555
	movw	r2, #1419
	ldr	r1, .L1570
	ldr	r0, .L1570+16
	b	.L1568
.L1555:
	mov	r2, r5
	movs	r1, #0
	bl	NAND_Memset
	movs	r0, #0
	str	r4, [r6]
.L1549:
	pop	{r3, r4, r5, r6, r7, pc}
.L1571:
	.align	2
.L1570:
	.word	.LANCHOR11
	.word	.LC271
	.word	.LC272
	.word	.LC273
	.word	.LC274
	.size	init_nrc, .-init_nrc
	.section	.text.free_nrc,"ax",%progbits
	.align	1
	.global	free_nrc
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	free_nrc, %function
free_nrc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	cbz	r0, .L1573
	ldr	r0, [r0, #8]
	bl	nftl_free
	ldr	r0, [r4, #4]
	bl	nftl_free
	ldr	r0, [r4, #12]
	bl	nftl_free
	mov	r0, r4
	bl	nftl_free
.L1573:
	movs	r0, #0
	pop	{r4, pc}
	.size	free_nrc, .-free_nrc
	.section	.text.cross_talk_rebuild_current_block,"ax",%progbits
	.align	1
	.global	cross_talk_rebuild_current_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	cross_talk_rebuild_current_block, %function
cross_talk_rebuild_current_block:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	sub	sp, sp, #56
	mov	r6, r1
	movs	r7, #0
	add	r1, sp, #56
	mov	r5, r0
	str	r7, [r1, #-20]!
	mov	r4, r2
	bl	init_nrc
	cbz	r0, .L1578
	ldr	r0, [sp, #36]
	mov	r4, r7
	bl	free_nrc
	ldr	r0, .L1598
	bl	NAND_Print
.L1579:
	mov	r0, r4
	add	sp, sp, #56
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L1578:
	ldr	r3, [sp, #36]
	add	r2, sp, #28
	mov	r1, r6
	mov	r0, r5
	bl	get_used_page_num
	mov	r10, r0
	cbnz	r4, .L1580
	ldr	r3, [r6, #8]
	mov	r2, r0
	ldrh	r1, [r6]
	ldr	r0, .L1598+4
	bl	NAND_Print
	ldr	r0, [sp, #36]
	ldr	r3, [r0]
	cmp	r3, #0
	bne	.L1593
	bl	free_nrc
	ldr	r0, .L1598+8
	bl	NAND_Print
	ldrh	r2, [r6, #6]
	mov	r1, r6
	mov	r0, r5
	adds	r2, r2, #1
	uxth	r2, r2
	bl	erase_block
	b	.L1579
.L1580:
	ldr	r3, [sp, #36]
	add	r2, sp, #32
	mov	r1, r4
	mov	r0, r5
	bl	get_used_page_num
	ldr	r3, [r4, #8]
	mov	fp, r0
	ldrh	r1, [r6]
	mov	r2, r10
	strd	r0, r3, [sp, #4]
	ldrh	r3, [r4]
	ldr	r0, .L1598+12
	str	r3, [sp]
	ldr	r3, [r6, #8]
	bl	NAND_Print
	ldr	r0, [sp, #36]
	ldr	r3, [r0]
	cbnz	r3, .L1582
	str	r3, [sp, #20]
	bl	free_nrc
	ldr	r0, .L1598+16
	bl	NAND_Print
	ldrh	r2, [r6, #6]
	mov	r1, r6
	mov	r0, r5
	adds	r2, r2, #1
	uxth	r2, r2
	bl	erase_block
	ldrh	r2, [r4, #6]
	mov	r1, r4
	mov	r0, r5
	adds	r2, r2, #1
	uxth	r2, r2
	bl	erase_block
	ldr	r3, [sp, #20]
	mov	r4, r3
	b	.L1579
.L1582:
	ldrh	r7, [r4, #6]
	cmp	r10, fp
	ldrh	r8, [r6, #6]
	ittt	ls
	movls	r2, r7
	movls	r7, r8
	movls	r8, r2
	ldr	r2, [sp, #28]
	cbnz	r2, .L1584
	ldr	r2, [sp, #32]
	cbz	r2, .L1585
.L1584:
	adds	r7, r7, #20
	add	r8, r8, #20
.L1585:
	cmp	r10, fp
	add	r7, r7, #1
	uxth	r7, r7
	mov	r2, fp
	mov	r1, r10
	bcs	.L1586
	ldr	r0, .L1598+20
	bl	NAND_Print
	mov	r1, r6
	mov	r6, r4
	mov	r2, r7
	mov	r0, r5
	bl	erase_block
.L1581:
	ldr	r7, .L1598+24
.L1589:
	mov	r0, r5
	bl	out_phy_block_from_free_list
	mov	r4, r0
	cbnz	r0, .L1587
	ldr	r0, .L1598+28
	bl	NAND_Print
	b	.L1579
.L1586:
	ldr	r0, .L1598+32
	bl	NAND_Print
	mov	r2, r7
	mov	r1, r4
	mov	r0, r5
	bl	erase_block
	b	.L1581
.L1593:
	mov	r8, r4
	b	.L1581
.L1587:
	ldr	r2, [r6, #8]
	mov	r1, r0
	adds	r2, r2, #1
	str	r2, [r0, #8]
	mov	r0, r5
	bl	new_block_init_for_write
	cmp	r0, #0
	beq	.L1594
	mov	r0, r7
	bl	NAND_Print
	b	.L1589
.L1592:
	ldr	r3, [r0, #4]
	ldrb	r3, [r3, r10]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1590
	ldr	r2, [r5, #4]
	ldr	r0, [r0, #8]
	ldrh	r1, [r2, #26]
	ldrh	r2, [r2, #28]
	add	r3, r1, #64
	mla	r3, r10, r3, r0
	ldrh	r0, [r4]
	strh	r7, [sp, #40]	@ movhi
	strh	r2, [sp, #44]	@ movhi
	adds	r7, r7, #1
	strh	r0, [sp, #42]	@ movhi
	add	r1, r1, r3
	mov	r0, r1
	strd	r3, r1, [sp, #48]
	str	r1, [sp, #20]
	bl	get_special_data_from_oob
	ldrh	r3, [r4, #6]
	mov	r2, r0
	ldr	r1, [sp, #20]
	mov	r0, r5
	str	r3, [sp]
	ldr	r3, [r4, #8]
	bl	set_oob_special_page
	ldr	r3, [r5, #1984]
	add	r1, sp, #40
	mov	r0, r5
	blx	r3
.L1591:
	add	r10, r10, #1
.L1588:
	ldr	r0, [sp, #36]
	ldr	r2, [r0]
	cmp	r2, r10
	bhi	.L1592
	add	r2, r8, #1
	mov	r1, r6
	uxth	r2, r2
	mov	r0, r5
	bl	erase_block
	ldr	r0, [sp, #36]
	bl	free_nrc
	b	.L1579
.L1590:
	mov	r1, r10
	mov	r0, fp
	bl	NAND_Print
	b	.L1591
.L1594:
	mov	r7, r0
	mov	r10, r0
	ldr	fp, .L1598+36
	b	.L1588
.L1599:
	.align	2
.L1598:
	.word	.LC275
	.word	.LC276
	.word	.LC277
	.word	.LC278
	.word	.LC279
	.word	.LC280
	.word	.LC283
	.word	.LC282
	.word	.LC281
	.word	.LC284
	.size	cross_talk_rebuild_current_block, .-cross_talk_rebuild_current_block
	.section	.text.no_cross_talk_rebuild_current_block,"ax",%progbits
	.align	1
	.global	no_cross_talk_rebuild_current_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	no_cross_talk_rebuild_current_block, %function
no_cross_talk_rebuild_current_block:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	sub	sp, sp, #72
	mov	r6, r1
	movs	r7, #0
	add	r1, sp, #32
	mov	r5, r0
	mov	r4, r2
	strd	r7, r7, [sp, #32]
	bl	init_nrc
	cbz	r0, .L1601
	ldr	r0, .L1634
	bl	NAND_Print
	ldr	r0, [sp, #32]
	bl	free_nrc
.L1632:
	movs	r4, #0
	b	.L1602
.L1601:
	ldr	r3, [sp, #32]
	add	r2, sp, #24
	mov	r1, r6
	mov	r0, r5
	bl	get_used_page_num_no_crosstalk
	mov	r8, r0
	cbnz	r4, .L1603
	ldr	r3, [r6, #8]
	mov	r2, r0
	ldrh	r1, [r6]
	ldr	r0, .L1634+4
	bl	NAND_Print
	ldr	r7, [sp, #32]
	ldr	r3, [r7]
	cbz	r3, .L1631
	ldr	r8, .L1634+40
.L1604:
	mov	r0, r5
	bl	out_phy_block_from_free_list
	mov	r4, r0
	cbnz	r0, .L1605
.L1613:
	ldr	r0, .L1634+8
.L1633:
	bl	NAND_Print
	b	.L1632
.L1631:
	mov	r0, r7
	bl	free_nrc
	ldr	r0, .L1634+12
	bl	NAND_Print
	ldrh	r2, [r6, #6]
	mov	r1, r6
	mov	r0, r5
	adds	r2, r2, #1
	uxth	r2, r2
	bl	erase_block
.L1602:
	mov	r0, r4
	add	sp, sp, #72
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L1605:
	ldr	r2, [r6, #8]
	mov	r1, r0
	str	r2, [r0, #8]
	mov	r0, r5
	bl	new_block_init_for_write
	cmp	r0, #0
	beq	.L1606
	mov	r0, r8
	bl	NAND_Print
	b	.L1604
.L1603:
	add	r1, sp, #36
	mov	r0, r5
	bl	init_nrc
	cbz	r0, .L1607
	ldr	r0, [sp, #32]
	bl	free_nrc
	ldr	r0, [sp, #36]
	bl	free_nrc
	ldr	r0, .L1634+16
	b	.L1633
.L1607:
	ldr	r3, [sp, #36]
	add	r2, sp, #28
	mov	r1, r4
	mov	r0, r5
	bl	get_used_page_num_no_crosstalk
	ldr	r3, [r4, #8]
	mov	r10, r0
	ldrh	r1, [r6]
	mov	r2, r8
	strd	r0, r3, [sp, #4]
	ldrh	r3, [r4]
	ldr	r0, .L1634+20
	str	r3, [sp]
	ldr	r3, [r6, #8]
	bl	NAND_Print
	ldr	r7, [sp, #36]
	ldr	fp, [r7]
	cmp	fp, #0
	bne	.L1608
	ldr	r0, [sp, #32]
	bl	free_nrc
	ldr	r0, [sp, #36]
	bl	free_nrc
	ldr	r0, .L1634+24
	bl	NAND_Print
	ldrh	r2, [r6, #6]
	mov	r1, r6
	mov	r0, r5
	adds	r2, r2, #1
	uxth	r2, r2
	bl	erase_block
	ldrh	r2, [r4, #6]
	mov	r1, r4
	mov	r0, r5
	adds	r2, r2, #1
	uxth	r2, r2
	bl	erase_block
	b	.L1632
.L1608:
	cmp	r8, r10
	bcs	.L1609
	mov	r3, fp
	mov	r2, r10
	mov	r1, r8
	ldr	r0, .L1634+28
	bl	NAND_Print
	mov	r3, r6
	mov	r6, r4
	mov	r4, r3
.L1610:
	ldr	r3, [r5, #4]
	mov	r8, #0
	ldrh	r2, [r4]
	add	r1, sp, #40
	strh	r8, [sp, #40]	@ movhi
	mov	r0, r5
	ldrh	r3, [r3, #28]
	strh	r2, [sp, #42]	@ movhi
	strd	r8, r8, [sp, #48]
	strh	r3, [sp, #44]	@ movhi
	ldr	r3, [r5, #1976]
	blx	r3
	cbz	r0, .L1611
	ldrh	r1, [r4]
	ldr	r0, .L1634+32
	bl	NAND_Print
	ldr	r3, [r5, #1996]
	add	r1, sp, #40
	mov	r0, r5
	blx	r3
	movs	r3, #255
	strh	r8, [r6, #4]	@ movhi
	strh	r3, [r6, #2]	@ movhi
	ldr	r8, .L1634+40
	ldrh	r3, [r5, #20]
	adds	r3, r3, #1
	strh	r3, [r5, #20]	@ movhi
.L1612:
	mov	r0, r5
	bl	out_phy_block_from_free_list
	mov	r4, r0
	cmp	r0, #0
	beq	.L1613
	ldr	r2, [r0, #8]
	mov	r1, r0
	mov	r0, r5
	bl	new_block_init_for_write
	cbz	r0, .L1611
	mov	r0, r8
	bl	NAND_Print
	b	.L1612
.L1609:
	ldr	r7, [sp, #32]
	mov	r2, r10
	mov	r1, r8
	ldr	r0, .L1634+36
	ldr	r3, [r7]
	bl	NAND_Print
	b	.L1610
.L1611:
	ldr	r3, [r6, #8]
	str	r3, [r4, #8]
.L1606:
	ldr	fp, .L1634+44
	mov	r10, #0
	mov	r8, r10
.L1614:
	ldr	r2, [r7]
	cmp	r2, r8
	bhi	.L1617
	ldrh	r2, [r6, #6]
	mov	r1, r6
	mov	r0, r5
	adds	r2, r2, #1
	uxth	r2, r2
	bl	erase_block
	ldr	r2, [r7]
	ldr	r1, [r7, #12]
	ldr	r0, [r5, #304]
	strh	r2, [r5, #320]	@ movhi
	str	r4, [r5, #292]
	lsls	r2, r2, #2
	bl	NAND_Memcpy
	ldr	r0, [sp, #32]
	bl	free_nrc
	ldr	r0, [sp, #36]
	bl	free_nrc
	b	.L1602
.L1617:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, r8]	@ zero_extendqisi2
	cbz	r3, .L1615
	ldr	r2, [r5, #4]
	ldr	r0, [r7, #8]
	ldrh	r1, [r2, #26]
	ldrh	r2, [r2, #28]
	add	r3, r1, #64
	mla	r3, r8, r3, r0
	ldrh	r0, [r4]
	strh	r10, [sp, #56]	@ movhi
	strh	r2, [sp, #60]	@ movhi
	add	r10, r10, #1
	strh	r0, [sp, #58]	@ movhi
	add	r1, r1, r3
	mov	r0, r1
	strd	r3, r1, [sp, #64]
	str	r1, [sp, #20]
	bl	get_special_data_from_oob
	ldrh	r3, [r4, #6]
	mov	r2, r0
	ldr	r1, [sp, #20]
	mov	r0, r5
	str	r3, [sp]
	ldr	r3, [r4, #8]
	bl	set_oob_special_page
	ldr	r3, [r5, #1984]
	add	r1, sp, #56
	mov	r0, r5
	blx	r3
.L1616:
	add	r8, r8, #1
	b	.L1614
.L1615:
	mov	r1, r8
	mov	r0, fp
	bl	NAND_Print
	b	.L1616
.L1635:
	.align	2
.L1634:
	.word	.LC275
	.word	.LC285
	.word	.LC282
	.word	.LC286
	.word	.LC279
	.word	.LC287
	.word	.LC288
	.word	.LC280
	.word	.LC289
	.word	.LC281
	.word	.LC283
	.word	.LC284
	.size	no_cross_talk_rebuild_current_block, .-no_cross_talk_rebuild_current_block
	.section	.text.second_scan_all_blocks,"ax",%progbits
	.align	1
	.global	second_scan_all_blocks
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	second_scan_all_blocks, %function
second_scan_all_blocks:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L1719
	ldr	r2, .L1719+4
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r4, r0
	ldr	r3, [r3]
	sub	sp, sp, #104
	ldr	r3, [r3, #752]
	cmp	r3, r2
	beq	.L1637
	subs	r3, r3, #1
	cmp	r3, #1
	bhi	.L1672
.L1637:
	ldr	r3, [r4, #4]
	ldr	r0, [r4, #24]
	ldrb	r1, [r3, #8]	@ zero_extendqisi2
	bl	__aeabi_uidiv
	ldr	r5, [r4, #252]
	mov	r3, #-1
	str	r0, [r4, #28]
	str	r3, [sp, #64]
	mov	r10, r5
.L1639:
	cmp	r10, #0
	bne	.L1640
	cmp	r5, #0
	beq	.L1673
	ldr	r3, [r4, #1968]
	mov	r7, r10
	ldr	r2, [r5, #8]
	mov	r6, r10
	mov	r8, r10
	str	r10, [sp, #68]
	str	r2, [r3, #160]
.L1656:
	ldr	r2, [r4, #308]
	lsrs	r3, r2, #9
	ubfx	r2, r2, #0, #9
	cbz	r2, .L1643
	adds	r3, r3, #1
.L1643:
	ldr	r2, [r4, #4]
	ldrh	r0, [r5]
	ldr	r1, [r4, #284]
	ldrh	r2, [r2, #20]
	strh	r3, [sp, #92]	@ movhi
	add	r3, sp, #72
	strh	r0, [sp, #90]	@ movhi
	mov	r0, r4
	subs	r2, r2, #1
	str	r1, [sp, #96]
	str	r3, [sp, #100]
	add	r1, sp, #88
	ldr	r3, [r4, #1980]
	strh	r2, [sp, #88]	@ movhi
	blx	r3
	ldr	r3, [r4, #1972]
	mov	fp, r0
	ldrh	r3, [r3, #28]
	cbz	r3, .L1644
	add	r2, sp, #72
	ldr	r1, [r4, #284]
	mov	r0, r4
	bl	crc_wrong
	cmp	r0, #0
	it	ne
	mvnne	fp, #1
.L1644:
	ldr	r3, [r5, #8]
	ldr	r1, [r4, #376]
	ldr	r2, [r4, #1968]
	str	r3, [sp, #60]
	ldrh	r3, [r5, #6]
	cmp	r3, r1
	bls	.L1645
	movw	r1, #49999
	cmp	r3, r1
	itt	ls
	strls	r3, [r4, #376]
	strls	r3, [r2, #148]
.L1645:
	ldr	r1, [r2, #152]
	add	r0, sp, #72
	cmp	r3, r1
	it	cc
	strcc	r3, [r2, #152]
	bl	is_phy_mapping_page
	cmp	r0, #1
	bne	.L1647
	cmp	fp, #0
	beq	.L1648
	cmp	fp, #10
	bne	.L1647
.L1648:
	ldrh	r3, [r5, #4]
	mov	r10, r5
	ldr	r2, [r4, #284]
	mov	r1, r5
	mov	r0, r4
	adds	r3, r3, #1
	strh	r3, [r5, #4]	@ movhi
	ldr	r3, [r4, #4]
	ldrh	r3, [r3, #20]
	subs	r3, r3, #1
	bl	recover_logic_page_mapping
.L1713:
	mov	r8, r5
	b	.L1649
.L1640:
	ldr	r3, [r10, #8]
	ldr	r10, [r10, #28]
	str	r3, [sp, #64]
	ldr	r2, [sp, #64]
	ldr	r3, [r4, #1968]
	str	r2, [r3, #156]
	b	.L1639
.L1647:
	add	r0, sp, #72
	bl	is_nouse_page
	cmp	r0, #1
	bne	.L1650
	cbz	r6, .L1675
	ldrh	r1, [r6]
	cbnz	r7, .L1651
	ldrh	r2, [r5]
	ldr	r0, .L1719+8
	bl	NAND_Print
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	lsls	r0, r3, #31
	bmi	.L1677
	ldr	r3, [r6, #8]
	ldr	r0, [r5, #8]
	cmp	r3, r0
	beq	.L1677
	ldrh	r2, [r5]
	ldrh	r1, [r6]
	str	r0, [sp]
	ldr	r0, .L1719+12
	bl	NAND_Print
	ldr	r2, [r4, #304]
	mov	r1, r6
	mov	r0, r4
	bl	recover_phy_page_mapping
	ldr	r3, [r4, #4]
	mov	r1, r6
	ldr	r2, [r4, #304]
	mov	r0, r4
	ldrh	r3, [r3, #20]
	subs	r3, r3, #1
	bl	recover_logic_page_mapping
	movs	r2, #3
	mov	r1, r6
	mov	r0, r4
	bl	add_prio_gc
.L1675:
	mov	r6, r5
	b	.L1649
.L1651:
	ldr	r2, [r6, #8]
	ldr	r0, .L1719+16
	bl	NAND_Print
	ldr	r2, [r7, #8]
	ldrh	r1, [r7]
	ldr	r0, .L1719+20
	bl	NAND_Print
	ldr	r2, [sp, #60]
	ldrh	r1, [r5]
	ldr	r0, .L1719+24
	bl	NAND_Print
	mov	r1, r6
	mov	r6, r7
	movs	r2, #3
	mov	r0, r4
	bl	add_prio_gc
.L1677:
	mov	r7, r5
	b	.L1649
.L1650:
	ldrb	r0, [sp, #87]	@ zero_extendqisi2
	ldrb	r2, [sp, #73]	@ zero_extendqisi2
	ldrb	r1, [sp, #72]	@ zero_extendqisi2
	str	r0, [sp, #48]
	ldrb	r0, [sp, #86]	@ zero_extendqisi2
	ldrb	r3, [sp, #74]	@ zero_extendqisi2
	str	r0, [sp, #44]
	ldrb	r0, [sp, #85]	@ zero_extendqisi2
	str	r0, [sp, #40]
	ldrb	r0, [sp, #84]	@ zero_extendqisi2
	str	r0, [sp, #36]
	ldrb	r0, [sp, #83]	@ zero_extendqisi2
	str	r0, [sp, #32]
	ldrb	r0, [sp, #82]	@ zero_extendqisi2
	str	r0, [sp, #28]
	ldrb	r0, [sp, #81]	@ zero_extendqisi2
	str	r0, [sp, #24]
	ldrb	r0, [sp, #80]	@ zero_extendqisi2
	str	r0, [sp, #20]
	ldrb	r0, [sp, #79]	@ zero_extendqisi2
	str	r0, [sp, #16]
	ldrb	r0, [sp, #78]	@ zero_extendqisi2
	str	r0, [sp, #12]
	ldrb	r0, [sp, #77]	@ zero_extendqisi2
	str	r0, [sp, #8]
	ldrb	r0, [sp, #76]	@ zero_extendqisi2
	str	r0, [sp, #4]
	ldrb	r0, [sp, #75]	@ zero_extendqisi2
	str	r0, [sp]
	ldr	r0, .L1719+28
	bl	NAND_Print
	ldrh	r2, [r5]
	ldrb	r1, [r4, #16]	@ zero_extendqisi2
	cmp	fp, #0
	beq	.L1652
	cmp	fp, #10
	bne	.L1653
.L1652:
	ldr	r0, .L1719+32
.L1712:
	bl	NAND_Print
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	lsls	r1, r3, #31
	bpl	.L1655
	ldrd	r2, r3, [sp, #60]
	cmp	r3, r2
	bne	.L1655
	ldrh	r2, [r5, #6]
	mov	r1, r5
	mov	r0, r4
	adds	r2, r2, #1
	uxth	r2, r2
	bl	erase_block
	str	r5, [sp, #68]
.L1649:
	ldr	r5, [r5, #28]
	cmp	r5, #0
	bne	.L1656
.L1641:
	mov	r1, r10
	mov	r0, r4
	bl	init_smart_info
	ldr	r5, [r4, #252]
.L1657:
	cmp	r5, #0
	bne	.L1659
	mov	r0, r4
	bl	adjust_invaild_list
	cmp	r8, #0
	beq	.L1660
	cbz	r6, .L1660
	ldr	r1, [r8, #8]
	ldr	r2, [r6, #8]
	adds	r3, r1, #1
	cmp	r3, r2
	beq	.L1660
	ldr	r0, .L1719+36
	bl	NAND_Print
.L1660:
	movs	r3, #0
	str	r3, [r4, #292]
	cmp	r6, #0
	bne	.L1661
	cmp	r7, #0
	bne	.L1662
	ldr	r0, .L1719+40
	bl	NAND_Print
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	lsls	r2, r3, #31
	bpl	.L1663
	cmp	r8, #0
	beq	.L1664
.L1717:
	movs	r2, #3
	mov	r1, r8
	mov	r0, r4
	bl	add_prio_gc
	b	.L1664
.L1653:
	ldr	r0, .L1719+44
	b	.L1712
.L1655:
	movs	r3, #170
	ldr	r2, [r4, #304]
	strh	r3, [r5, #2]	@ movhi
	mov	r1, r5
	ldrh	r3, [r5, #4]
	mov	r0, r4
	adds	r3, r3, #1
	strh	r3, [r5, #4]	@ movhi
	bl	recover_block_phy_page_mapping
	ldr	r3, [r4, #4]
	mov	r1, r5
	ldr	r2, [r4, #304]
	mov	r0, r4
	ldrh	r3, [r3, #20]
	subs	r3, r3, #1
	bl	recover_logic_page_mapping
	movs	r2, #3
	mov	r1, r5
	mov	r0, r4
	bl	add_prio_gc
	b	.L1713
.L1720:
	.align	2
.L1719:
	.word	g_nreg_base
	.word	196609
	.word	.LC290
	.word	.LC291
	.word	.LC292
	.word	.LC293
	.word	.LC294
	.word	.LC295
	.word	.LC296
	.word	.LC298
	.word	.LC299
	.word	.LC297
.L1673:
	mov	r3, #-1
	mov	r7, r10
	mov	r6, r10
	mov	r8, r10
	str	r10, [sp, #68]
	str	r3, [sp, #60]
	b	.L1641
.L1659:
	cmp	r6, r5
	beq	.L1658
	cmp	r7, r5
	beq	.L1658
	ldr	r3, [sp, #68]
	cmp	r3, r5
	beq	.L1658
	mov	r1, r5
	mov	r0, r4
	bl	put_phy_block_to_invalid_page_list
.L1658:
	ldr	r5, [r5, #28]
	b	.L1657
.L1663:
	cmp	r8, #0
	beq	.L1664
	ldrh	r3, [r8, #2]
	cmp	r3, #170
	beq	.L1717
.L1664:
	ldr	r2, [sp, #60]
	mov	r1, r7
	mov	r0, r4
	bl	get_current_used_block
	mov	r5, r0
	cmp	r0, #0
	beq	.L1671
	ldr	r0, .L1721
	bl	NAND_Print
	b	.L1718
.L1661:
	cbnz	r7, .L1662
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	lsls	r3, r3, #31
	bpl	.L1665
	ldr	r2, [r6, #8]
	ldrh	r1, [r6]
	ldr	r0, .L1721+4
	bl	NAND_Print_DBG
	cmp	r8, #0
	beq	.L1666
	ldrh	r3, [r8, #2]
	cmp	r3, #170
	bne	.L1666
	movs	r2, #3
	mov	r1, r8
	mov	r0, r4
	bl	add_prio_gc
.L1666:
	movs	r2, #0
.L1715:
	mov	r1, r6
	mov	r0, r4
	bl	cross_talk_rebuild_current_block
	mov	r7, r0
	cmp	r0, #0
	bne	.L1664
.L1718:
	movs	r5, #1
.L1636:
	mov	r0, r5
	add	sp, sp, #104
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L1665:
	cmp	r8, #0
	beq	.L1667
	ldrh	r3, [r8, #2]
	cmp	r3, #170
	bne	.L1667
	movs	r2, #3
	mov	r1, r8
	mov	r0, r4
	bl	add_prio_gc
.L1667:
	movs	r2, #0
.L1716:
	mov	r1, r6
	mov	r0, r4
	bl	no_cross_talk_rebuild_current_block
	mov	r7, r0
	b	.L1664
.L1662:
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	ands	r5, r3, #1
	beq	.L1668
	mov	r2, r7
	b	.L1715
.L1668:
	ldr	r2, [r6, #8]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L1670
	ldrh	r1, [r6]
	ldr	r0, .L1721+8
	bl	NAND_Print
	ldr	r2, [r7, #8]
	ldrh	r1, [r7]
	ldr	r0, .L1721+12
	bl	NAND_Print_DBG
	mov	r2, r7
	b	.L1716
.L1670:
	ldr	r0, .L1721+16
	bl	NAND_Print
	ldr	r2, [r8, #8]
	ldrh	r1, [r8]
	ldr	r0, .L1721+20
	bl	NAND_Print
	ldr	r2, [r6, #8]
	ldrh	r1, [r6]
	ldr	r0, .L1721+8
	bl	NAND_Print
	ldr	r2, [r7, #8]
	ldrh	r1, [r7]
	ldr	r0, .L1721+12
	bl	NAND_Print_DBG
	ldr	r2, [r4, #304]
	mov	r1, r6
	mov	r0, r4
	bl	recover_block_phy_page_mapping
	ldr	r3, [r4, #4]
	mov	r1, r6
	ldr	r2, [r4, #304]
	mov	r0, r4
	ldrh	r3, [r3, #20]
	subs	r3, r3, #1
	bl	recover_logic_page_mapping
	movs	r2, #3
	mov	r1, r6
	mov	r0, r4
	bl	add_prio_gc
	mov	r1, r7
	ldr	r2, [r4, #304]
	mov	r0, r4
	bl	recover_block_phy_page_mapping
	ldr	r3, [r4, #4]
	mov	r1, r7
	ldr	r2, [r4, #304]
	mov	r0, r4
	ldrh	r3, [r3, #20]
	subs	r3, r3, #1
	bl	recover_logic_page_mapping
	mov	r1, r7
	movs	r2, #3
	mov	r0, r4
	mov	r7, r5
	bl	add_prio_gc
	b	.L1664
.L1671:
	mov	r0, r4
	bl	adjust_invaild_list
	ldr	r2, [r4, #1968]
	ldr	r3, [r4, #292]
	ldrh	r1, [r4, #22]
	ldr	r0, .L1721+24
	str	r3, [r4, #48]
	ldr	r3, [r2, #160]
	str	r3, [sp, #4]
	ldr	r3, [r2, #156]
	str	r3, [sp]
	ldrd	r2, r3, [r2, #148]
	bl	NAND_Print_DBG
	b	.L1636
.L1672:
	mov	r5, #-1
	b	.L1636
.L1722:
	.align	2
.L1721:
	.word	.LC305
	.word	.LC300
	.word	.LC301
	.word	.LC302
	.word	.LC303
	.word	.LC304
	.word	.LC306
	.size	second_scan_all_blocks, .-second_scan_all_blocks
	.section	.text.block_last_page_ecc_error,"ax",%progbits
	.align	1
	.global	block_last_page_ecc_error
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	block_last_page_ecc_error, %function
block_last_page_ecc_error:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r10, r0
	sub	sp, sp, #32
	ldr	r0, .L1755
	mov	r4, r1
	bl	NAND_Print
	mov	r0, #4096
	bl	NAND_Malloc
	mov	r5, r0
	cbnz	r0, .L1724
	ldr	r1, .L1755+4
	ldr	r0, .L1755+8
	bl	NAND_Print
.L1724:
	ldr	r7, .L1755+4
	movs	r6, #0
	ldr	r8, .L1755+28
.L1725:
	ldr	r2, [r10, #4]
	ldrh	r1, [r2, #20]
	cmp	r1, r6
	bgt	.L1727
	movs	r6, #0
	mov	r7, r6
.L1728:
	ldr	r2, [r10, #4]
	uxth	r8, r7
	ldrh	ip, [r4]
	ldr	r1, [r10, #284]
	ldrh	r0, [r2, #28]
	ldrh	r2, [r2, #20]
	cmp	r2, r7
	ble	.L1740
	strh	ip, [sp, #18]	@ movhi
	strh	r0, [sp, #20]	@ movhi
	mov	r0, r10
	str	r1, [sp, #24]
	add	r1, sp, #16
	ldr	r2, [r10, #1980]
	strh	r8, [sp, #16]	@ movhi
	str	sp, [sp, #28]
	blx	r2
	mov	fp, r0
	mov	r0, sp
	bl	is_nouse_page
	cmp	r0, #1
	bne	.L1729
.L1740:
	ldr	r2, [r10, #4]
	ldrh	r0, [r4]
	strh	r8, [sp, #16]	@ movhi
	ldrh	r1, [r2, #28]
	ldr	r2, [r10, #284]
	strh	r0, [sp, #18]	@ movhi
	mov	r0, r10
	strh	r1, [sp, #20]	@ movhi
	add	r1, sp, #16
	str	r2, [sp, #24]
	str	sp, [sp, #28]
	ldr	r2, [r10, #1976]
	blx	r2
	cmp	r0, #0
	bne	.L1730
.L1731:
	movs	r7, #0
.L1743:
	cmp	r7, r6
	ldr	r2, [r10, #4]
	beq	.L1742
	ldrh	r0, [r4]
	ldrh	r1, [r2, #28]
	ldr	r2, [r5, r7, lsl #2]
	strh	r7, [sp, #16]	@ movhi
	adds	r7, r7, #1
	strh	r0, [sp, #18]	@ movhi
	mov	r0, r10
	strh	r1, [sp, #20]	@ movhi
	add	r1, sp, #16
	str	r2, [sp, #24]
	str	sp, [sp, #28]
	ldr	r2, [r10, #1984]
	blx	r2
	b	.L1743
.L1727:
	ldrh	r0, [r2, #26]
	bl	nftl_malloc
	str	r0, [r5, r6, lsl #2]
	cbnz	r0, .L1726
	mov	r1, r7
	mov	r0, r8
	bl	NAND_Print
.L1726:
	adds	r6, r6, #1
	b	.L1725
.L1729:
	mov	r0, sp
	bl	is_ftl_logic_page_data
	cmp	r0, #1
	bne	.L1732
	cmp	fp, #0
	beq	.L1733
	cmp	fp, #10
	bne	.L1734
.L1733:
	ldr	r2, [r10, #4]
	adds	r6, r6, #1
	ldr	r1, [r10, #284]
	ldr	r0, [r5, r7, lsl #2]
	ldrh	r2, [r2, #26]
	bl	NAND_Memcpy
.L1734:
	adds	r7, r7, #1
	b	.L1728
.L1732:
	ldrb	r1, [sp, #1]	@ zero_extendqisi2
	cmp	r1, #170
	bne	.L1735
	cmp	fp, #0
	bne	.L1753
.L1736:
	ldr	r2, [r10, #4]
	adds	r6, r6, #1
	ldr	r1, [r10, #284]
	ldr	r0, [r5, r7, lsl #2]
	ldrh	r2, [r2, #26]
	bl	NAND_Memcpy
	b	.L1738
.L1735:
	ldr	r0, .L1755+12
.L1754:
	bl	NAND_Print
	b	.L1734
.L1753:
	cmp	fp, #10
	beq	.L1736
.L1738:
	ldr	r0, .L1755+16
	b	.L1754
.L1730:
	ldr	r2, [r10, #1996]
	add	r1, sp, #16
	mov	r0, r10
	blx	r2
	mov	r0, r10
	bl	out_phy_block_from_free_list
	mov	r4, r0
	cbnz	r0, .L1741
	ldr	r0, .L1755+20
	bl	NAND_Print
.L1742:
	movs	r6, #0
.L1745:
	ldr	r2, [r10, #4]
	ldrh	r2, [r2, #20]
	cmp	r2, r6
	bgt	.L1746
	mov	r0, r5
	bl	nftl_free
	ldr	r0, .L1755+24
	bl	NAND_Print
	mov	r0, r4
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L1741:
	ldr	r2, [r10, #4]
	ldrh	r0, [r0]
	strh	r8, [sp, #16]	@ movhi
	ldrh	r1, [r2, #28]
	ldr	r2, [r10, #284]
	strh	r0, [sp, #18]	@ movhi
	mov	r0, r10
	strh	r1, [sp, #20]	@ movhi
	add	r1, sp, #16
	str	r2, [sp, #24]
	str	sp, [sp, #28]
	ldr	r2, [r10, #1976]
	blx	r2
	b	.L1731
.L1746:
	ldr	r0, [r5, r6, lsl #2]
	adds	r6, r6, #1
	bl	nftl_free
	b	.L1745
.L1756:
	.align	2
.L1755:
	.word	.LC307
	.word	.LANCHOR12
	.word	.LC308
	.word	.LC310
	.word	.LC311
	.word	.LC170
	.word	.LC312
	.word	.LC309
	.size	block_last_page_ecc_error, .-block_last_page_ecc_error
	.section	.text.nand_dbg_phy_read,"ax",%progbits
	.align	1
	.global	nand_dbg_phy_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_dbg_phy_read, %function
nand_dbg_phy_read:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r5, r0
	sub	sp, sp, #76
	mov	r0, #4096
	mov	r6, r1
	mov	r7, r2
	bl	NAND_Malloc
	mov	r4, r0
	cbnz	r0, .L1758
	ldr	r1, .L1759
	ldr	r0, .L1759+4
	bl	NAND_Print
.L1758:
	add	r3, sp, #56
	mov	r2, r7
	strd	r4, r3, [sp]
	mov	r1, r6
	movs	r3, #8
	mov	r0, r5
	bl	page_read
	mov	r5, r0
	ldrb	r0, [sp, #71]	@ zero_extendqisi2
	ldrb	r3, [sp, #58]	@ zero_extendqisi2
	ldrb	r2, [sp, #57]	@ zero_extendqisi2
	str	r0, [sp, #48]
	ldrb	r0, [sp, #70]	@ zero_extendqisi2
	ldrb	r1, [sp, #56]	@ zero_extendqisi2
	str	r0, [sp, #44]
	ldrb	r0, [sp, #69]	@ zero_extendqisi2
	str	r0, [sp, #40]
	ldrb	r0, [sp, #68]	@ zero_extendqisi2
	str	r0, [sp, #36]
	ldrb	r0, [sp, #67]	@ zero_extendqisi2
	str	r0, [sp, #32]
	ldrb	r0, [sp, #66]	@ zero_extendqisi2
	str	r0, [sp, #28]
	ldrb	r0, [sp, #65]	@ zero_extendqisi2
	str	r0, [sp, #24]
	ldrb	r0, [sp, #64]	@ zero_extendqisi2
	str	r0, [sp, #20]
	ldrb	r0, [sp, #63]	@ zero_extendqisi2
	str	r0, [sp, #16]
	ldrb	r0, [sp, #62]	@ zero_extendqisi2
	str	r0, [sp, #12]
	ldrb	r0, [sp, #61]	@ zero_extendqisi2
	str	r0, [sp, #8]
	ldrb	r0, [sp, #60]	@ zero_extendqisi2
	str	r0, [sp, #4]
	ldrb	r0, [sp, #59]	@ zero_extendqisi2
	str	r0, [sp]
	ldr	r0, .L1759+8
	bl	NAND_Print_DBG
	ldrb	r0, [r4, #10]	@ zero_extendqisi2
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	ldrb	r2, [r4, #1]	@ zero_extendqisi2
	ldrb	r1, [r4]	@ zero_extendqisi2
	str	r0, [sp, #28]
	ldrb	r0, [r4, #9]	@ zero_extendqisi2
	str	r0, [sp, #24]
	ldrb	r0, [r4, #8]	@ zero_extendqisi2
	str	r0, [sp, #20]
	ldrb	r0, [r4, #7]	@ zero_extendqisi2
	str	r0, [sp, #16]
	ldrb	r0, [r4, #6]	@ zero_extendqisi2
	str	r0, [sp, #12]
	ldrb	r0, [r4, #5]	@ zero_extendqisi2
	str	r0, [sp, #8]
	ldrb	r0, [r4, #4]	@ zero_extendqisi2
	str	r0, [sp, #4]
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	str	r0, [sp]
	ldr	r0, .L1759+12
	bl	NAND_Print_DBG
	mov	r0, r4
	bl	nftl_free
	mov	r0, r5
	add	sp, sp, #76
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L1760:
	.align	2
.L1759:
	.word	.LANCHOR13
	.word	.LC313
	.word	.LC314
	.word	.LC315
	.size	nand_dbg_phy_read, .-nand_dbg_phy_read
	.section	.text.nand_dbg_zone_phy_read,"ax",%progbits
	.align	1
	.global	nand_dbg_zone_phy_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_dbg_zone_phy_read, %function
nand_dbg_zone_phy_read:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r5, r0
	sub	sp, sp, #92
	mov	r0, #4096
	mov	r7, r1
	mov	r6, r2
	bl	NAND_Malloc
	mov	r4, r0
	cbnz	r0, .L1762
	ldr	r1, .L1763
	ldr	r0, .L1763+4
	bl	NAND_Print
.L1762:
	ldr	r3, [r5, #4]
	movs	r1, #36
	muls	r1, r7, r1
	mov	r0, r5
	ldr	r3, [r3, #32]
	ldrh	r3, [r3, r1]
	add	r1, sp, #56
	strh	r6, [sp, #56]	@ movhi
	str	r4, [sp, #64]
	strh	r3, [sp, #58]	@ movhi
	movs	r3, #8
	strh	r3, [sp, #60]	@ movhi
	add	r3, sp, #72
	str	r3, [sp, #68]
	ldr	r3, [r5, #1980]
	blx	r3
	mov	r5, r0
	ldrb	r0, [sp, #87]	@ zero_extendqisi2
	ldrb	r3, [sp, #74]	@ zero_extendqisi2
	ldrb	r2, [sp, #73]	@ zero_extendqisi2
	str	r0, [sp, #48]
	ldrb	r0, [sp, #86]	@ zero_extendqisi2
	ldrb	r1, [sp, #72]	@ zero_extendqisi2
	str	r0, [sp, #44]
	ldrb	r0, [sp, #85]	@ zero_extendqisi2
	str	r0, [sp, #40]
	ldrb	r0, [sp, #84]	@ zero_extendqisi2
	str	r0, [sp, #36]
	ldrb	r0, [sp, #83]	@ zero_extendqisi2
	str	r0, [sp, #32]
	ldrb	r0, [sp, #82]	@ zero_extendqisi2
	str	r0, [sp, #28]
	ldrb	r0, [sp, #81]	@ zero_extendqisi2
	str	r0, [sp, #24]
	ldrb	r0, [sp, #80]	@ zero_extendqisi2
	str	r0, [sp, #20]
	ldrb	r0, [sp, #79]	@ zero_extendqisi2
	str	r0, [sp, #16]
	ldrb	r0, [sp, #78]	@ zero_extendqisi2
	str	r0, [sp, #12]
	ldrb	r0, [sp, #77]	@ zero_extendqisi2
	str	r0, [sp, #8]
	ldrb	r0, [sp, #76]	@ zero_extendqisi2
	str	r0, [sp, #4]
	ldrb	r0, [sp, #75]	@ zero_extendqisi2
	str	r0, [sp]
	ldr	r0, .L1763+8
	bl	NAND_Print_DBG
	ldrb	r0, [r4, #10]	@ zero_extendqisi2
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	ldrb	r2, [r4, #1]	@ zero_extendqisi2
	ldrb	r1, [r4]	@ zero_extendqisi2
	str	r0, [sp, #28]
	ldrb	r0, [r4, #9]	@ zero_extendqisi2
	str	r0, [sp, #24]
	ldrb	r0, [r4, #8]	@ zero_extendqisi2
	str	r0, [sp, #20]
	ldrb	r0, [r4, #7]	@ zero_extendqisi2
	str	r0, [sp, #16]
	ldrb	r0, [r4, #6]	@ zero_extendqisi2
	str	r0, [sp, #12]
	ldrb	r0, [r4, #5]	@ zero_extendqisi2
	str	r0, [sp, #8]
	ldrb	r0, [r4, #4]	@ zero_extendqisi2
	str	r0, [sp, #4]
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	str	r0, [sp]
	ldr	r0, .L1763+12
	bl	NAND_Print_DBG
	mov	r0, r4
	bl	nftl_free
	mov	r0, r5
	add	sp, sp, #92
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L1764:
	.align	2
.L1763:
	.word	.LANCHOR14
	.word	.LC313
	.word	.LC314
	.word	.LC315
	.size	nand_dbg_zone_phy_read, .-nand_dbg_zone_phy_read
	.section	.text.nand_dbg_zone_phy_write,"ax",%progbits
	.align	1
	.global	nand_dbg_zone_phy_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_dbg_zone_phy_write, %function
nand_dbg_zone_phy_write:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r0
	sub	sp, sp, #32
	mov	r0, #8192
	mov	r6, r1
	mov	r7, r2
	bl	NAND_Malloc
	mov	r4, r0
	cbnz	r0, .L1766
	ldr	r1, .L1767
	ldr	r0, .L1767+4
	bl	NAND_Print
.L1766:
	ldr	r3, [r5, #4]
	movs	r2, #36
	muls	r6, r2, r6
	mov	r0, r4
	mov	r2, #4096
	movs	r1, #165
	ldr	r8, [r3, #32]
	bl	NAND_Memset
	ldr	r2, .L1767+8
	mov	r3, #-1
	strh	r3, [sp, #24]	@ movhi
	mov	r1, sp
	mov	r0, r5
	strd	r3, r2, [sp, #16]
	movw	r3, #65535
	strb	r3, [sp, #26]
	ldr	r3, [r5, #4]
	ldrh	r2, [r8, r6]
	strh	r7, [sp]	@ movhi
	ldrh	r3, [r3, #28]
	strh	r2, [sp, #2]	@ movhi
	str	r4, [sp, #8]
	strh	r3, [sp, #4]	@ movhi
	add	r3, sp, #16
	str	r3, [sp, #12]
	ldr	r3, [r5, #1984]
	blx	r3
	mov	r5, r0
	mov	r0, r4
	bl	nftl_free
	mov	r0, r5
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L1768:
	.align	2
.L1767:
	.word	.LANCHOR15
	.word	.LC316
	.word	-5921281
	.size	nand_dbg_zone_phy_write, .-nand_dbg_zone_phy_write
	.section	.text.nand_dbg_phy_write,"ax",%progbits
	.align	1
	.global	nand_dbg_phy_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_dbg_phy_write, %function
nand_dbg_phy_write:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r5, r0
	sub	sp, sp, #28
	mov	r0, #8192
	mov	r6, r1
	mov	r7, r2
	bl	NAND_Malloc
	mov	r4, r0
	cbnz	r0, .L1770
	ldr	r1, .L1771
	ldr	r0, .L1771+4
	bl	NAND_Print
.L1770:
	mov	r0, r4
	mov	r2, #4096
	movs	r1, #165
	bl	NAND_Memset
	ldr	r2, .L1771+8
	mov	r3, #-1
	strh	r3, [sp, #16]	@ movhi
	mov	r1, r6
	mov	r0, r5
	strd	r3, r2, [sp, #8]
	movw	r3, #65535
	strb	r3, [sp, #18]
	add	r3, sp, #8
	strd	r4, r3, [sp]
	mov	r2, r7
	movs	r3, #8
	bl	page_write
	mov	r5, r0
	mov	r0, r4
	bl	nftl_free
	mov	r0, r5
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L1772:
	.align	2
.L1771:
	.word	.LANCHOR16
	.word	.LC316
	.word	-5921281
	.size	nand_dbg_phy_write, .-nand_dbg_phy_write
	.section	.text.write_data_to_nand,"ax",%progbits
	.align	1
	.global	write_data_to_nand
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	write_data_to_nand, %function
write_data_to_nand:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, r0
	mov	r0, #512
	bl	NAND_Malloc
	mov	r4, r0
	cbnz	r0, .L1774
	ldr	r1, .L1777
	ldr	r0, .L1777+4
	bl	NAND_Print
.L1774:
	movs	r5, #0
	mov	r2, #512
	movs	r1, #170
	mov	r0, r4
	bl	NAND_Memset
.L1775:
	mov	r1, r5
	mov	r3, r4
	movs	r2, #1
	mov	r0, r6
	adds	r5, r5, #1
	bl	__nand_write
	cmp	r5, #38912
	bne	.L1775
	mov	r0, r4
	bl	nftl_free
	movs	r0, #0
	pop	{r4, r5, r6, pc}
.L1778:
	.align	2
.L1777:
	.word	.LANCHOR17
	.word	.LC317
	.size	write_data_to_nand, .-write_data_to_nand
	.section	.text._nftl_nand_read_logic_history_page,"ax",%progbits
	.align	1
	.global	_nftl_nand_read_logic_history_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nftl_nand_read_logic_history_page, %function
_nftl_nand_read_logic_history_page:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	sub	sp, sp, #56
	movs	r2, #16
	mov	r5, r0
	add	r0, sp, #24
	str	r1, [sp, #16]
	movs	r1, #0
	bl	memset
	ldr	r3, [r5, #4]
	ldrb	r6, [r3, #8]	@ zero_extendqisi2
	lsls	r6, r6, #9
	mov	r0, r6
	bl	nftl_malloc
	mov	r8, r0
	mov	r0, r6
	bl	nftl_malloc
	mov	fp, r0
	cmp	r8, #0
	bne	.L1780
.L1797:
	ldr	r1, .L1798
	ldr	r0, .L1798+4
	bl	NAND_Print
	movs	r0, #1
.L1779:
	add	sp, sp, #56
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L1780:
	cbnz	r0, .L1782
	mov	r0, r8
	bl	nftl_free
	b	.L1797
.L1782:
	ldrh	r2, [r5, #18]
	movs	r1, #0
	ldrh	r3, [r5, #20]
	mov	r0, r8
	mov	r10, #0
	mov	r7, r10
	adds	r3, r2, r3
	mov	r2, r6
	str	r3, [sp, #8]
	bl	NAND_Memset
	mov	r2, r6
	movs	r1, #0
	mov	r0, fp
	bl	NAND_Memset
	movs	r2, #16
	movs	r1, #0
	add	r0, sp, #24
	bl	NAND_Memset
	lsrs	r3, r6, #9
	str	r3, [sp, #20]
.L1783:
	ldr	r3, [sp, #8]
	cmp	r3, r7
	bne	.L1791
	mov	r1, r3
	ldr	r0, .L1798+8
	bl	NAND_Print
	mov	r0, r8
	bl	nftl_free
	mov	r0, fp
	bl	nftl_free
	movs	r0, #0
	b	.L1779
.L1791:
	mov	r1, r7
	ldr	r0, .L1798+12
	bl	NAND_Print
	uxth	r3, r7
	movs	r4, #0
	strh	r4, [sp, #40]	@ movhi
	add	r1, sp, #40
	str	r3, [sp, #4]
	mov	r0, r5
	ldrh	r3, [sp, #4]
	strh	r4, [sp, #44]	@ movhi
	str	r4, [sp, #48]
	strh	r3, [sp, #42]	@ movhi
	add	r3, sp, #24
	str	r3, [sp, #52]
	ldr	r3, [r5, #1992]
	blx	r3
	cmp	r0, #1
	beq	.L1784
	mov	r1, r7
	ldr	r0, .L1798+16
	bl	NAND_Print
.L1785:
	adds	r7, r7, #1
	b	.L1783
.L1790:
	movs	r2, #16
	movs	r1, #0
	add	r0, sp, #24
	bl	NAND_Memset
	uxth	r3, r4
	add	r1, sp, #40
	mov	r0, r5
	str	r3, [sp, #12]
	ldrh	r3, [sp, #12]
	strh	r3, [sp, #40]	@ movhi
	ldrh	r3, [sp, #4]
	strh	r3, [sp, #42]	@ movhi
	movs	r3, #0
	strh	r3, [sp, #44]	@ movhi
	str	r3, [sp, #48]
	add	r3, sp, #24
	str	r3, [sp, #52]
	ldr	r3, [r5, #1980]
	blx	r3
	adds	r0, r0, #2
	bne	.L1786
	ldr	r0, .L1798+20
	mov	r2, r4
	mov	r1, r7
.L1796:
	bl	NAND_Print
.L1787:
	adds	r4, r4, #1
.L1784:
	ldr	r3, [r5, #4]
	ldrh	r3, [r3, #20]
	cmp	r3, r4
	bgt	.L1790
	b	.L1785
.L1786:
	add	r0, sp, #24
	bl	get_logic_page_from_oob
	ldr	r3, [sp, #16]
	cmp	r0, r3
	bne	.L1787
	ldrh	r3, [sp, #12]
	add	r1, sp, #40
	str	r8, [sp, #48]
	mov	r0, r5
	strh	r3, [sp, #40]	@ movhi
	ldrh	r3, [sp, #4]
	strh	r3, [sp, #42]	@ movhi
	ldrh	r3, [sp, #20]
	strh	r3, [sp, #44]	@ movhi
	add	r3, sp, #24
	str	r3, [sp, #52]
	ldr	r3, [r5, #1980]
	blx	r3
	adds	r0, r0, #2
	bne	.L1788
	mov	r2, r4
	mov	r1, r7
	ldr	r0, .L1798+24
	b	.L1796
.L1788:
	add	r3, r10, #1
	str	r3, [sp, #12]
	cmp	r10, #0
	beq	.L1789
	mov	r2, r10
	ldr	r1, [sp, #16]
	ldr	r0, .L1798+28
	bl	NAND_Print
	mov	r1, r6
	mov	r0, fp
	bl	dumphex
	ldr	r0, .L1798+32
	bl	NAND_Print
	movs	r1, #16
	add	r0, sp, #24
	bl	dumphex
.L1789:
	mov	r2, r6
	mov	r1, r8
	mov	r0, fp
	bl	NAND_Memcpy
	ldr	r10, [sp, #12]
	b	.L1787
.L1799:
	.align	2
.L1798:
	.word	.LANCHOR18
	.word	.LC318
	.word	.LC325
	.word	.LC319
	.word	.LC320
	.word	.LC321
	.word	.LC322
	.word	.LC323
	.word	.LC324
	.size	_nftl_nand_read_logic_history_page, .-_nftl_nand_read_logic_history_page
	.section	.text._nand_read_history,"ax",%progbits
	.align	1
	.global	_nand_read_history
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nand_read_history, %function
_nand_read_history:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, r3
	ldr	r4, [r0, #12]
	add	r2, r2, r1
	mov	r5, r1
	ldr	r3, [r4, #24]
	cmp	r2, r3
	bhi	.L1804
	ldr	r3, [r4, #4]
	mov	r0, r5
	ldrb	r1, [r3, #8]	@ zero_extendqisi2
	bl	__aeabi_uidiv
	mov	r2, r6
	mov	r1, r0
	mov	r0, r4
	pop	{r4, r5, r6, lr}
	b	_nftl_nand_read_logic_history_page
.L1804:
	ldr	r0, .L1805
	bl	NAND_Print
	movs	r0, #1
	pop	{r4, r5, r6, pc}
.L1806:
	.align	2
.L1805:
	.word	.LC47
	.size	_nand_read_history, .-_nand_read_history
	.section	.text.free_logic_page_map,"ax",%progbits
	.align	1
	.global	free_logic_page_map
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	free_logic_page_map, %function
free_logic_page_map:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	add	r5, r0, #52
	add	r4, r0, #152
.L1809:
	ldr	r0, [r5], #4
	cbz	r0, .L1808
	bl	nftl_free
.L1808:
	cmp	r5, r4
	bne	.L1809
	movs	r0, #0
	pop	{r3, r4, r5, pc}
	.size	free_logic_page_map, .-free_logic_page_map
	.section	.text.zone_param_exit,"ax",%progbits
	.align	1
	.global	zone_param_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	zone_param_exit, %function
zone_param_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	bl	free_logic_page_map
	ldr	r0, [r4, #260]
	bl	nftl_free
	ldr	r0, [r4, #296]
	bl	nftl_free
	ldr	r0, [r4, #328]
	bl	nftl_free
	ldr	r0, [r4, #284]
	bl	nftl_free
	ldr	r0, [r4, #288]
	bl	nftl_free
	movs	r0, #0
	pop	{r4, pc}
	.size	zone_param_exit, .-zone_param_exit
	.section	.text.nftl_zone_release,"ax",%progbits
	.align	1
	.global	nftl_zone_release
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_zone_release, %function
nftl_zone_release:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	bl	nftl_cache_exit
	mov	r0, r4
	bl	zone_param_exit
	ldr	r3, [r4, #4]
	ldr	r0, [r3, #32]
	bl	nftl_free
	ldr	r0, [r4, #4]
	bl	nftl_free
	mov	r0, r4
	pop	{r4, lr}
	b	nftl_free
	.size	nftl_zone_release, .-nftl_zone_release
	.section	.text.add_nftl_blk_list,"ax",%progbits
	.align	1
	.global	add_nftl_blk_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	add_nftl_blk_list, %function
add_nftl_blk_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #0
	str	r3, [r1, #8]
.L1817:
	ldr	r3, [r0, #8]
	cbnz	r3, .L1818
	str	r1, [r0, #8]
	bx	lr
.L1818:
	mov	r0, r3
	b	.L1817
	.size	add_nftl_blk_list, .-add_nftl_blk_list
	.section	.text.del_last_nftl_blk,"ax",%progbits
	.align	1
	.global	del_last_nftl_blk
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	del_last_nftl_blk, %function
del_last_nftl_blk:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L1820:
	ldr	r3, [r0, #8]
	cbz	r3, .L1819
	ldr	r2, [r3, #8]
	cbnz	r2, .L1823
	str	r2, [r0, #8]
.L1819:
	mov	r0, r3
	bx	lr
.L1823:
	mov	r0, r3
	b	.L1820
	.size	del_last_nftl_blk, .-del_last_nftl_blk
	.section	.text.nftl_support_boot_check_crc_from_dts,"ax",%progbits
	.align	1
	.global	nftl_support_boot_check_crc_from_dts
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_support_boot_check_crc_from_dts, %function
nftl_support_boot_check_crc_from_dts:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	nand_get_support_boot_check_crc
	adds	r0, r0, #0
	it	ne
	movne	r0, #1
	pop	{r3, pc}
	.size	nftl_support_boot_check_crc_from_dts, .-nftl_support_boot_check_crc_from_dts
	.section	.text.nftl_exit,"ax",%progbits
	.align	1
	.global	nftl_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_exit, %function
nftl_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	ldr	r0, [r0, #4]
	bl	free_nand_partition
	ldr	r0, [r4, #12]
	bl	nftl_zone_release
	ldr	r0, [r4, #16]
	bl	nftl_free
	movs	r0, #0
	pop	{r4, pc}
	.size	nftl_exit, .-nftl_exit
	.section	.text.nand_ftl_exit,"ax",%progbits
	.align	1
	.global	nand_ftl_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_ftl_exit, %function
nand_ftl_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	ldr	r5, .L1829
	ldr	r0, .L1829
	bl	del_last_nftl_blk
	mov	r4, r0
.L1827:
	mov	r0, r4
	cbnz	r4, .L1828
	pop	{r3, r4, r5, pc}
.L1828:
	bl	nftl_exit
	mov	r0, r4
	bl	nftl_free
	mov	r0, r5
	bl	del_last_nftl_blk
	mov	r4, r0
	b	.L1827
.L1830:
	.align	2
.L1829:
	.word	.LANCHOR19
	.size	nand_ftl_exit, .-nand_ftl_exit
	.section	.text.print_all_nftl_blk,"ax",%progbits
	.align	1
	.global	print_all_nftl_blk
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	print_all_nftl_blk, %function
print_all_nftl_blk:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	ldr	r4, .L1834
	ldr	r5, .L1834+4
.L1832:
	ldr	r3, [r4, #8]
	cbnz	r3, .L1833
	pop	{r3, r4, r5, pc}
.L1833:
	ldr	r1, [r3]
	mov	r0, r5
	bl	NAND_Print_DBG
	ldr	r4, [r4, #8]
	b	.L1832
.L1835:
	.align	2
.L1834:
	.word	.LANCHOR19
	.word	.LC326
	.size	print_all_nftl_blk, .-print_all_nftl_blk
	.section	.text.get_nftl_num,"ax",%progbits
	.align	1
	.global	get_nftl_num
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_nftl_num, %function
get_nftl_num:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L1839
	movs	r0, #0
.L1837:
	ldr	r3, [r3, #8]
	cbnz	r3, .L1838
	bx	lr
.L1838:
	adds	r0, r0, #1
	b	.L1837
.L1840:
	.align	2
.L1839:
	.word	.LANCHOR19
	.size	get_nftl_num, .-get_nftl_num
	.section	.text.get_nftl_cap,"ax",%progbits
	.align	1
	.global	get_nftl_cap
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_nftl_cap, %function
get_nftl_cap:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L1844
	movs	r0, #0
.L1842:
	ldr	r3, [r3, #8]
	cbnz	r3, .L1843
	bx	lr
.L1843:
	ldr	r2, [r3]
	add	r0, r0, r2
	b	.L1842
.L1845:
	.align	2
.L1844:
	.word	.LANCHOR19
	.size	get_nftl_cap, .-get_nftl_cap
	.section	.text.get_first_nftl_cap,"ax",%progbits
	.align	1
	.global	get_first_nftl_cap
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_first_nftl_cap, %function
get_first_nftl_cap:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L1847
	ldr	r3, [r3, #8]
	ldr	r0, [r3]
	bx	lr
.L1848:
	.align	2
.L1847:
	.word	.LANCHOR19
	.size	get_first_nftl_cap, .-get_first_nftl_cap
	.section	.text.nftl_read,"ax",%progbits
	.align	1
	.global	nftl_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_read, %function
nftl_read:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r2
	push	{r4, r5, r6, lr}
	mov	r2, r1
	cbnz	r1, .L1858
.L1850:
	mov	r0, r2
	pop	{r4, r5, r6, pc}
.L1853:
	ldr	r4, [r4, #8]
	subs	r0, r0, r1
	cbnz	r4, .L1852
	mov	r1, r0
	ldr	r0, .L1859
	bl	NAND_Print
	movs	r2, #1
	b	.L1850
.L1858:
	ldr	r1, .L1859+4
	ldr	r4, [r1, #8]
.L1852:
	ldr	r1, [r4]
	cmp	r1, r0
	bls	.L1853
	ldr	r5, [r4, #44]
	mov	r1, r0
	mov	r0, r4
	mov	ip, r5
	pop	{r4, r5, r6, lr}
	bx	ip
.L1860:
	.align	2
.L1859:
	.word	.LC327
	.word	.LANCHOR19
	.size	nftl_read, .-nftl_read
	.section	.text.nftl_read_history,"ax",%progbits
	.align	1
	.global	nftl_read_history
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_read_history, %function
nftl_read_history:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, r0
	mov	r8, r2
	mov	r5, r1
	cbz	r1, .L1862
	ldr	r3, .L1869
	ldr	r0, .L1869+4
	ldr	r4, [r3, #8]
	ldr	r1, [r4]
	bl	NAND_Print
.L1863:
	ldr	r1, [r4]
	cmp	r1, r6
	bls	.L1864
	ldr	r7, [r4, #40]
	mov	r3, r8
	mov	r2, r5
	mov	r1, r6
	mov	r0, r4
	mov	ip, r7
	pop	{r4, r5, r6, r7, r8, lr}
	bx	ip
.L1864:
	ldr	r4, [r4, #8]
	subs	r6, r6, r1
	cmp	r4, #0
	bne	.L1863
	mov	r2, r5
	movs	r5, #1
	mov	r1, r6
	ldr	r0, .L1869+8
	bl	NAND_Print
.L1862:
	mov	r0, r5
	pop	{r4, r5, r6, r7, r8, pc}
.L1870:
	.align	2
.L1869:
	.word	.LANCHOR19
	.word	.LC328
	.word	.LC327
	.size	nftl_read_history, .-nftl_read_history
	.section	.text.nftl_write,"ax",%progbits
	.align	1
	.global	nftl_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_write, %function
nftl_write:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r2
	push	{r4, r5, r6, lr}
	mov	r2, r1
	cbnz	r1, .L1880
.L1872:
	mov	r0, r2
	pop	{r4, r5, r6, pc}
.L1875:
	ldr	r4, [r4, #8]
	subs	r0, r0, r1
	cbnz	r4, .L1874
	mov	r1, r0
	ldr	r0, .L1881
	bl	NAND_Print
	movs	r2, #1
	b	.L1872
.L1880:
	ldr	r1, .L1881+4
	ldr	r4, [r1, #8]
.L1874:
	ldr	r1, [r4]
	cmp	r1, r0
	bls	.L1875
	ldr	r5, [r4, #48]
	mov	r1, r0
	mov	r0, r4
	mov	ip, r5
	pop	{r4, r5, r6, lr}
	bx	ip
.L1882:
	.align	2
.L1881:
	.word	.LC327
	.word	.LANCHOR19
	.size	nftl_write, .-nftl_write
	.section	.text.nftl_discard,"ax",%progbits
	.align	1
	.global	nftl_discard
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_discard, %function
nftl_discard:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, r1
	cbnz	r1, .L1892
.L1884:
	mov	r0, r2
	pop	{r4, pc}
.L1887:
	ldr	r3, [r3, #8]
	subs	r0, r0, r1
	cbnz	r3, .L1886
	mov	r1, r0
	ldr	r0, .L1893
	bl	NAND_Print
	movs	r2, #1
	b	.L1884
.L1892:
	ldr	r3, .L1893+4
	ldr	r3, [r3, #8]
.L1886:
	ldr	r1, [r3]
	cmp	r1, r0
	bls	.L1887
	ldr	r4, [r3, #56]
	mov	r1, r0
	mov	r0, r3
	mov	r3, r4
	pop	{r4, lr}
	bx	r3
.L1894:
	.align	2
.L1893:
	.word	.LC327
	.word	.LANCHOR19
	.size	nftl_discard, .-nftl_discard
	.section	.text.nftl_flush_write_cache,"ax",%progbits
	.align	1
	.global	nftl_flush_write_cache
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_flush_write_cache, %function
nftl_flush_write_cache:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L1898
	push	{r4, lr}
	ldr	r4, [r3, #8]
.L1896:
	cbnz	r4, .L1897
	mov	r0, r4
	pop	{r4, pc}
.L1897:
	ldr	r3, [r4, #52]
	mov	r0, r4
	movw	r1, #65535
	blx	r3
	ldr	r4, [r4, #8]
	b	.L1896
.L1899:
	.align	2
.L1898:
	.word	.LANCHOR19
	.size	nftl_flush_write_cache, .-nftl_flush_write_cache
	.section	.text.nftl_write_end,"ax",%progbits
	.align	1
	.global	nftl_write_end
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_write_end, %function
nftl_write_end:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L1903
	push	{r4, lr}
	ldr	r4, [r3, #8]
.L1901:
	cbnz	r4, .L1902
	mov	r0, r4
	pop	{r4, pc}
.L1902:
	ldr	r0, [r4, #12]
	movs	r1, #8
	bl	fill_no_use_page_to_current_block
	ldr	r4, [r4, #8]
	b	.L1901
.L1904:
	.align	2
.L1903:
	.word	.LANCHOR19
	.size	nftl_write_end, .-nftl_write_end
	.section	.text._nftl_nand_read_history_page,"ax",%progbits
	.align	1
	.global	_nftl_nand_read_history_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	_nftl_nand_read_history_page, %function
_nftl_nand_read_history_page:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r4, r0
	ldr	r2, [r4, #1968]
	sub	sp, sp, #20
	ldr	r3, [r0]
	ldr	r0, [r3, #4]
	ldrd	r3, r5, [r2, #80]
	adds	r3, r3, #1
	adc	r5, r5, #0
	strd	r3, r5, [r2, #80]
	ldrh	r3, [r1, #2]
	strh	r3, [sp, #2]	@ movhi
	ldrh	r3, [r1]
	strh	r3, [sp]	@ movhi
	ldrh	r3, [r1, #4]
	strh	r3, [sp, #4]	@ movhi
	ldr	r3, [r1, #8]
	str	r3, [sp, #8]
	ldr	r3, [r1, #12]
	mov	r1, sp
	str	r3, [sp, #12]
	ldr	r3, [r0, #88]
	blx	r3
	adds	r3, r0, #2
	itttt	eq
	ldreq	r2, [r4, #1968]
	ldreq	r3, [r2, #132]
	addeq	r3, r3, #1
	streq	r3, [r2, #132]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, pc}
	.size	_nftl_nand_read_history_page, .-_nftl_nand_read_history_page
	.section	.text.micron_intel_set_feature,"ax",%progbits
	.align	1
	.global	micron_intel_set_feature
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	micron_intel_set_feature, %function
micron_intel_set_feature:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #20
	movs	r4, #0
	mov	r7, r0
	mov	r6, r2
	mov	r5, r1
	strb	r1, [sp, #7]
	add	r1, sp, #7
	strb	r2, [sp, #8]
	add	r2, sp, #8
	strb	r4, [sp, #9]
	strb	r4, [sp, #10]
	strb	r4, [sp, #11]
	bl	nand_set_feature
	add	r2, sp, #12
	add	r1, sp, #7
	mov	r0, r7
	bl	nand_get_feature
	ldrb	r2, [sp, #12]	@ zero_extendqisi2
	ldrb	r3, [sp, #8]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L1909
	mov	r2, r6
	mov	r1, r5
	ldr	r0, .L1910
	bl	NAND_Print
	mvn	r0, #71
.L1907:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L1909:
	mov	r0, r4
	b	.L1907
.L1911:
	.align	2
.L1910:
	.word	.LC329
	.size	micron_intel_set_feature, .-micron_intel_set_feature
	.section	.text.micron_set_readretry,"ax",%progbits
	.align	1
	.global	micron_set_readretry
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	micron_set_readretry, %function
micron_set_readretry:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r0
	bl	nand_enable_chip
	ldr	r0, [r4, #260]
	bl	ndfc_disable_randomize
	ldr	r3, .L1923
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r2, r3, #64
	cmp	r2, #1
	bls	.L1913
	cmp	r3, #80
	bne	.L1921
.L1913:
	ldrb	r6, [r4, #176]	@ zero_extendqisi2
	ldr	r7, .L1923+4
	cmp	r6, #255
	it	eq
	moveq	r6, #0
	cmp	r3, #80
	bne	.L1916
	ldr	r3, [r7]
	ldrb	r3, [r3, r6]	@ zero_extendqisi2
	cbz	r3, .L1917
.L1919:
	ldr	r3, [r4, #176]
	cmp	r3, #255
	bne	.L1916
	movs	r2, #0
	movs	r1, #137
	mov	r0, r4
	bl	micron_intel_set_feature
	movs	r2, #0
	mov	r5, r0
	movs	r1, #147
	mov	r0, r4
	bl	micron_intel_set_feature
	orrs	r5, r5, r0
	b	.L1914
.L1917:
	movs	r2, #1
	movs	r1, #147
	mov	r0, r4
	bl	micron_intel_set_feature
	mov	r5, r0
	cmp	r0, #0
	beq	.L1919
.L1914:
	ldr	r3, [r4, #176]
	mov	r0, r4
	cmp	r3, #255
	itt	eq
	moveq	r3, #0
	streq	r3, [r4, #176]
	bl	nand_disable_chip
	mov	r0, r5
	pop	{r3, r4, r5, r6, r7, pc}
.L1916:
	ldr	r3, [r7]
	movs	r1, #137
	mov	r0, r4
	ldrb	r2, [r3, r6]	@ zero_extendqisi2
	bl	micron_intel_set_feature
	mov	r5, r0
	b	.L1914
.L1921:
	movs	r5, #0
	b	.L1914
.L1924:
	.align	2
.L1923:
	.word	.LANCHOR20
	.word	.LANCHOR21
	.size	micron_set_readretry, .-micron_set_readretry
	.section	.text.micron_read_page_end,"ax",%progbits
	.align	1
	.global	micron_read_page_end
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	micron_read_page_end, %function
micron_read_page_end:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L1935
	push	{r0, r1, r4, r5, r6, r7, r8, lr}
	mov	r6, r0
	ldr	r1, [r0]
	ldr	r0, [r3]
	bl	nci_get_from_nsi
	mov	r5, r0
	mov	r0, r6
	bl	generic_read_page_end_not_retry
	adds	r3, r0, #2
	mov	r4, r0
	bne	.L1925
	ldr	r8, .L1935+12
	movs	r7, #0
	ldr	r0, .L1935+4
	bl	NAND_Print_DBG
.L1927:
	ldrb	r3, [r8]	@ zero_extendqisi2
	cmp	r3, r7
	ble	.L1930
	str	r7, [r5, #176]
	mov	r0, r5
	bl	micron_set_readretry
	mov	r4, r0
	cbnz	r0, .L1928
	mov	r0, r6
	bl	generic_read_page_start
	mov	r4, r0
	mov	r0, r6
	bl	generic_read_page_end_not_retry
	orrs	r4, r4, r0
	cmp	r4, #10
	beq	.L1929
	cbnz	r4, .L1928
.L1929:
	ldr	r3, [r5, #176]
	movs	r4, #10
	ldr	r1, [r5, #260]
	ldr	r0, .L1935+8
	str	r3, [sp, #4]
	ldr	r3, [r6, #8]
	str	r3, [sp]
	ldr	r3, [r6, #4]
	ldr	r2, [r5, #20]
	ldr	r1, [r1, #8]
	bl	NAND_Print_DBG
.L1930:
	movs	r3, #255
	mov	r0, r5
	str	r3, [r5, #176]
	bl	micron_set_readretry
.L1925:
	mov	r0, r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L1928:
	adds	r7, r7, #1
	b	.L1927
.L1936:
	.align	2
.L1935:
	.word	g_nsi
	.word	.LC330
	.word	.LC331
	.word	.LANCHOR22
	.size	micron_read_page_end, .-micron_read_page_end
	.section	.text.micron_readretry_init,"ax",%progbits
	.align	1
	.global	micron_readretry_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	micron_readretry_init, %function
micron_readretry_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r10, lr}
	movs	r7, #0
	ldr	r3, [r0, #264]
	movs	r1, #137
	mov	r6, r0
	ldr	r10, .L1943+24
	ldr	r3, [r3, #52]
	ldr	r5, .L1943
	ldr	r8, .L1943+28
	ldr	r4, .L1943+4
	lsrs	r2, r3, #16
	lsrs	r3, r3, #8
	str	r7, [r0, #176]
	strb	r2, [r10]
	mov	r2, r7
	strb	r3, [r4]
	str	r8, [r5]
	bl	micron_intel_set_feature
	ldrb	r3, [r10]	@ zero_extendqisi2
	cmp	r3, #65
	bne	.L1938
	movs	r3, #12
	str	r8, [r5]
	strb	r3, [r4]
.L1939:
	ldrb	r1, [r4]	@ zero_extendqisi2
	ldr	r0, .L1943+8
	bl	NAND_Print_DBG
	movs	r0, #0
	b	.L1937
.L1938:
	cmp	r3, #64
	bne	.L1940
	ldr	r3, .L1943+12
	str	r3, [r5]
	movs	r3, #10
	strb	r3, [r4]
	b	.L1939
.L1940:
	cmp	r3, #80
	bne	.L1941
	ldr	r3, .L1943+16
	mov	r2, r7
	movs	r1, #147
	mov	r0, r6
	str	r3, [r5]
	movs	r3, #7
	strb	r3, [r4]
	bl	micron_intel_set_feature
	b	.L1939
.L1941:
	ldr	r0, .L1943+20
	bl	NAND_Print
	mvn	r0, #70
.L1937:
	pop	{r3, r4, r5, r6, r7, r8, r10, pc}
.L1944:
	.align	2
.L1943:
	.word	.LANCHOR21
	.word	.LANCHOR22
	.word	.LC333
	.word	.LANCHOR24
	.word	.LANCHOR25
	.word	.LC332
	.word	.LANCHOR20
	.word	.LANCHOR23
	.size	micron_readretry_init, .-micron_readretry_init
	.section	.text.micron_readretry_exit,"ax",%progbits
	.align	1
	.global	micron_readretry_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	micron_readretry_exit, %function
micron_readretry_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L1946
	movs	r0, #0
	strb	r0, [r3]
	ldr	r3, .L1946+4
	strb	r0, [r3]
	bx	lr
.L1947:
	.align	2
.L1946:
	.word	.LANCHOR20
	.word	.LANCHOR22
	.size	micron_readretry_exit, .-micron_readretry_exit
	.section	.text.micron_special_init,"ax",%progbits
	.align	1
	.global	micron_special_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	micron_special_init, %function
micron_special_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	movs	r4, #0
	ldr	r3, .L1953
	ldr	r3, [r3]
	ldr	r5, [r3, #8]
.L1949:
	cbnz	r5, .L1950
	ldr	r3, .L1953+4
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, .L1953+8
	ldrb	r2, [r3]	@ zero_extendqisi2
	cbnz	r4, .L1951
	ldr	r0, .L1953+12
	ldr	r3, .L1953+16
	str	r0, [r3]
	ldr	r0, .L1953+20
	bl	NAND_Print_DBG
.L1948:
	mov	r0, r4
	pop	{r3, r4, r5, pc}
.L1950:
	mov	r0, r5
	bl	micron_readretry_init
	ldr	r5, [r5]
	orrs	r4, r4, r0
	b	.L1949
.L1951:
	ldr	r0, .L1953+24
	bl	NAND_Print
	b	.L1948
.L1954:
	.align	2
.L1953:
	.word	g_nsi
	.word	.LANCHOR20
	.word	.LANCHOR22
	.word	micron_read_page_end
	.word	df_read_page_end
	.word	.LC334
	.word	.LC335
	.size	micron_special_init, .-micron_special_init
	.section	.text.micron_special_exit,"ax",%progbits
	.align	1
	.global	micron_special_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	micron_special_exit, %function
micron_special_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	movs	r5, #0
	ldr	r3, .L1962
	ldr	r2, .L1962+4
	ldr	r3, [r3]
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r0, [r3, #8]
	ldr	r3, .L1962+8
	ldrb	r4, [r3]	@ zero_extendqisi2
.L1956:
	cbnz	r0, .L1957
	cbz	r5, .L1958
	strb	r1, [r2]
	strb	r4, [r3]
.L1958:
	ldr	r0, .L1962+12
	bl	NAND_Print_DBG
	movs	r0, #0
	pop	{r3, r4, r5, pc}
.L1957:
	movs	r1, #0
	ldr	r0, [r0]
	movs	r5, #1
	mov	r4, r1
	b	.L1956
.L1963:
	.align	2
.L1962:
	.word	g_nsi
	.word	.LANCHOR20
	.word	.LANCHOR22
	.word	.LC336
	.size	micron_special_exit, .-micron_special_exit
	.section	.text.hynix16nm_vender_set_param,"ax",%progbits
	.align	1
	.global	hynix16nm_vender_set_param
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_vender_set_param, %function
hynix16nm_vender_set_param:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r5, r1
	sub	sp, sp, #24
	mov	r4, r2
	mov	r7, r3
	mov	r6, r0
	movs	r3, #54
	add	r10, sp, #24
	mov	r8, r5
	add	r7, r7, r4
	mov	fp, #1
	strb	r3, [r10, #-1]!
	bl	nand_enable_chip
	ldr	r0, [r6, #260]
	bl	ndfc_disable_randomize
.L1965:
	cmp	r4, r7
	bne	.L1966
	mov	r0, r6
	bl	nand_disable_chip
	ldrb	r0, [r5, #3]	@ zero_extendqisi2
	ldrb	r3, [r5, #2]	@ zero_extendqisi2
	ldrb	r2, [r5, #1]	@ zero_extendqisi2
	str	r0, [sp]
	ldrb	r1, [r5]	@ zero_extendqisi2
	ldr	r0, .L1967
	bl	NAND_Print_DBG
	movs	r0, #0
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L1966:
	mov	r3, r4
	str	r8, [sp]
	movs	r2, #0
	mov	r1, r10
	strd	fp, fp, [sp, #4]
	mov	r0, r6
	bl	set_cmd_with_nand_bus
	movs	r2, #0
	movs	r1, #22
	mov	r0, r6
	adds	r4, r4, #1
	bl	set_one_cmd
	add	r8, r8, #1
	b	.L1965
.L1968:
	.align	2
.L1967:
	.word	.LC337
	.size	hynix16nm_vender_set_param, .-hynix16nm_vender_set_param
	.section	.text.hynix16nm_set_readretry,"ax",%progbits
	.align	1
	.global	hynix16nm_set_readretry
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_set_readretry, %function
hynix16nm_set_readretry:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L1974
	push	{r0, r1, r4, lr}
	ldr	r1, [r0, #176]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r1, r3
	bhi	.L1973
	ldr	r3, .L1974+4
	lsls	r1, r1, #2
	movs	r2, #0
	ldrb	r3, [r3]	@ zero_extendqisi2
.L1971:
	cmp	r3, r2
	bhi	.L1972
	ldr	r2, .L1974+8
	mov	r1, sp
	bl	hynix16nm_vender_set_param
.L1969:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.L1972:
	adds	r4, r1, r2
	add	r4, r4, r0
	ldrb	r4, [r4, #48]	@ zero_extendqisi2
	strb	r4, [sp, r2]
	adds	r2, r2, #1
	b	.L1971
.L1973:
	mvn	r0, #73
	b	.L1969
.L1975:
	.align	2
.L1974:
	.word	.LANCHOR26
	.word	.LANCHOR27
	.word	.LANCHOR28
	.size	hynix16nm_set_readretry, .-hynix16nm_set_readretry
	.section	.text.hynix16nm_read_page_end,"ax",%progbits
	.align	1
	.global	hynix16nm_read_page_end
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_read_page_end, %function
hynix16nm_read_page_end:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L1989
	push	{r0, r1, r2, r4, r5, r6, r7, r8, r10, lr}
	mov	r6, r0
	ldr	r1, [r0]
	ldr	r0, [r3]
	bl	nci_get_from_nsi
	mov	r5, r0
	mov	r0, r6
	bl	generic_read_page_end_not_retry
	adds	r3, r0, #2
	mov	r4, r0
	bne	.L1976
	ldr	r7, .L1989+4
	mov	r10, #0
	mov	r8, r10
	ldr	r0, .L1989+8
	bl	NAND_Print_DBG
.L1978:
	ldrb	r2, [r7]	@ zero_extendqisi2
	cmp	r2, r10
	ble	.L1982
	ldr	r3, [r5, #176]
	mov	r0, r5
	adds	r3, r3, #1
	cmp	r3, r2
	it	hi
	movhi	r3, r8
	str	r3, [r5, #176]
	bl	hynix16nm_set_readretry
	mov	r4, r0
	cbz	r0, .L1981
	movs	r3, #0
	mov	r0, r5
	str	r3, [r5, #176]
	bl	hynix16nm_set_readretry
.L1982:
	movs	r3, #0
	mov	r0, r5
	str	r3, [r5, #176]
	bl	hynix16nm_set_readretry
.L1976:
	mov	r0, r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, pc}
.L1981:
	mov	r0, r6
	bl	generic_read_page_start
	mov	r4, r0
	mov	r0, r6
	bl	generic_read_page_end_not_retry
	orrs	r4, r4, r0
	cmp	r4, #10
	beq	.L1983
	cbnz	r4, .L1984
.L1983:
	ldr	r3, [r5, #176]
	movs	r4, #10
	ldr	r1, [r5, #260]
	ldr	r0, .L1989+12
	str	r3, [sp, #4]
	ldr	r3, [r6, #8]
	str	r3, [sp]
	ldr	r3, [r6, #4]
	ldr	r2, [r5, #20]
	ldr	r1, [r1, #8]
	bl	NAND_Print_DBG
	b	.L1982
.L1984:
	add	r10, r10, #1
	b	.L1978
.L1990:
	.align	2
.L1989:
	.word	g_nsi
	.word	.LANCHOR26
	.word	.LC338
	.word	.LC339
	.size	hynix16nm_read_page_end, .-hynix16nm_read_page_end
	.section	.text.hynix16nm_get_special_info,"ax",%progbits
	.align	1
	.global	hynix16nm_get_special_info
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_get_special_info, %function
hynix16nm_get_special_info:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r4, r0
	ldr	r0, .L2004
	mov	r8, r1
	mov	r7, r2
	mov	r10, r3
	bl	NAND_Print_DBG
	mov	r0, sp
	bl	physic_info_get_offset
	cbz	r0, .L1998
	ldr	r0, .L2004+4
	bl	NAND_Print
	movs	r0, #1
.L1991:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L1998:
	ldr	fp, .L2004+8
	movs	r5, #4
	add	r6, r4, #9728
.L1992:
	mov	r1, r5
	mov	r0, fp
	bl	NAND_Print_DBG
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, #165
	beq	.L1994
	mov	r3, r4
	add	r2, sp, #4
	ldr	r1, [sp]
	mov	r0, r5
	bl	physic_info_get_one_copy
.L1994:
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, #165
	bne	.L1995
	add	r2, r4, #9728
	add	r1, r4, #10752
	adds	r2, r2, #2
	movs	r3, #0
.L1996:
	ldrb	r0, [r2], #1	@ zero_extendqisi2
	cmp	r2, r1
	add	r3, r3, r0
	uxtb	r3, r3
	bne	.L1996
	movw	r2, #9729
	ldrb	r2, [r4, r2]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L1997
	mla	r1, r7, r10, r4
	mov	r0, r8
	mov	r2, r7
	add	r1, r1, #9728
	adds	r1, r1, #2
	bl	NAND_Memcpy
	movs	r0, #0
	b	.L1991
.L1997:
	movs	r3, #0
	strb	r3, [r6]
.L1995:
	adds	r5, r5, #1
	cmp	r5, #51
	bne	.L1992
	mov	r0, #-1
	b	.L1991
.L2005:
	.align	2
.L2004:
	.word	.LC340
	.word	.LC341
	.word	.LC342
	.size	hynix16nm_get_special_info, .-hynix16nm_get_special_info
	.section	.text.hynix16nm_write_page_FF,"ax",%progbits
	.align	1
	.global	hynix16nm_write_page_FF
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_write_page_FF, %function
hynix16nm_write_page_FF:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L2025
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r10, r0
	sub	sp, sp, #24
	mov	r6, r1
	ldr	r1, [r0]
	ldr	r0, [r3]
	bl	nci_get_from_nsi
	ldr	r4, [r0, #260]
	mov	r5, r0
	ldr	r2, [r0, #20]
	ldr	r1, [r10, #4]
	ldr	r3, [r4, #12]
	add	r7, r4, #32
	ldr	ip, [r0, #24]
	cmp	r2, r3
	bcs	.L2007
	cmp	r1, ip
	bcc	.L2008
.L2007:
	strd	r1, ip, [sp]
	ldr	r1, [r4, #8]
	mvn	r4, #107
	ldr	r0, .L2025+4
	bl	NAND_Print
.L2006:
	mov	r0, r4
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L2008:
	bl	nand_read_chip_status_ready
	mov	r0, r5
	bl	nand_enable_chip
	ldr	r0, [r5, #260]
	bl	ndfc_disable_randomize
	ldr	r0, [r5, #260]
	bl	ndfc_disable_ecc
	mov	r0, r7
	bl	ndfc_clean_cmd_seq
	cmp	r6, #8
	beq	.L2017
	cmp	r6, #16
	beq	.L2018
	movs	r3, #0
	str	r3, [sp, #12]
.L2022:
	str	r3, [sp, #8]
	add	r3, r4, #56
	str	r3, [sp, #16]
	mov	r8, #0
	ldr	r3, [sp, #8]
	mov	r6, r8
	subs	r3, r3, #1
	str	r3, [sp, #20]
.L2011:
	ldr	r3, [sp, #8]
	lsl	fp, r6, #10
	cmp	r6, r3
	bne	.L2015
	movs	r3, #0
	movs	r1, #16
	str	r3, [r4, #32]
	movs	r3, #1
	strd	r3, r1, [r4, #40]
	mov	r1, r7
	str	r3, [r4, #48]
	str	r3, [r4, #116]
	ldr	r0, [r5, #260]
	bl	ndfc_execute_cmd
	mov	r0, r5
	bl	nand_read_chip_status_ready
	mov	r4, r0
	cbz	r0, .L2016
	ldr	r0, .L2025+8
	bl	NAND_Print
.L2016:
	mov	r0, r5
	bl	nand_disable_chip
	b	.L2006
.L2017:
	mov	r3, #832
	str	r3, [sp, #12]
	movs	r3, #9
	b	.L2022
.L2018:
	mov	r3, #640
	str	r3, [sp, #12]
	movs	r3, #18
	b	.L2022
.L2015:
	ldr	r1, [r10, #16]
	cbnz	r6, .L2012
	movs	r3, #1
	movs	r0, #128
	mov	r2, #1024
	strd	r3, r0, [r4, #40]
	str	r3, [r4, #48]
	str	r3, [r4, #88]
	strd	r3, r3, [r4, #80]
	str	r1, [r4, #100]
	str	r2, [r4, #92]
	str	r3, [r4, #76]
	ldrd	r1, r2, [r10, #4]
	str	r6, [r4, #32]
	ldr	r0, [r5, #36]
	bl	get_row_addr
	movs	r3, #5
	mov	r8, r0
	str	r3, [r4, #72]
	mov	r2, r0
	ldr	r3, [sp, #16]
	movs	r1, #2
	str	r3, [sp]
	movs	r3, #3
.L2023:
	mov	r0, fp
	adds	r6, r6, #1
	bl	fill_cmd_addr
	mov	r1, r7
	ldr	r0, [r5, #260]
	bl	ndfc_execute_cmd
	b	.L2011
.L2012:
	ldr	r3, [sp, #20]
	add	r1, r1, fp
	movs	r2, #133
	str	r1, [r4, #100]
	str	r2, [r4, #44]
	movs	r2, #1
	cmp	r3, r6
	str	r2, [r4, #40]
	ite	eq
	ldreq	r1, [sp, #12]
	movne	r1, #1024
	str	r2, [r4, #48]
	movs	r3, #0
	str	r2, [r4, #88]
	strd	r2, r2, [r4, #80]
	str	r2, [r4, #76]
	ldr	r2, [sp, #16]
	str	r1, [r4, #92]
	movs	r1, #2
	str	r3, [r4, #32]
	str	r1, [r4, #72]
	str	r2, [sp]
	mov	r2, r8
	b	.L2023
.L2026:
	.align	2
.L2025:
	.word	g_nsi
	.word	.LC343
	.word	.LC344
	.size	hynix16nm_write_page_FF, .-hynix16nm_write_page_FF
	.section	.text.hynix16nm_vender_get_param,"ax",%progbits
	.align	1
	.global	hynix16nm_vender_get_param
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_vender_get_param, %function
hynix16nm_vender_get_param:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, lr}
	mov	r4, r2
	sub	sp, sp, #20
	mov	r7, r3
	mov	r6, r0
	movs	r3, #55
	add	r8, sp, #16
	add	r7, r7, r4
	mov	r10, #1
	mov	r5, r1
	strb	r3, [r8, #-1]!
	bl	nand_enable_chip
	ldr	r0, [r6, #260]
	bl	ndfc_disable_randomize
.L2028:
	cmp	r4, r7
	bne	.L2029
	mov	r0, r6
	bl	nand_disable_chip
	movs	r0, #0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, pc}
.L2029:
	mov	r3, r5
	mov	r2, r4
	str	r10, [sp]
	mov	r1, r8
	mov	r0, r6
	adds	r4, r4, #1
	bl	get_data_with_nand_bus_one_cmd
	adds	r5, r5, #1
	b	.L2028
	.size	hynix16nm_vender_get_param, .-hynix16nm_vender_get_param
	.section	.text.hynix16nm_major_check_byte,"ax",%progbits
	.align	1
	.global	hynix16nm_major_check_byte
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_major_check_byte, %function
hynix16nm_major_check_byte:
	@ args = 8, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r10, r0
	ldr	r8, [sp, #44]
	mov	r5, r2
	mov	fp, r3
	str	r1, [sp, #4]
	cmp	r2, r8, lsr #1
	bcs	.L2049
	mov	r2, r8
	mov	r1, r5
	ldr	r0, .L2052
	bl	NAND_Print
	mvn	r0, #106
	movs	r3, #255
	strb	r3, [r10]
.L2030:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L2035:
	ldrb	lr, [r0], #1	@ zero_extendqisi2
	tst	lr, r1
	ite	ne
	addne	r2, r2, #1
	addeq	r3, r3, #1
.L2046:
	cmp	ip, r0
	bne	.L2035
	cmp	r5, r2
	bcs	.L2036
.L2051:
	orrs	r7, r7, r1
	uxtb	r7, r7
.L2037:
	adds	r6, r6, #1
.L2044:
	adds	r4, r4, #1
	cmp	r4, #8
	bne	.L2031
	cmp	r6, #8
	iteet	ne
	movne	r3, #255
	strbeq	r7, [r10]
	moveq	r0, #0
	strbne	r3, [r10]
	it	ne
	mvnne	r0, #79
	b	.L2030
.L2042:
	ldrb	lr, [r0], #1	@ zero_extendqisi2
	tst	lr, r1
	ite	ne
	addne	r3, r3, #1
	addeq	r2, r2, #1
	b	.L2039
.L2049:
	movs	r6, #0
	mov	r7, r6
	mov	r4, r6
.L2031:
	movs	r1, #1
	movs	r3, #0
	lsls	r1, r1, r4
	mov	r0, fp
	add	ip, r8, fp
	mov	r2, r3
	b	.L2046
.L2036:
	cmp	r5, r3
	bcc	.L2037
	ldr	r0, [sp, #4]
	cmp	r0, #1
	bne	.L2038
	ldr	r0, [sp, #40]
	movs	r3, #0
	mov	r2, r3
	add	ip, r8, r0
.L2039:
	cmp	r0, ip
	bne	.L2042
	cmp	r5, r2
	bcc	.L2051
	cmp	r5, r3
	bcc	.L2037
.L2038:
	mov	r1, r4
	ldr	r0, .L2052+4
	bl	NAND_Print
	mov	r1, r4
	ldr	r0, .L2052+8
	bl	NAND_Print
	b	.L2044
.L2053:
	.align	2
.L2052:
	.word	.LC345
	.word	.LC346
	.word	.LC347
	.size	hynix16nm_major_check_byte, .-hynix16nm_major_check_byte
	.section	.text.hynix16nm_get_read_retry_cfg,"ax",%progbits
	.align	1
	.global	hynix16nm_get_read_retry_cfg
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_get_read_retry_cfg, %function
hynix16nm_get_read_retry_cfg:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	sub	sp, sp, #72
	add	r4, sp, #8
	mov	fp, r0
	mov	r5, r1
	mov	r8, r2
	movs	r1, #0
	movs	r2, #32
	mov	r0, r4
	add	r7, sp, #40
	mov	r10, r3
	bl	memset
	movs	r2, #32
	movs	r1, #0
	mov	r0, r7
	bl	memset
	movs	r3, #0
.L2055:
	ldrb	r2, [r10, r3]	@ zero_extendqisi2
	strb	r2, [r4, r3]
	adds	r3, r3, #1
	cmp	r3, #8
	bne	.L2055
	strd	r7, r3, [sp]
	movs	r2, #4
	mov	r3, r4
	movs	r1, #0
	mov	r0, fp
	bl	hynix16nm_major_check_byte
	subs	r6, r0, #0
	bge	.L2056
	ldr	r0, .L2077
.L2076:
	bl	NAND_Print
.L2054:
	mov	r0, r6
	add	sp, sp, #72
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L2056:
	ldrb	r1, [fp]	@ zero_extendqisi2
	ldr	r0, .L2077+4
	bl	NAND_Print_DBG
	add	r2, r10, #7
	movs	r3, #0
.L2058:
	ldrb	r1, [r2, #1]!	@ zero_extendqisi2
	strb	r1, [r4, r3]
	adds	r3, r3, #1
	cmp	r3, #8
	bne	.L2058
	strd	r7, r3, [sp]
	movs	r2, #4
	mov	r3, r4
	movs	r1, #0
	mov	r0, r5
	bl	hynix16nm_major_check_byte
	subs	r6, r0, #0
	bge	.L2059
	ldr	r0, .L2077+8
	b	.L2076
.L2059:
	ldrb	r1, [r5]	@ zero_extendqisi2
	ldr	r0, .L2077+12
	bl	NAND_Print_DBG
	ldrb	r1, [fp]	@ zero_extendqisi2
	ldrb	r2, [r5]	@ zero_extendqisi2
	cmp	r1, #8
	bne	.L2060
	cmp	r2, #4
	beq	.L2067
.L2060:
	ldr	r0, .L2077+16
	mvn	r6, #80
	bl	NAND_Print
	b	.L2054
.L2063:
	adds	r5, r5, #1
	cmp	r5, #32
	bne	.L2061
	movs	r6, #0
	b	.L2064
.L2067:
	movs	r5, #0
.L2061:
	add	r2, r10, r5
	movs	r3, #0
.L2062:
	ldrb	r1, [r2, #16]	@ zero_extendqisi2
	adds	r2, r2, #64
	strb	r1, [r4, r3]
	ldrb	r1, [r2, #-16]	@ zero_extendqisi2
	strb	r1, [r7, r3]
	adds	r3, r3, #1
	cmp	r3, #8
	bne	.L2062
	strd	r7, r3, [sp]
	movs	r2, #4
	mov	r3, r4
	movs	r1, #1
	add	r0, r8, r5
	bl	hynix16nm_major_check_byte
	subs	r6, r0, #0
	bge	.L2063
	mov	r1, r5
	ldr	r0, .L2077+20
	bl	NAND_Print
.L2064:
	ldr	r7, .L2077+24
	movs	r4, #0
	ldr	r5, .L2077+28
.L2066:
	lsls	r3, r4, #29
	bne	.L2065
	cbz	r4, .L2065
	mov	r0, r7
	bl	NAND_Print_DBG
.L2065:
	ldrb	r1, [r8, r4]	@ zero_extendqisi2
	mov	r0, r5
	adds	r4, r4, #1
	bl	NAND_Print_DBG
	cmp	r4, #32
	bne	.L2066
	ldr	r0, .L2077+24
	bl	NAND_Print_DBG
	b	.L2054
.L2078:
	.align	2
.L2077:
	.word	.LC348
	.word	.LC349
	.word	.LC350
	.word	.LC351
	.word	.LC352
	.word	.LC353
	.word	.LC7
	.word	.LC73
	.size	hynix16nm_get_read_retry_cfg, .-hynix16nm_get_read_retry_cfg
	.section	.text.hynix16nm_read_otp_info_hynix,"ax",%progbits
	.align	1
	.global	hynix16nm_read_otp_info_hynix
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_read_otp_info_hynix, %function
hynix16nm_read_otp_info_hynix:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r4, r0
	sub	sp, sp, #32
	mov	r8, r1
	bl	nand_enable_chip
	ldr	r0, [r4, #260]
	bl	ndfc_disable_randomize
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #260]
	ldr	r0, .L2084
	add	r3, r3, r2, lsl #2
	ldr	r2, [r3, #1148]
	ldr	r1, [r3, #1116]
	bl	NAND_Print_DBG
	cmp	r8, #0
	bne	.L2080
	mov	r0, r4
	bl	nand_disable_chip
	ldr	r0, .L2084+4
	bl	NAND_Print
	mvn	r0, #78
.L2079:
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L2080:
	movs	r2, #1
	movs	r1, #255
	mov	r0, r4
	movs	r6, #1
	bl	set_one_cmd
	add	r7, sp, #20
	movs	r3, #82
	movs	r5, #56
	mov	fp, #54
	strb	r3, [sp, #20]
	movs	r2, #0
	add	r3, sp, #24
	add	r1, sp, #16
	strd	r6, r6, [sp, #4]
	mov	r0, r4
	str	r7, [sp]
	mov	r10, #48
	strb	r5, [sp, #24]
	strb	fp, [sp, #16]
	bl	set_cmd_with_nand_bus
	movs	r2, #0
	movs	r1, #22
	mov	r0, r4
	bl	set_one_cmd
	movs	r2, #0
	movs	r1, #23
	mov	r0, r4
	bl	set_one_cmd
	movs	r2, #0
	movs	r1, #4
	mov	r0, r4
	bl	set_one_cmd
	movs	r2, #0
	movs	r1, #25
	mov	r0, r4
	bl	set_one_cmd
	movs	r2, #0
	mov	r0, r4
	mov	r1, r2
	bl	set_one_cmd
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r1, #2
	mov	r0, r4
	bl	set_one_addr
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	mov	r3, #528
	movs	r2, #0
	str	r3, [sp]
	add	r1, sp, #16
	mov	r3, r8
	mov	r0, r4
	strb	r10, [sp, #16]
	bl	get_data_with_nand_bus_one_cmd
	mov	r2, r6
	movs	r1, #255
	mov	r0, r4
	bl	set_one_cmd
	strb	r5, [sp, #24]
	movs	r5, #0
	add	r3, sp, #24
	mov	r2, r5
	add	r1, sp, #16
	strd	r6, r6, [sp, #4]
	str	r7, [sp]
	mov	r0, r4
	strb	fp, [sp, #16]
	strb	r5, [sp, #20]
	bl	set_cmd_with_nand_bus
	mov	r2, r5
	movs	r1, #22
	mov	r0, r4
	bl	set_one_cmd
	mov	r2, r5
	mov	r1, r5
	mov	r0, r4
	bl	set_one_cmd
	mov	r1, r5
	mov	r0, r4
	bl	set_one_addr
	mov	r1, r5
	mov	r0, r4
	bl	set_one_addr
	mov	r1, r5
	mov	r0, r4
	bl	set_one_addr
	mov	r1, r5
	mov	r0, r4
	bl	set_one_addr
	mov	r1, r5
	mov	r0, r4
	bl	set_one_addr
	mov	r2, r6
	mov	r1, r10
	mov	r0, r4
	bl	set_one_cmd
	ldrb	r1, [r8]	@ zero_extendqisi2
	ldrb	r2, [r8, #1]	@ zero_extendqisi2
	cmp	r1, #8
	bne	.L2082
	cmp	r2, #8
	beq	.L2083
.L2082:
	ldr	r0, .L2084+8
	bl	NAND_Print
	mov	r0, r4
	bl	nand_disable_chip
	mvn	r0, #95
	b	.L2079
.L2083:
	mov	r0, r4
	bl	nand_disable_chip
	mov	r0, r5
	b	.L2079
.L2085:
	.align	2
.L2084:
	.word	.LC354
	.word	.LC355
	.word	.LC356
	.size	hynix16nm_read_otp_info_hynix, .-hynix16nm_read_otp_info_hynix
	.section	.text.hynix16nm_get_rr_value_otp_hynix,"ax",%progbits
	.align	1
	.global	hynix16nm_get_rr_value_otp_hynix
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_get_rr_value_otp_hynix, %function
hynix16nm_get_rr_value_otp_hynix:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, r5, r6, lr}
	mov	r4, r0
	mov	r0, #528
	bl	nand_get_temp_buf
	mov	r5, r0
	cbnz	r0, .L2087
	mvn	r6, #77
	ldr	r0, .L2091
	bl	NAND_Print
.L2086:
	mov	r0, r6
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L2087:
	mov	r1, r0
	mov	r0, r4
	bl	hynix16nm_read_otp_info_hynix
	cmp	r0, #0
	bge	.L2089
	ldr	r3, [r4, #260]
	ldr	r2, [r4, #20]
	ldr	r0, .L2091+4
	ldr	r1, [r3, #8]
	bl	NAND_Print
.L2089:
	mov	r3, r5
	add	r2, r4, #48
	add	r1, sp, #7
	add	r0, sp, #6
	bl	hynix16nm_get_read_retry_cfg
	subs	r6, r0, #0
	bge	.L2090
	ldr	r3, [r4, #260]
	ldr	r2, [r4, #20]
	ldr	r0, .L2091+8
	ldr	r1, [r3, #8]
	bl	NAND_Print
.L2090:
	mov	r1, #528
	mov	r0, r5
	bl	nand_free_temp_buf
	b	.L2086
.L2092:
	.align	2
.L2091:
	.word	.LC357
	.word	.LC358
	.word	.LC359
	.size	hynix16nm_get_rr_value_otp_hynix, .-hynix16nm_get_rr_value_otp_hynix
	.section	.text.hynix16nm_save_otp_value,"ax",%progbits
	.align	1
	.global	hynix16nm_save_otp_value
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_save_otp_value, %function
hynix16nm_save_otp_value:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r1, #1
	adds	r0, r0, #48
	adds	r1, r1, #31
.L2094:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	cmp	r3, r1
	strb	r2, [r0], #1
	bne	.L2094
	bx	lr
	.size	hynix16nm_save_otp_value, .-hynix16nm_save_otp_value
	.section	.text.hynix16nm_get_otp_param,"ax",%progbits
	.align	1
	.global	hynix16nm_get_otp_param
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_get_otp_param, %function
hynix16nm_get_otp_param:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r7, .L2103
	mov	r5, r1
	movs	r6, #0
.L2097:
	mov	r1, r6
	mov	r0, r7
	bl	NAND_Print_DBG
	mov	r0, r4
	adds	r6, r6, #1
	bl	hynix16nm_get_rr_value_otp_hynix
	cmp	r0, #0
	bne	.L2097
	mov	r0, r4
	mov	r1, r5
	adds	r4, r4, #32
.L2098:
	mov	r2, r1
	movs	r3, #0
.L2099:
	adds	r5, r0, r3
	adds	r3, r3, #1
	ldrb	r5, [r5, #48]	@ zero_extendqisi2
	cmp	r3, #4
	strb	r5, [r2], #1
	bne	.L2099
	adds	r0, r0, #4
	adds	r1, r1, #4
	cmp	r0, r4
	bne	.L2098
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, pc}
.L2104:
	.align	2
.L2103:
	.word	.LC360
	.size	hynix16nm_get_otp_param, .-hynix16nm_get_otp_param
	.section	.text.hynix16nm_set_default_param,"ax",%progbits
	.align	1
	.global	hynix16nm_set_default_param
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_set_default_param, %function
hynix16nm_set_default_param:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	add	r1, r0, #48
	ldr	r5, .L2110
	movs	r2, #0
	ldrb	r3, [r5]	@ zero_extendqisi2
.L2106:
	cmp	r3, r2
	bhi	.L2107
	ldr	r7, .L2110+4
	mov	r1, sp
	ldr	r2, .L2110+8
	movs	r4, #0
	bl	hynix16nm_vender_set_param
	mov	r6, r0
	ldr	r0, .L2110+12
	bl	NAND_Print_DBG
.L2108:
	ldrb	r3, [r5]	@ zero_extendqisi2
	cmp	r3, r4
	bhi	.L2109
	ldr	r0, .L2110+16
	bl	NAND_Print_DBG
	mov	r0, r6
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L2107:
	ldrb	r4, [r1], #1	@ zero_extendqisi2
	strb	r4, [sp, r2]
	adds	r2, r2, #1
	b	.L2106
.L2109:
	ldrb	r1, [sp, r4]	@ zero_extendqisi2
	mov	r0, r7
	bl	NAND_Print_DBG
	adds	r4, r4, #1
	b	.L2108
.L2111:
	.align	2
.L2110:
	.word	.LANCHOR27
	.word	.LC362
	.word	.LANCHOR28
	.word	.LC361
	.word	.LC7
	.size	hynix16nm_set_default_param, .-hynix16nm_set_default_param
	.section	.text.hynix16nm_init_readretry_param,"ax",%progbits
	.align	1
	.global	hynix16nm_init_readretry_param
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_init_readretry_param, %function
hynix16nm_init_readretry_param:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #264]
	push	{r4, r5, r6, r7, r8, r10, lr}
	mov	r4, r0
	sub	sp, sp, #68
	ldr	r0, [r3, #16]
	lsls	r0, r0, #9
	bl	nand_get_temp_buf
	mov	r6, r0
	cmp	r0, #0
	beq	.L2119
	mov	r0, #32768
	bl	nand_get_temp_buf
	mov	r7, r0
	cbnz	r0, .L2114
	ldr	r3, [r4, #264]
	mov	r0, r6
	ldr	r1, [r3, #16]
	lsls	r1, r1, #9
	bl	nand_free_temp_buf
	ldr	r0, .L2121
	bl	NAND_Print
	mvn	r0, #75
.L2112:
	add	sp, sp, #68
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, pc}
.L2114:
	ldr	r3, [r4, #16]
	movs	r2, #32
	mov	r1, r6
	bl	hynix16nm_get_special_info
	ldr	r3, [r4, #260]
	mov	r5, r0
	cbnz	r0, .L2115
	ldr	r8, .L2121+16
	mov	r2, r0
	ldr	r10, .L2121+20
	ldr	r1, [r3, #8]
	ldr	r0, .L2121+4
	bl	NAND_Print_DBG
.L2117:
	ldrb	r1, [r6, r5]	@ zero_extendqisi2
	mov	r0, r8
	bl	NAND_Print_DBG
	and	r3, r5, #7
	cmp	r3, #7
	bne	.L2116
	mov	r0, r10
	bl	NAND_Print_DBG
.L2116:
	adds	r5, r5, #1
	cmp	r5, #32
	bne	.L2117
	mov	r0, r4
	mov	r1, r6
	bl	hynix16nm_save_otp_value
	mov	r0, r4
	bl	hynix16nm_set_default_param
.L2118:
	mov	r1, #32768
	mov	r0, r7
	bl	nand_free_temp_buf
	ldr	r3, [r4, #264]
	mov	r0, r6
	ldr	r1, [r3, #16]
	lsls	r1, r1, #9
	bl	nand_free_temp_buf
	movs	r0, #0
	b	.L2112
.L2115:
	ldr	r1, [r3, #8]
	ldr	r0, .L2121+8
	bl	NAND_Print_DBG
	mov	r1, sp
	mov	r0, r4
	bl	hynix16nm_get_otp_param
	mov	r0, r4
	bl	hynix16nm_set_default_param
	ldr	r3, [r4, #260]
	movs	r2, #0
	ldr	r0, .L2121+12
	ldr	r1, [r3, #8]
	bl	NAND_Print_DBG
	b	.L2118
.L2119:
	mvn	r0, #76
	b	.L2112
.L2122:
	.align	2
.L2121:
	.word	.LC363
	.word	.LC364
	.word	.LC366
	.word	.LC367
	.word	.LC365
	.word	.LC7
	.size	hynix16nm_init_readretry_param, .-hynix16nm_init_readretry_param
	.section	.text.hynix16nm_readretry_init,"ax",%progbits
	.align	1
	.global	hynix16nm_readretry_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_readretry_init, %function
hynix16nm_readretry_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #264]
	ldr	r2, .L2128
	push	{r4, lr}
	ldr	r3, [r3, #52]
	ubfx	r1, r3, #16, #8
	strb	r1, [r2]
	lsrs	r4, r3, #8
	ldr	r2, .L2128+4
	cmp	r1, #4
	strb	r4, [r2]
	ldr	r2, .L2128+8
	strb	r3, [r2]
	bne	.L2124
	ldr	r3, .L2128+12
	movs	r2, #56
	add	r1, r0, #176
	strb	r2, [r3]
	movs	r2, #57
	strb	r2, [r3, #1]
	movs	r2, #58
	strb	r2, [r3, #2]
	movs	r2, #59
	strb	r2, [r3, #3]
	add	r2, r0, #48
	movs	r3, #0
	str	r3, [r0, #176]
.L2125:
	strb	r3, [r2], #1
	cmp	r2, r1
	bne	.L2125
	bl	hynix16nm_init_readretry_param
	movs	r0, #0
.L2123:
	pop	{r4, pc}
.L2124:
	ldr	r0, .L2128+16
	bl	NAND_Print
	mvn	r0, #74
	b	.L2123
.L2129:
	.align	2
.L2128:
	.word	.LANCHOR29
	.word	.LANCHOR26
	.word	.LANCHOR27
	.word	.LANCHOR28
	.word	.LC368
	.size	hynix16nm_readretry_init, .-hynix16nm_readretry_init
	.section	.text.hynix16nm_readretry_exit,"ax",%progbits
	.align	1
	.global	hynix16nm_readretry_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_readretry_exit, %function
hynix16nm_readretry_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	ldr	r0, .L2131
	bl	NAND_Print_DBG
	mov	r0, r4
	bl	hynix16nm_set_default_param
	movs	r0, #0
	str	r0, [r4, #176]
	pop	{r4, pc}
.L2132:
	.align	2
.L2131:
	.word	.LC369
	.size	hynix16nm_readretry_exit, .-hynix16nm_readretry_exit
	.section	.text.hynix16nm_special_init,"ax",%progbits
	.align	1
	.global	hynix16nm_special_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_special_init, %function
hynix16nm_special_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	movs	r4, #0
	ldr	r3, .L2138
	ldr	r3, [r3]
	ldr	r5, [r3, #8]
.L2134:
	cbnz	r5, .L2135
	ldr	r3, .L2138+4
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, .L2138+8
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, .L2138+12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cbnz	r4, .L2136
	ldr	r0, .L2138+16
	ldr	r5, .L2138+20
	str	r5, [r0]
	ldr	r0, .L2138+24
	bl	NAND_Print_DBG
.L2133:
	mov	r0, r4
	pop	{r3, r4, r5, pc}
.L2135:
	mov	r0, r5
	bl	hynix16nm_readretry_init
	ldr	r5, [r5]
	orrs	r4, r4, r0
	b	.L2134
.L2136:
	ldr	r0, .L2138+28
	bl	NAND_Print
	b	.L2133
.L2139:
	.align	2
.L2138:
	.word	g_nsi
	.word	.LANCHOR29
	.word	.LANCHOR26
	.word	.LANCHOR27
	.word	df_read_page_end
	.word	hynix16nm_read_page_end
	.word	.LC370
	.word	.LC371
	.size	hynix16nm_special_init, .-hynix16nm_special_init
	.section	.text.hynix16nm_special_exit,"ax",%progbits
	.align	1
	.global	hynix16nm_special_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix16nm_special_exit, %function
hynix16nm_special_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L2143
	push	{r4, lr}
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
.L2141:
	cbnz	r4, .L2142
	ldr	r0, .L2143+4
	bl	NAND_Print_DBG
	mov	r0, r4
	pop	{r4, pc}
.L2142:
	mov	r0, r4
	bl	hynix16nm_readretry_exit
	ldr	r4, [r4]
	b	.L2141
.L2144:
	.align	2
.L2143:
	.word	g_nsi
	.word	.LC372
	.size	hynix16nm_special_exit, .-hynix16nm_special_exit
	.section	.text.generic_special_init,"ax",%progbits
	.align	1
	.global	generic_special_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	generic_special_init, %function
generic_special_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	ldr	r2, .L2146
	ldr	r3, .L2146+4
	ldr	r0, .L2146+8
	str	r2, [r3]
	bl	NAND_Print_DBG
	movs	r0, #0
	pop	{r3, pc}
.L2147:
	.align	2
.L2146:
	.word	generic_read_page_end_not_retry
	.word	df_read_page_end
	.word	.LC373
	.size	generic_special_init, .-generic_special_init
	.section	.text.generic_special_exit,"ax",%progbits
	.align	1
	.global	generic_special_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	generic_special_exit, %function
generic_special_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	ldr	r0, .L2149
	bl	NAND_Print_DBG
	movs	r0, #0
	pop	{r3, pc}
.L2150:
	.align	2
.L2149:
	.word	.LC374
	.size	generic_special_exit, .-generic_special_exit
	.section	.text.toshiba_read_retry_clock_save,"ax",%progbits
	.align	1
	.global	toshiba_read_retry_clock_save
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	toshiba_read_retry_clock_save, %function
toshiba_read_retry_clock_save:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	ldr	r3, .L2152
	ldr	r0, [r0, #260]
	ldr	r3, [r3]
	ldr	r2, .L2152+4
	ldr	r1, .L2152+8
	ldr	r0, [r0, #8]
	blx	r3
	ldr	r0, [r4, #260]
	movs	r2, #20
	ldr	r3, .L2152+12
	movs	r1, #10
	ldr	r0, [r0, #8]
	ldr	r3, [r3]
	blx	r3
	movs	r0, #0
	pop	{r4, pc}
.L2153:
	.align	2
.L2152:
	.word	NAND_GetClk
	.word	.LANCHOR30
	.word	.LANCHOR31
	.word	NAND_SetClk
	.size	toshiba_read_retry_clock_save, .-toshiba_read_retry_clock_save
	.section	.text.toshiba_read_retry_clock_recover,"ax",%progbits
	.align	1
	.global	toshiba_read_retry_clock_recover
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	toshiba_read_retry_clock_recover, %function
toshiba_read_retry_clock_recover:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	ldr	r0, [r0, #260]
	ldr	r3, .L2155
	ldr	r2, .L2155+4
	ldr	r1, .L2155+8
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldr	r1, [r1]
	ldr	r0, [r0, #8]
	blx	r3
	movs	r0, #0
	pop	{r3, pc}
.L2156:
	.align	2
.L2155:
	.word	NAND_SetClk
	.word	.LANCHOR30
	.word	.LANCHOR31
	.size	toshiba_read_retry_clock_recover, .-toshiba_read_retry_clock_recover
	.section	.text.toshiba_vender_set_param,"ax",%progbits
	.align	1
	.global	toshiba_vender_set_param
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	toshiba_vender_set_param, %function
toshiba_vender_set_param:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r10, r3
	ldr	r7, .L2166
	mov	r6, r0
	mov	r4, r1
	mov	r8, r2
	ldrb	r3, [r7]	@ zero_extendqisi2
	cmp	r3, #18
	bne	.L2164
	mov	fp, #1
	mov	r3, r2
	strd	r1, fp, [sp]
	movs	r2, #0
	str	r10, [sp, #8]
	ldr	r1, .L2166+4
	bl	set_cmd_with_nand_bus
	ldrb	r3, [r4]	@ zero_extendqisi2
	mov	r5, r0
	cbnz	r3, .L2158
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	cbnz	r3, .L2158
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	cbnz	r3, .L2158
	ldrb	r3, [r4, #3]	@ zero_extendqisi2
	cbnz	r3, .L2158
	ldr	r3, .L2166+8
	ldr	r3, [r3]
	cbnz	r3, .L2158
.L2165:
	ldr	r3, .L2166+12
	movs	r2, #1
	mov	r0, r6
	ldrb	r1, [r3]	@ zero_extendqisi2
	bl	set_one_cmd
	orrs	r5, r5, r0
.L2157:
	mov	r0, r5
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L2164:
	movs	r5, #0
.L2158:
	ldrb	r3, [r7]	@ zero_extendqisi2
	cmp	r3, #17
	bne	.L2160
	mov	fp, #1
	mov	r3, r8
	str	r10, [sp, #8]
	movs	r2, #0
	strd	r4, fp, [sp]
	mov	r0, r6
	ldr	r1, .L2166+4
	bl	set_cmd_with_nand_bus
	ldrb	r3, [r4]	@ zero_extendqisi2
	orrs	r5, r5, r0
	cmp	r3, #0
	bne	.L2161
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	cbnz	r3, .L2160
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	cbnz	r3, .L2160
	ldrb	r3, [r4, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L2165
.L2160:
	ldrb	r3, [r7]	@ zero_extendqisi2
	cmp	r3, #16
	bne	.L2162
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #255
	bne	.L2163
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	cmp	r3, #255
	bne	.L2163
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	cmp	r3, #255
	bne	.L2163
	ldrb	r3, [r4, #3]	@ zero_extendqisi2
	cmp	r3, #255
	beq	.L2165
.L2163:
	movs	r3, #1
	str	r10, [sp, #8]
	strd	r4, r3, [sp]
	movs	r2, #0
	mov	r3, r8
	ldr	r1, .L2166+16
	mov	r0, r6
	bl	set_cmd_with_nand_bus
	orrs	r5, r5, r0
.L2162:
	ldr	r7, .L2166+20
	movs	r2, #0
	mov	r0, r6
	ldrb	r1, [r7]	@ zero_extendqisi2
	bl	set_one_cmd
	ldrb	r1, [r7, #1]	@ zero_extendqisi2
	orrs	r5, r5, r0
	movs	r2, #0
	mov	r0, r6
	bl	set_one_cmd
	orrs	r5, r5, r0
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	ldrb	r2, [r4, #1]	@ zero_extendqisi2
	str	r0, [sp]
	ldrb	r1, [r4]	@ zero_extendqisi2
	ldr	r0, .L2166+24
	bl	NAND_Print_DBG
	b	.L2157
.L2161:
	cmp	r3, #2
	bne	.L2160
	ldrb	r2, [r4, #1]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L2160
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	cmp	r3, #126
	bne	.L2160
	ldrb	r3, [r4, #3]	@ zero_extendqisi2
	cmp	r3, #124
	bne	.L2160
	ldr	r3, .L2166+28
	mov	r0, r6
	ldrb	r1, [r3]	@ zero_extendqisi2
	bl	set_one_cmd
	orrs	r5, r5, r0
	b	.L2160
.L2167:
	.align	2
.L2166:
	.word	.LANCHOR32
	.word	.LANCHOR33
	.word	.LANCHOR34
	.word	.LANCHOR35
	.word	.LANCHOR37
	.word	.LANCHOR38
	.word	.LC375
	.word	.LANCHOR36
	.size	toshiba_vender_set_param, .-toshiba_vender_set_param
	.section	.text.toshiba_vender_pre_condition,"ax",%progbits
	.align	1
	.global	toshiba_vender_pre_condition
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	toshiba_vender_pre_condition, %function
toshiba_vender_pre_condition:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, lr}
	movs	r3, #0
	movs	r2, #2
	str	r3, [sp]
	strd	r3, r2, [sp, #4]
	mov	r2, r3
	ldr	r1, .L2173
	bl	set_cmd_with_nand_bus
	mov	r4, r0
	cbz	r0, .L2168
	ldr	r0, .L2173+4
	bl	NAND_Print
.L2168:
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L2174:
	.align	2
.L2173:
	.word	.LANCHOR39
	.word	.LC376
	.size	toshiba_vender_pre_condition, .-toshiba_vender_pre_condition
	.section	.text.toshiba_set_readretry,"ax",%progbits
	.align	1
	.global	toshiba_set_readretry
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	toshiba_set_readretry, %function
toshiba_set_readretry:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	ldr	r6, .L2188
	ldrb	r2, [r6]	@ zero_extendqisi2
	subs	r2, r2, #16
	cmp	r2, #2
	bhi	.L2183
	bl	toshiba_read_retry_clock_save
	mov	r0, r4
	bl	nand_enable_chip
	ldr	r0, [r4, #260]
	bl	ndfc_disable_randomize
	ldr	r3, [r4, #176]
	cbnz	r3, .L2177
	mov	r0, r4
	bl	toshiba_vender_pre_condition
.L2177:
	ldr	r0, [r4, #260]
	bl	ndfc_is_toggle_interface
	ldr	r5, .L2188+4
	cbz	r0, .L2178
	ldr	r0, [r4, #260]
	bl	ndfc_set_legacy_interface
	movs	r3, #1
	str	r3, [r5]
.L2178:
	ldrb	r2, [r6]	@ zero_extendqisi2
	ldr	r1, [r4, #176]
	cmp	r2, #17
	lsl	r3, r1, #2
	bne	.L2179
	add	r3, r3, r1
	ldr	r1, .L2188+8
.L2187:
	ldr	r2, .L2188+12
	add	r1, r1, r3
	movs	r3, #5
.L2180:
	mov	r0, r4
	bl	toshiba_vender_set_param
	ldr	r3, [r5]
	mov	r6, r0
	cmp	r3, #1
	bne	.L2182
	ldr	r0, [r4, #260]
	bl	ndfc_set_toggle_interface
.L2182:
	mov	r0, r4
	bl	nand_disable_chip
	mov	r0, r4
	bl	toshiba_read_retry_clock_recover
.L2175:
	mov	r0, r6
	pop	{r4, r5, r6, pc}
.L2179:
	cmp	r2, #18
	bne	.L2181
	add	r3, r3, r1
	ldr	r1, .L2188+16
	b	.L2187
.L2181:
	ldr	r1, .L2188+20
	ldr	r2, .L2188+24
	add	r1, r1, r3
	movs	r3, #4
	b	.L2180
.L2183:
	mvn	r6, #88
	b	.L2175
.L2189:
	.align	2
.L2188:
	.word	.LANCHOR32
	.word	.LANCHOR42
	.word	.LANCHOR43
	.word	.LANCHOR40
	.word	.LANCHOR44
	.word	.LANCHOR45
	.word	.LANCHOR41
	.size	toshiba_set_readretry, .-toshiba_set_readretry
	.section	.text.toshiba_readretry_init,"ax",%progbits
	.align	1
	.global	toshiba_readretry_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	toshiba_readretry_init, %function
toshiba_readretry_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #264]
	ldr	r2, .L2191
	push	{r4, lr}
	movs	r4, #0
	ldr	r3, [r3, #52]
	str	r4, [r0, #176]
	ldr	r0, .L2191+4
	lsrs	r1, r3, #16
	strb	r1, [r2]
	lsrs	r1, r3, #8
	ldr	r2, .L2191+8
	strb	r1, [r2]
	uxtb	r1, r1
	ldr	r2, .L2191+12
	strb	r3, [r2]
	bl	NAND_Print_DBG
	mov	r0, r4
	pop	{r4, pc}
.L2192:
	.align	2
.L2191:
	.word	.LANCHOR32
	.word	.LC377
	.word	.LANCHOR46
	.word	.LANCHOR47
	.size	toshiba_readretry_init, .-toshiba_readretry_init
	.section	.text.toshiba_readretry_exit,"ax",%progbits
	.align	1
	.global	toshiba_readretry_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	toshiba_readretry_exit, %function
toshiba_readretry_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #0
	bx	lr
	.size	toshiba_readretry_exit, .-toshiba_readretry_exit
	.section	.text.toshiba_exit_readretry,"ax",%progbits
	.align	1
	.global	toshiba_exit_readretry
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	toshiba_exit_readretry, %function
toshiba_exit_readretry:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	ldr	r5, .L2205
	ldrb	r2, [r5]	@ zero_extendqisi2
	subs	r2, r2, #16
	cmp	r2, #2
	bhi	.L2199
	bl	nand_enable_chip
	ldr	r0, [r4, #260]
	bl	ndfc_disable_randomize
	ldr	r0, [r4, #260]
	bl	ndfc_is_toggle_interface
	ldr	r6, .L2205+4
	cbz	r0, .L2196
	ldr	r0, [r4, #260]
	bl	ndfc_set_legacy_interface
	movs	r3, #1
	str	r3, [r6]
.L2196:
	ldrb	r3, [r5]	@ zero_extendqisi2
	cmp	r3, #17
	beq	.L2200
	ldr	r1, .L2205+8
	cmp	r3, #18
	ldr	r0, .L2205+12
	it	eq
	moveq	r3, #5
	ldr	r2, .L2205+16
	itt	ne
	movne	r3, #0
	movne	r2, r1
	ldr	r1, .L2205+20
	it	ne
	movne	r1, r0
.L2197:
	mov	r0, r4
	bl	toshiba_vender_set_param
	ldr	r3, [r6]
	mov	r5, r0
	cmp	r3, #1
	bne	.L2198
	ldr	r0, [r4, #260]
	bl	ndfc_set_toggle_interface
.L2198:
	mov	r0, r4
	bl	nand_disable_chip
.L2194:
	mov	r0, r5
	pop	{r4, r5, r6, pc}
.L2200:
	movs	r3, #5
	ldr	r2, .L2205+16
	ldr	r1, .L2205+24
	b	.L2197
.L2199:
	mvn	r5, #87
	b	.L2194
.L2206:
	.align	2
.L2205:
	.word	.LANCHOR32
	.word	.LANCHOR42
	.word	.LANCHOR41
	.word	.LANCHOR45+24
	.word	.LANCHOR40
	.word	.LANCHOR44+50
	.word	.LANCHOR43+35
	.size	toshiba_exit_readretry, .-toshiba_exit_readretry
	.section	.text.toshiba_read_page_end,"ax",%progbits
	.align	1
	.global	toshiba_read_page_end
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	toshiba_read_page_end, %function
toshiba_read_page_end:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L2217
	push	{r0, r1, r2, r4, r5, r6, r7, r8, r10, lr}
	mov	r6, r0
	ldr	r1, [r0]
	ldr	r0, [r3]
	bl	nci_get_from_nsi
	mov	r5, r0
	mov	r0, r6
	bl	generic_read_page_end_not_retry
	adds	r3, r0, #2
	mov	r4, r0
	bne	.L2207
	ldr	r0, .L2217+4
	movs	r7, #0
	bl	NAND_Print_DBG
	ldr	r3, .L2217+8
	movs	r2, #1
	ldr	r10, .L2217+16
	mov	r8, r3
	str	r2, [r3]
.L2209:
	ldrb	r3, [r10]	@ zero_extendqisi2
	cmp	r3, r7
	ble	.L2212
	str	r7, [r5, #176]
	mov	r0, r5
	bl	toshiba_set_readretry
	mov	r4, r0
	cbnz	r0, .L2210
	mov	r0, r6
	bl	generic_read_page_start
	mov	r4, r0
	mov	r0, r6
	bl	generic_read_page_end_not_retry
	orrs	r4, r4, r0
	cmp	r4, #10
	beq	.L2211
	cbnz	r4, .L2210
.L2211:
	ldr	r3, [r5, #176]
	movs	r4, #10
	ldr	r1, [r5, #260]
	ldr	r0, .L2217+12
	str	r3, [sp, #4]
	ldr	r3, [r6, #8]
	str	r3, [sp]
	ldr	r3, [r6, #4]
	ldr	r2, [r5, #20]
	ldr	r1, [r1, #8]
	bl	NAND_Print_DBG
.L2212:
	movs	r3, #0
	mov	r0, r5
	str	r3, [r5, #176]
	str	r3, [r8]
	bl	toshiba_exit_readretry
.L2207:
	mov	r0, r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, pc}
.L2210:
	adds	r7, r7, #1
	b	.L2209
.L2218:
	.align	2
.L2217:
	.word	g_nsi
	.word	.LC378
	.word	.LANCHOR34
	.word	.LC379
	.word	.LANCHOR46
	.size	toshiba_read_page_end, .-toshiba_read_page_end
	.section	.text.toshiba_special_init,"ax",%progbits
	.align	1
	.global	toshiba_special_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	toshiba_special_init, %function
toshiba_special_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	movs	r4, #0
	ldr	r3, .L2224
	ldr	r3, [r3]
	ldr	r5, [r3, #8]
.L2220:
	cbnz	r5, .L2221
	ldr	r3, .L2224+4
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, .L2224+8
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, .L2224+12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cbnz	r4, .L2222
	ldr	r0, .L2224+16
	ldr	r5, .L2224+20
	str	r5, [r0]
	ldr	r0, .L2224+24
	bl	NAND_Print_DBG
.L2219:
	mov	r0, r4
	pop	{r3, r4, r5, pc}
.L2221:
	mov	r0, r5
	bl	toshiba_readretry_init
	ldr	r5, [r5]
	orrs	r4, r4, r0
	b	.L2220
.L2222:
	ldr	r0, .L2224+28
	bl	NAND_Print
	b	.L2219
.L2225:
	.align	2
.L2224:
	.word	g_nsi
	.word	.LANCHOR32
	.word	.LANCHOR46
	.word	.LANCHOR47
	.word	df_read_page_end
	.word	toshiba_read_page_end
	.word	.LC380
	.word	.LC381
	.size	toshiba_special_init, .-toshiba_special_init
	.section	.text.toshiba_special_exit,"ax",%progbits
	.align	1
	.global	toshiba_special_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	toshiba_special_exit, %function
toshiba_special_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L2229
	push	{r4, lr}
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
.L2227:
	cbnz	r4, .L2228
	ldr	r0, .L2229+4
	bl	NAND_Print_DBG
	mov	r0, r4
	pop	{r4, pc}
.L2228:
	ldr	r4, [r4]
	b	.L2227
.L2230:
	.align	2
.L2229:
	.word	g_nsi
	.word	.LC382
	.size	toshiba_special_exit, .-toshiba_special_exit
	.section	.text.sandisk_A19_dsp_on,"ax",%progbits
	.align	1
	.global	sandisk_A19_dsp_on
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_A19_dsp_on, %function
sandisk_A19_dsp_on:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L2232
	push	{r4, lr}
	ldr	r1, [r0]
	ldr	r0, [r3]
	bl	nci_get_from_nsi
	mov	r4, r0
	bl	nand_enable_chip
	ldr	r0, [r4, #260]
	bl	ndfc_disable_randomize
	movs	r2, #0
	movs	r1, #38
	mov	r0, r4
	bl	set_one_cmd
	mov	r0, r4
	bl	nand_disable_chip
	movs	r0, #0
	pop	{r4, pc}
.L2233:
	.align	2
.L2232:
	.word	g_nsi
	.size	sandisk_A19_dsp_on, .-sandisk_A19_dsp_on
	.section	.text.sandisk_A19_cmd25,"ax",%progbits
	.align	1
	.global	sandisk_A19_cmd25
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_A19_cmd25, %function
sandisk_A19_cmd25:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L2235
	push	{r4, lr}
	ldr	r1, [r0]
	ldr	r0, [r3]
	bl	nci_get_from_nsi
	mov	r4, r0
	bl	nand_enable_chip
	ldr	r0, [r4, #260]
	bl	ndfc_disable_randomize
	movs	r2, #0
	movs	r1, #37
	mov	r0, r4
	bl	set_one_cmd
	mov	r0, r4
	bl	nand_disable_chip
	movs	r0, #0
	pop	{r4, pc}
.L2236:
	.align	2
.L2235:
	.word	g_nsi
	.size	sandisk_A19_cmd25, .-sandisk_A19_cmd25
	.section	.text.sandisk_A19_set_lmflgfix_next,"ax",%progbits
	.align	1
	.global	sandisk_A19_set_lmflgfix_next
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_A19_set_lmflgfix_next, %function
sandisk_A19_set_lmflgfix_next:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L2242
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r1
	sub	sp, sp, #24
	ldr	r1, [r0]
	add	r7, sp, #22
	ldr	r0, [r3]
	bl	nci_get_from_nsi
	mov	r4, r0
	bl	nand_enable_chip
	ldr	r0, [r4, #260]
	bl	ndfc_disable_randomize
	movs	r2, #0
	movs	r1, #92
	mov	r0, r4
	bl	set_one_cmd
	movs	r2, #0
	movs	r1, #197
	mov	r0, r4
	bl	set_one_cmd
	movs	r3, #0
	movs	r2, #1
	strb	r3, [sp, #21]
	movs	r3, #85
	strb	r3, [sp, #23]
	add	r1, sp, #23
	add	r3, sp, #21
	strd	r2, r2, [sp, #4]
	str	r7, [sp]
	mov	r0, r4
	strb	r2, [sp, #22]
	bl	set_cmd_with_nand_bus
	ldr	r3, .L2242+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #52
	bne	.L2238
	movs	r3, #34
.L2241:
	strb	r5, [sp, #22]
	movs	r5, #1
	strb	r3, [sp, #21]
	mov	r8, #85
	add	r3, sp, #21
	mov	r2, r5
	add	r1, sp, #23
	strd	r5, r5, [sp, #4]
	str	r7, [sp]
	mov	r0, r4
	movs	r6, #0
	strb	r8, [sp, #23]
	bl	set_cmd_with_nand_bus
	add	r3, sp, #21
	mov	r2, r5
	add	r1, sp, #23
	strd	r5, r5, [sp, #4]
	str	r7, [sp]
	mov	r0, r4
	strb	r6, [sp, #21]
	strb	r6, [sp, #22]
	strb	r8, [sp, #23]
	bl	set_cmd_with_nand_bus
	mov	r0, r4
	bl	nand_disable_chip
	mov	r0, r6
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L2238:
	cmp	r3, #53
	ite	eq
	moveq	r3, #37
	movne	r3, #35
	b	.L2241
.L2243:
	.align	2
.L2242:
	.word	g_nsi
	.word	.LANCHOR48
	.size	sandisk_A19_set_lmflgfix_next, .-sandisk_A19_set_lmflgfix_next
	.section	.text.sandisk_A19_readretry_init,"ax",%progbits
	.align	1
	.global	sandisk_A19_readretry_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_A19_readretry_init, %function
sandisk_A19_readretry_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #264]
	ldr	r2, .L2247
	push	{r4, lr}
	movs	r4, #0
	ldr	r3, [r3, #52]
	str	r4, [r0, #176]
	ubfx	r1, r3, #16, #8
	ldr	r0, .L2247+4
	strb	r1, [r2]
	lsrs	r2, r3, #8
	strb	r2, [r0]
	ldr	r0, .L2247+8
	strb	r3, [r0]
	sub	r3, r1, #50
	cmp	r3, #3
	bls	.L2245
	ldr	r0, .L2247+12
	bl	NAND_Print
	mvn	r0, #98
.L2244:
	pop	{r4, pc}
.L2245:
	uxtb	r1, r2
	ldr	r0, .L2247+16
	bl	NAND_Print_DBG
	mov	r0, r4
	b	.L2244
.L2248:
	.align	2
.L2247:
	.word	.LANCHOR48
	.word	.LANCHOR49
	.word	.LANCHOR50
	.word	.LC383
	.word	.LC384
	.size	sandisk_A19_readretry_init, .-sandisk_A19_readretry_init
	.section	.text.sandisk_A19_readretry_exit,"ax",%progbits
	.align	1
	.global	sandisk_A19_readretry_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_A19_readretry_exit, %function
sandisk_A19_readretry_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #0
	bx	lr
	.size	sandisk_A19_readretry_exit, .-sandisk_A19_readretry_exit
	.section	.text.sandisk_A19_read_retry_clock_save,"ax",%progbits
	.align	1
	.global	sandisk_A19_read_retry_clock_save
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_A19_read_retry_clock_save, %function
sandisk_A19_read_retry_clock_save:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	ldr	r3, .L2251
	ldr	r0, [r0, #260]
	ldr	r3, [r3]
	ldr	r2, .L2251+4
	ldr	r1, .L2251+8
	ldr	r0, [r0, #8]
	blx	r3
	ldr	r0, [r4, #260]
	movs	r2, #20
	ldr	r3, .L2251+12
	movs	r1, #10
	ldr	r0, [r0, #8]
	ldr	r3, [r3]
	blx	r3
	movs	r0, #0
	pop	{r4, pc}
.L2252:
	.align	2
.L2251:
	.word	NAND_GetClk
	.word	.LANCHOR51
	.word	.LANCHOR52
	.word	NAND_SetClk
	.size	sandisk_A19_read_retry_clock_save, .-sandisk_A19_read_retry_clock_save
	.section	.text.sandisk_A19_read_retry_clock_recover,"ax",%progbits
	.align	1
	.global	sandisk_A19_read_retry_clock_recover
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_A19_read_retry_clock_recover, %function
sandisk_A19_read_retry_clock_recover:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	ldr	r0, [r0, #260]
	ldr	r3, .L2254
	ldr	r2, .L2254+4
	ldr	r1, .L2254+8
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldr	r1, [r1]
	ldr	r0, [r0, #8]
	blx	r3
	movs	r0, #0
	pop	{r3, pc}
.L2255:
	.align	2
.L2254:
	.word	NAND_SetClk
	.word	.LANCHOR51
	.word	.LANCHOR52
	.size	sandisk_A19_read_retry_clock_recover, .-sandisk_A19_read_retry_clock_recover
	.section	.text.sandisk_A19_vender_set_param,"ax",%progbits
	.align	1
	.global	sandisk_A19_vender_set_param
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_A19_vender_set_param, %function
sandisk_A19_vender_set_param:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r3, r4, lr}
	movs	r4, #1
	movs	r3, #4
	str	r1, [sp]
	strd	r3, r4, [sp, #4]
	mov	r3, r2
	ldr	r1, .L2257
	mov	r2, r4
	bl	set_cmd_with_nand_bus
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L2258:
	.align	2
.L2257:
	.word	.LANCHOR53
	.size	sandisk_A19_vender_set_param, .-sandisk_A19_vender_set_param
	.section	.text.sandisk_A19_set_readretry,"ax",%progbits
	.align	1
	.global	sandisk_A19_set_readretry
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_A19_set_readretry, %function
sandisk_A19_set_readretry:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	bl	nand_enable_chip
	ldr	r0, [r4, #260]
	bl	ndfc_disable_randomize
	ldr	r3, .L2264
	ldr	r1, [r4, #176]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #52
	bne	.L2260
	ldr	r3, .L2264+4
	add	r1, r3, r1, lsl #2
.L2261:
	movs	r3, #1
	ldr	r2, .L2264+8
	mov	r0, r4
	bl	sandisk_A19_vender_set_param
	movs	r2, #0
	mov	r5, r0
	movs	r1, #93
	mov	r0, r4
	bl	set_one_cmd
	mov	r0, r4
	bl	nand_disable_chip
	mov	r0, r5
	pop	{r3, r4, r5, pc}
.L2260:
	cmp	r3, #53
	lsl	r1, r1, #2
	ite	eq
	ldreq	r3, .L2264+12
	ldrne	r3, .L2264+16
	add	r1, r1, r3
	b	.L2261
.L2265:
	.align	2
.L2264:
	.word	.LANCHOR48
	.word	.LANCHOR54
	.word	.LANCHOR57
	.word	.LANCHOR55
	.word	.LANCHOR56
	.size	sandisk_A19_set_readretry, .-sandisk_A19_set_readretry
	.section	.text.sandisk_A19_exit_readretry,"ax",%progbits
	.align	1
	.global	sandisk_A19_exit_readretry
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_A19_exit_readretry, %function
sandisk_A19_exit_readretry:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, lr}
	movs	r3, #0
	mov	r4, r0
	add	r5, sp, #8
	str	r3, [r5, #-4]!
	bl	nand_enable_chip
	ldr	r0, [r4, #260]
	bl	ndfc_disable_randomize
	movs	r2, #1
	movs	r1, #255
	mov	r0, r4
	bl	set_one_cmd
	mov	r1, r5
	movs	r3, #1
	ldr	r2, .L2267
	mov	r0, r4
	bl	sandisk_A19_vender_set_param
	mov	r5, r0
	mov	r0, r4
	bl	nand_disable_chip
	mov	r0, r5
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L2268:
	.align	2
.L2267:
	.word	.LANCHOR57
	.size	sandisk_A19_exit_readretry, .-sandisk_A19_exit_readretry
	.section	.text.sandisk_A19_read_page_end,"ax",%progbits
	.align	1
	.global	sandisk_A19_read_page_end
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_A19_read_page_end, %function
sandisk_A19_read_page_end:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L2317
	push	{r0, r1, r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r4, r0
	ldr	r1, [r0]
	ldr	r0, [r3]
	bl	nci_get_from_nsi
	mov	r5, r0
	mov	r0, r4
	bl	generic_read_page_end_not_retry
	adds	r3, r0, #2
	mov	r6, r0
	bne	.L2269
	ldr	r8, .L2317+28
	movs	r7, #0
	ldr	r0, .L2317+4
	bl	NAND_Print_DBG
	mov	r10, r8
.L2271:
	ldrb	r3, [r8]	@ zero_extendqisi2
	cmp	r3, r7
	bgt	.L2277
	ldr	r7, .L2317+8
	ldrb	r3, [r7]	@ zero_extendqisi2
	cmp	r3, #51
	beq	.L2278
	ldr	fp, .L2317+12
	mov	r8, #0
.L2279:
	ldrb	r3, [r10]	@ zero_extendqisi2
	cmp	r3, r8
	bgt	.L2285
	ldr	fp, .L2317+12
	mov	r8, #0
.L2286:
	ldrb	r3, [r10]	@ zero_extendqisi2
	cmp	r3, r8
	bgt	.L2292
.L2278:
	ldr	fp, .L2317+12
	mov	r8, #0
.L2293:
	ldrb	r3, [r10]	@ zero_extendqisi2
	cmp	r3, r8
	bgt	.L2307
.L2308:
	movs	r3, #0
	mov	r0, r5
	str	r3, [r5, #176]
	bl	sandisk_A19_exit_readretry
.L2269:
	mov	r0, r6
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L2277:
	str	r7, [r5, #176]
	mov	r0, r5
	ldrh	r1, [r4, #8]
	bl	sandisk_A19_set_readretry
	mov	r6, r0
	cbz	r0, .L2272
	ldr	r0, .L2317+12
	bl	NAND_Print_DBG
.L2273:
	adds	r7, r7, #1
	b	.L2271
.L2272:
	mov	r0, r4
	bl	generic_read_page_start
	mov	r6, r0
	mov	r0, r4
	bl	generic_read_page_end_not_retry
	orrs	r6, r6, r0
	ldr	r0, [r4, #20]
	bl	is_nouse_page
	cmp	r0, #1
	bne	.L2274
	ldr	r3, [r5, #176]
	mvn	r6, #1
	ldr	r1, [r5, #260]
	ldr	r0, .L2317+16
	str	r3, [sp, #4]
	ldr	r3, [r4, #8]
	str	r3, [sp]
	ldr	r3, [r4, #4]
	ldr	r2, [r5, #20]
	ldr	r1, [r1, #8]
	bl	NAND_Print_DBG
	b	.L2273
.L2274:
	cmp	r6, #10
	beq	.L2305
	cmp	r6, #0
	bne	.L2273
.L2306:
	ldr	r3, [r5, #176]
	movs	r6, #10
	ldr	r1, [r5, #260]
	ldr	r0, .L2317+20
	str	r3, [sp, #4]
	ldr	r3, [r4, #8]
	str	r3, [sp]
	ldr	r3, [r4, #4]
	ldr	r2, [r5, #20]
	ldr	r1, [r1, #8]
	bl	NAND_Print_DBG
	b	.L2308
.L2285:
	str	r8, [r5, #176]
	mov	r0, r5
	ldrh	r1, [r4, #8]
	bl	sandisk_A19_set_readretry
	mov	r6, r0
	cbz	r0, .L2280
	mov	r0, fp
	bl	NAND_Print_DBG
.L2281:
	add	r8, r8, #1
	b	.L2279
.L2280:
	mov	r0, r4
	bl	sandisk_A19_dsp_on
	mov	r0, r4
	bl	generic_read_page_start
	mov	r6, r0
	mov	r0, r4
	bl	generic_read_page_end_not_retry
	orrs	r6, r6, r0
	ldr	r0, [r4, #20]
	bl	is_nouse_page
	cmp	r0, #1
	bne	.L2282
	ldr	r3, [r5, #176]
	mvn	r6, #1
	ldr	r1, [r5, #260]
	ldr	r0, .L2317+16
	str	r3, [sp, #4]
	ldr	r3, [r4, #8]
	str	r3, [sp]
	ldr	r3, [r4, #4]
	ldr	r2, [r5, #20]
	ldr	r1, [r1, #8]
	bl	NAND_Print_DBG
	b	.L2281
.L2282:
	cmp	r6, #10
	beq	.L2305
	cmp	r6, #0
	bne	.L2281
	b	.L2306
.L2292:
	str	r8, [r5, #176]
	mov	r0, r5
	ldrh	r1, [r4, #8]
	bl	sandisk_A19_set_readretry
	mov	r6, r0
	cbz	r0, .L2287
	mov	r0, fp
	bl	NAND_Print_DBG
.L2288:
	add	r8, r8, #1
	b	.L2286
.L2287:
	mov	r0, r4
	bl	sandisk_A19_cmd25
	mov	r0, r4
	bl	generic_read_page_start
	mov	r6, r0
	mov	r0, r4
	bl	generic_read_page_end_not_retry
	orrs	r6, r6, r0
	ldr	r0, [r4, #20]
	bl	is_nouse_page
	cmp	r0, #1
	bne	.L2289
	ldr	r3, [r5, #176]
	mvn	r6, #1
	ldr	r1, [r5, #260]
	ldr	r0, .L2317+16
	str	r3, [sp, #4]
	ldr	r3, [r4, #8]
	str	r3, [sp]
	ldr	r3, [r4, #4]
	ldr	r2, [r5, #20]
	ldr	r1, [r1, #8]
	bl	NAND_Print_DBG
	b	.L2288
.L2289:
	cmp	r6, #10
	beq	.L2305
	cmp	r6, #0
	bne	.L2288
	b	.L2306
.L2307:
	str	r8, [r5, #176]
	mov	r0, r5
	ldrh	r1, [r4, #8]
	bl	sandisk_A19_set_readretry
	mov	r6, r0
	cbz	r0, .L2294
	mov	r0, fp
	bl	NAND_Print_DBG
.L2295:
	add	r8, r8, #1
	b	.L2293
.L2294:
	ldrb	r3, [r7]	@ zero_extendqisi2
	cmp	r3, #52
	bne	.L2296
	movs	r1, #198
.L2315:
	mov	r0, r4
	bl	sandisk_A19_set_lmflgfix_next
	mov	r0, r4
	bl	sandisk_A19_cmd25
	ldrb	r3, [r7]	@ zero_extendqisi2
	cmp	r3, #50
	beq	.L2299
	subs	r3, r3, #52
	cmp	r3, #1
	bhi	.L2300
.L2299:
	mov	r0, r4
	bl	sandisk_A19_dsp_on
.L2300:
	mov	r0, r4
	bl	generic_read_page_start
	mov	r6, r0
	mov	r0, r4
	bl	generic_read_page_end_not_retry
	ldrb	r3, [r7]	@ zero_extendqisi2
	orrs	r6, r6, r0
	cmp	r3, #52
	bne	.L2301
	movs	r1, #194
.L2316:
	mov	r0, r4
	bl	sandisk_A19_set_lmflgfix_next
	ldr	r0, [r4, #20]
	bl	is_nouse_page
	cmp	r0, #1
	bne	.L2304
	ldr	r3, [r5, #176]
	mvn	r6, #1
	ldr	r1, [r5, #260]
	ldr	r0, .L2317+16
	str	r3, [sp, #4]
	ldr	r3, [r4, #8]
	str	r3, [sp]
	ldr	r3, [r4, #4]
	ldr	r2, [r5, #20]
	ldr	r1, [r1, #8]
	bl	NAND_Print_DBG
	b	.L2295
.L2296:
	cmp	r3, #53
	ite	eq
	moveq	r1, #26
	movne	r1, #192
	b	.L2315
.L2301:
	cmp	r3, #53
	ite	eq
	moveq	r1, #10
	movne	r1, #64
	b	.L2316
.L2304:
	cmp	r6, #10
	beq	.L2305
	cmp	r6, #0
	bne	.L2295
	b	.L2306
.L2305:
	ldr	r3, [r5, #176]
	ldr	r1, [r5, #260]
	ldr	r0, .L2317+24
	str	r3, [sp, #4]
	ldr	r3, [r4, #8]
	str	r3, [sp]
	ldr	r3, [r4, #4]
	ldr	r2, [r5, #20]
	ldr	r1, [r1, #8]
	bl	NAND_Print_DBG
	b	.L2308
.L2318:
	.align	2
.L2317:
	.word	g_nsi
	.word	.LC385
	.word	.LANCHOR48
	.word	.LC386
	.word	.LC387
	.word	.LC388
	.word	.LC389
	.word	.LANCHOR49
	.size	sandisk_A19_read_page_end, .-sandisk_A19_read_page_end
	.section	.text.sandisk_A19_special_init,"ax",%progbits
	.align	1
	.global	sandisk_A19_special_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_A19_special_init, %function
sandisk_A19_special_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	movs	r4, #0
	ldr	r3, .L2324
	ldr	r3, [r3]
	ldr	r5, [r3, #8]
.L2320:
	cbnz	r5, .L2321
	ldr	r3, .L2324+4
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, .L2324+8
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, .L2324+12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cbnz	r4, .L2322
	ldr	r0, .L2324+16
	ldr	r5, .L2324+20
	str	r5, [r0]
	ldr	r0, .L2324+24
	bl	NAND_Print_DBG
.L2319:
	mov	r0, r4
	pop	{r3, r4, r5, pc}
.L2321:
	mov	r0, r5
	bl	sandisk_A19_readretry_init
	ldr	r5, [r5]
	orrs	r4, r4, r0
	b	.L2320
.L2322:
	ldr	r0, .L2324+28
	bl	NAND_Print
	b	.L2319
.L2325:
	.align	2
.L2324:
	.word	g_nsi
	.word	.LANCHOR48
	.word	.LANCHOR49
	.word	.LANCHOR50
	.word	df_read_page_end
	.word	sandisk_A19_read_page_end
	.word	.LC390
	.word	.LC391
	.size	sandisk_A19_special_init, .-sandisk_A19_special_init
	.section	.text.sandisk_A19_special_exit,"ax",%progbits
	.align	1
	.global	sandisk_A19_special_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_A19_special_exit, %function
sandisk_A19_special_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L2337
	push	{r4, r5, r6, lr}
	movs	r6, #0
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
.L2327:
	cbnz	r4, .L2330
	ldr	r0, .L2337+4
	mov	r5, r4
	bl	NAND_Print_DBG
	b	.L2326
.L2330:
	ldrb	r3, [r4, #254]	@ zero_extendqisi2
	cbz	r3, .L2328
	str	r6, [r4, #196]
	mov	r0, r4
	bl	sandisk_toggle_vendor_specific_setting
	mov	r5, r0
	cbz	r0, .L2328
	ldr	r1, .L2337+8
	ldr	r0, .L2337+12
	bl	NAND_Print
.L2326:
	mov	r0, r5
	pop	{r4, r5, r6, pc}
.L2328:
	ldr	r4, [r4]
	b	.L2327
.L2338:
	.align	2
.L2337:
	.word	g_nsi
	.word	.LC393
	.word	.LANCHOR58
	.word	.LC392
	.size	sandisk_A19_special_exit, .-sandisk_A19_special_exit
	.section	.text.sandisk_A19_check_bad_block_first_burn,"ax",%progbits
	.align	1
	.global	sandisk_A19_check_bad_block_first_burn
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_A19_check_bad_block_first_burn, %function
sandisk_A19_check_bad_block_first_burn:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L2343
	push	{r0, r1, r2, r4, r5, r6, r7, r8, r10, lr}
	mov	r8, r0
	ldr	r1, [r0]
	ldr	r0, [r3]
	bl	nci_get_from_nsi
	ldr	r4, [r0, #260]
	mov	r5, r0
	ldr	r2, [r0, #20]
	ldr	r1, [r8, #4]
	ldr	r3, [r4, #12]
	add	r10, r4, #32
	ldr	r0, [r0, #24]
	cmp	r2, r3
	bcs	.L2340
	cmp	r1, r0
	bcc	.L2341
.L2340:
	strd	r1, r0, [sp]
	ldr	r1, [r4, #8]
	mvn	r4, #9
	ldr	r0, .L2343+4
	bl	NAND_Print
.L2339:
	mov	r0, r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, pc}
.L2341:
	mov	r0, r4
	movs	r6, #1
	bl	ndfc_disable_randomize
	mov	r0, r5
	movs	r7, #0
	bl	nand_read_chip_status_ready
	mov	r0, r5
	bl	nand_enable_chip
	mov	r0, r10
	bl	ndfc_clean_cmd_seq
	movs	r3, #162
	ldrd	r1, r2, [r8, #4]
	strd	r6, r3, [r4, #40]
	movs	r3, #128
	strd	r6, r3, [r4, #104]
	str	r7, [r4, #32]
	strd	r6, r7, [r4, #48]
	strd	r6, r7, [r4, #112]
	ldr	r0, [r5, #36]
	bl	get_row_addr
	movs	r3, #5
	mov	r2, r0
	str	r3, [r4, #136]
	add	r3, r4, #120
	str	r3, [sp]
	movs	r1, #2
	movs	r3, #3
	mov	r0, r7
	bl	fill_cmd_addr
	movs	r3, #16
	strd	r6, r6, [r4, #176]
	strd	r6, r3, [r4, #168]
	mov	r1, r10
	ldr	r0, [r5, #260]
	bl	ndfc_execute_cmd
	mov	r0, r5
	bl	nand_read_chip_status_ready
	mov	r4, r0
	mov	r0, r5
	bl	nand_disable_chip
	b	.L2339
.L2344:
	.align	2
.L2343:
	.word	g_nsi
	.word	.LC343
	.size	sandisk_A19_check_bad_block_first_burn, .-sandisk_A19_check_bad_block_first_burn
	.section	.text.sandisk_read_retry_clock_save,"ax",%progbits
	.align	1
	.global	sandisk_read_retry_clock_save
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_read_retry_clock_save, %function
sandisk_read_retry_clock_save:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	ldr	r3, .L2346
	ldr	r0, [r0, #260]
	ldr	r3, [r3]
	ldr	r2, .L2346+4
	ldr	r1, .L2346+8
	ldr	r0, [r0, #8]
	blx	r3
	ldr	r0, [r4, #260]
	movs	r2, #20
	ldr	r3, .L2346+12
	movs	r1, #10
	ldr	r0, [r0, #8]
	ldr	r3, [r3]
	blx	r3
	movs	r0, #0
	pop	{r4, pc}
.L2347:
	.align	2
.L2346:
	.word	NAND_GetClk
	.word	.LANCHOR59
	.word	.LANCHOR60
	.word	NAND_SetClk
	.size	sandisk_read_retry_clock_save, .-sandisk_read_retry_clock_save
	.section	.text.sandisk_vender_set_param,"ax",%progbits
	.align	1
	.global	sandisk_vender_set_param
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_vender_set_param, %function
sandisk_vender_set_param:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, lr}
	mov	r6, r2
	ldr	r2, .L2352
	sub	sp, sp, #20
	mov	r5, r0
	mov	r7, r1
	movs	r4, #0
	ldrb	r3, [r2]	@ zero_extendqisi2
	mov	r8, r2
	subs	r3, r3, #48
	cmp	r3, #1
	bhi	.L2351
	movs	r3, #2
	mov	r2, r4
	strd	r4, r3, [sp, #4]
	mov	r3, r4
	ldr	r1, .L2352+4
	str	r4, [sp]
	bl	set_cmd_with_nand_bus
	movs	r3, #1
	movs	r2, #3
	strd	r3, r2, [sp, #4]
	mov	r10, r0
	str	r7, [sp]
	mov	r3, r6
	mov	r2, r4
	ldr	r1, .L2352+8
	mov	r0, r5
	bl	set_cmd_with_nand_bus
	orr	r0, r10, r0
.L2349:
	ldrb	r3, [r8]	@ zero_extendqisi2
	cmp	r3, #50
	bne	.L2348
	movs	r3, #4
	movs	r2, #1
	strd	r3, r2, [sp, #4]
	mov	r0, r5
	str	r7, [sp]
	mov	r3, r6
	ldr	r1, .L2352+12
	bl	set_cmd_with_nand_bus
.L2348:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, pc}
.L2351:
	mov	r0, r4
	b	.L2349
.L2353:
	.align	2
.L2352:
	.word	.LANCHOR61
	.word	.LANCHOR62
	.word	.LANCHOR63
	.word	.LANCHOR64
	.size	sandisk_vender_set_param, .-sandisk_vender_set_param
	.section	.text.sandisk_read_retry_clock_recover,"ax",%progbits
	.align	1
	.global	sandisk_read_retry_clock_recover
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_read_retry_clock_recover, %function
sandisk_read_retry_clock_recover:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	ldr	r0, [r0, #260]
	ldr	r3, .L2355
	ldr	r2, .L2355+4
	ldr	r1, .L2355+8
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldr	r1, [r1]
	ldr	r0, [r0, #8]
	blx	r3
	movs	r0, #0
	pop	{r3, pc}
.L2356:
	.align	2
.L2355:
	.word	NAND_SetClk
	.word	.LANCHOR59
	.word	.LANCHOR60
	.size	sandisk_read_retry_clock_recover, .-sandisk_read_retry_clock_recover
	.section	.text.sandisk_end_one_read_retry,"ax",%progbits
	.align	1
	.global	sandisk_end_one_read_retry
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_end_one_read_retry, %function
sandisk_end_one_read_retry:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L2364
	push	{r4, r5, lr}
	mov	r4, r0
	sub	sp, sp, #20
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #1
	bhi	.L2358
	bl	nand_enable_chip
	ldr	r0, [r4, #260]
	bl	ndfc_disable_randomize
	ldr	r0, [r4, #260]
	bl	ndfc_is_toggle_interface
	ldr	r5, .L2364+4
	cbz	r0, .L2359
	ldr	r0, [r4, #260]
	bl	ndfc_set_legacy_interface
	movs	r3, #1
	str	r3, [r5]
.L2359:
	movs	r3, #0
	movs	r2, #1
	strd	r3, r2, [sp, #4]
	mov	r0, r4
	str	r3, [sp]
	mov	r2, r3
	ldr	r1, .L2364+8
	bl	set_cmd_with_nand_bus
	ldr	r3, [r5]
	cmp	r3, #1
	bne	.L2360
	ldr	r0, [r4, #260]
	bl	ndfc_set_toggle_interface
.L2360:
	mov	r0, r4
	bl	nand_disable_chip
.L2358:
	movs	r0, #0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, pc}
.L2365:
	.align	2
.L2364:
	.word	.LANCHOR61
	.word	.LANCHOR65
	.word	.LANCHOR66
	.size	sandisk_end_one_read_retry, .-sandisk_end_one_read_retry
	.section	.text.sandisk_set_readretry,"ax",%progbits
	.align	1
	.global	sandisk_set_readretry
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_set_readretry, %function
sandisk_set_readretry:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	mov	r6, r1
	ldr	r5, .L2391
	bl	sandisk_read_retry_clock_save
	mov	r0, r4
	bl	nand_enable_chip
	ldr	r0, [r4, #260]
	bl	ndfc_disable_randomize
	ldr	r0, [r4, #260]
	bl	ndfc_is_toggle_interface
	cbz	r0, .L2367
	ldr	r0, [r4, #260]
	bl	ndfc_set_legacy_interface
	movs	r3, #1
	str	r3, [r5]
.L2367:
	ldr	r3, .L2391+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #48
	bne	.L2368
	cmp	r6, #255
	ldr	r3, [r4, #176]
	ldr	r2, .L2391+8
	beq	.L2369
	cbz	r6, .L2370
	lsls	r1, r6, #31
	bpl	.L2369
.L2370:
	ldr	r1, .L2391+12
	add	r3, r3, r3, lsl #1
	add	r1, r1, r3
	movs	r3, #16
.L2388:
	strb	r3, [r2]
	movs	r3, #3
	ldr	r2, .L2391+16
.L2390:
	mov	r0, r4
	bl	sandisk_vender_set_param
	movs	r2, #0
	mov	r6, r0
	movs	r1, #182
.L2389:
	mov	r0, r4
	bl	set_one_cmd
.L2372:
	ldr	r3, [r5]
	cmp	r3, #1
	bne	.L2374
	ldr	r0, [r4, #260]
	bl	ndfc_set_toggle_interface
.L2374:
	mov	r0, r4
	bl	nand_disable_chip
	mov	r0, r4
	bl	sandisk_read_retry_clock_recover
	mov	r0, r6
	pop	{r4, r5, r6, pc}
.L2369:
	ldr	r1, .L2391+20
	add	r3, r3, r3, lsl #1
	add	r1, r1, r3
	movs	r3, #20
	b	.L2388
.L2368:
	cmp	r3, #49
	bne	.L2373
	ldr	r1, [r4, #176]
	movs	r3, #3
	ldr	r0, .L2391+24
	ldr	r2, .L2391+28
	add	r1, r1, r1, lsl #1
	add	r1, r1, r0
	b	.L2390
.L2373:
	cmp	r3, #50
	bne	.L2375
	ldr	r0, [r4, #176]
	movs	r3, #1
	ldr	r1, .L2391+32
	ldr	r2, .L2391+36
	add	r1, r1, r0, lsl #2
	mov	r0, r4
	bl	sandisk_vender_set_param
	movs	r2, #0
	mov	r6, r0
	movs	r1, #93
	b	.L2389
.L2375:
	movs	r6, #0
	b	.L2372
.L2392:
	.align	2
.L2391:
	.word	.LANCHOR65
	.word	.LANCHOR61
	.word	.LANCHOR68
	.word	.LANCHOR67
	.word	.LANCHOR70
	.word	.LANCHOR69
	.word	.LANCHOR72
	.word	.LANCHOR71
	.word	.LANCHOR74
	.word	.LANCHOR73
	.size	sandisk_set_readretry, .-sandisk_set_readretry
	.section	.text.sandisk_activation_seq,"ax",%progbits
	.align	1
	.global	sandisk_activation_seq
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_activation_seq, %function
sandisk_activation_seq:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r8, #9
	sub	sp, sp, #40
	mov	r6, r0
	mov	r2, r8
	add	r0, sp, #16
	ldr	r1, .L2398
	movs	r4, #0
	bl	memcpy
	mov	r0, r6
	strd	r4, r4, [sp, #28]
	strb	r4, [sp, #36]
	add	r7, sp, #28
	bl	nand_enable_chip
	ldr	r0, [r6, #260]
	bl	ndfc_disable_randomize
	movs	r3, #2
	mov	r2, r4
	strd	r4, r3, [sp, #4]
	mov	r0, r6
	mov	r3, r4
	ldr	r1, .L2398+4
	str	r4, [sp]
	bl	set_cmd_with_nand_bus
	movs	r3, #1
	mov	r5, r0
	strd	r7, r3, [sp]
	mov	r2, r4
	str	r8, [sp, #8]
	add	r1, sp, #16
	ldr	r3, .L2398+8
	mov	r0, r6
	bl	set_cmd_with_nand_bus
	orrs	r5, r5, r0
	mov	r0, r6
	bl	nand_disable_chip
	cbz	r5, .L2393
	mov	r1, r5
	ldr	r0, .L2398+12
	bl	NAND_Print
.L2393:
	mov	r0, r5
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L2399:
	.align	2
.L2398:
	.word	.LANCHOR0+16
	.word	.LANCHOR62
	.word	.LANCHOR75
	.word	.LC394
	.size	sandisk_activation_seq, .-sandisk_activation_seq
	.section	.text.sandisk_readretry_init,"ax",%progbits
	.align	1
	.global	sandisk_readretry_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_readretry_init, %function
sandisk_readretry_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	movs	r2, #0
	ldr	r3, [r0, #264]
	str	r2, [r0, #176]
	ldr	r4, [r3, #52]
	ldr	r2, .L2404
	ldr	r3, .L2404+4
	ubfx	r1, r4, #16, #8
	lsrs	r5, r4, #8
	strb	r1, [r2]
	subs	r1, r1, #48
	strb	r5, [r3]
	cmp	r1, #1
	ldr	r5, .L2404+8
	strb	r4, [r5]
	mov	r5, r2
	mov	r4, r3
	bhi	.L2401
	bl	sandisk_activation_seq
.L2401:
	ldrb	r3, [r5]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #2
	bhi	.L2403
	ldrb	r1, [r4]	@ zero_extendqisi2
	ldr	r0, .L2404+12
	bl	NAND_Print_DBG
	movs	r0, #0
.L2400:
	pop	{r3, r4, r5, pc}
.L2403:
	mvn	r0, #98
	b	.L2400
.L2405:
	.align	2
.L2404:
	.word	.LANCHOR61
	.word	.LANCHOR68
	.word	.LANCHOR76
	.word	.LC395
	.size	sandisk_readretry_init, .-sandisk_readretry_init
	.section	.text.sandisk_readretry_exit,"ax",%progbits
	.align	1
	.global	sandisk_readretry_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_readretry_exit, %function
sandisk_readretry_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #0
	bx	lr
	.size	sandisk_readretry_exit, .-sandisk_readretry_exit
	.section	.text.sandisk_exit_readretry,"ax",%progbits
	.align	1
	.global	sandisk_exit_readretry
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_exit_readretry, %function
sandisk_exit_readretry:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, r5, r6, lr}
	movs	r3, #0
	mov	r4, r0
	str	r3, [sp, #4]
	bl	nand_enable_chip
	ldr	r0, [r4, #260]
	bl	ndfc_disable_randomize
	ldr	r0, [r4, #260]
	bl	ndfc_is_toggle_interface
	ldr	r6, .L2418
	cbz	r0, .L2408
	ldr	r0, [r4, #260]
	bl	ndfc_set_legacy_interface
	movs	r3, #1
	str	r3, [r6]
.L2408:
	ldr	r3, .L2418+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #48
	bne	.L2409
	ldr	r2, .L2418+8
	movs	r3, #3
.L2417:
	add	r1, sp, #4
	mov	r0, r4
	bl	sandisk_vender_set_param
	mov	r5, r0
.L2410:
	ldr	r3, [r6]
	cmp	r3, #1
	bne	.L2412
	ldr	r0, [r4, #260]
	bl	ndfc_set_toggle_interface
.L2412:
	mov	r0, r4
	bl	nand_disable_chip
	mov	r0, r5
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L2409:
	cmp	r3, #49
	bne	.L2411
	movs	r3, #3
	ldr	r2, .L2418+12
	b	.L2417
.L2411:
	cmp	r3, #50
	bne	.L2413
	movs	r2, #1
	movs	r1, #255
	mov	r0, r4
	bl	set_one_cmd
	movs	r3, #1
	ldr	r2, .L2418+16
	b	.L2417
.L2413:
	movs	r5, #0
	b	.L2410
.L2419:
	.align	2
.L2418:
	.word	.LANCHOR65
	.word	.LANCHOR61
	.word	.LANCHOR70
	.word	.LANCHOR71
	.word	.LANCHOR73
	.size	sandisk_exit_readretry, .-sandisk_exit_readretry
	.section	.text.sandisk_read_page_end,"ax",%progbits
	.align	1
	.global	sandisk_read_page_end
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_read_page_end, %function
sandisk_read_page_end:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L2431
	push	{r0, r1, r2, r4, r5, r6, r7, r8, r10, lr}
	mov	r6, r0
	ldr	r1, [r0]
	ldr	r0, [r3]
	bl	nci_get_from_nsi
	mov	r5, r0
	mov	r0, r6
	bl	generic_read_page_end_not_retry
	adds	r3, r0, #2
	mov	r4, r0
	bne	.L2420
	ldr	r8, .L2431+12
	movs	r7, #0
	ldr	r10, .L2431+16
	ldr	r0, .L2431+4
	bl	NAND_Print_DBG
.L2422:
	ldrb	r3, [r8]	@ zero_extendqisi2
	cmp	r3, r7
	ble	.L2426
	str	r7, [r5, #176]
	mov	r0, r5
	ldrh	r1, [r6, #8]
	bl	sandisk_set_readretry
	mov	r4, r0
	cbnz	r0, .L2423
	mov	r0, r6
	bl	generic_read_page_start
	mov	r4, r0
	mov	r0, r6
	bl	generic_read_page_end_not_retry
	orrs	r4, r4, r0
	mov	r0, r5
	bl	sandisk_end_one_read_retry
	ldr	r0, [r6, #20]
	bl	is_nouse_page
	cmp	r0, #1
	bne	.L2424
	ldr	r3, [r5, #176]
	mvn	r4, #1
	ldr	r1, [r5, #260]
	mov	r0, r10
	str	r3, [sp, #4]
	ldr	r3, [r6, #8]
	str	r3, [sp]
	ldr	r3, [r6, #4]
	ldr	r2, [r5, #20]
	ldr	r1, [r1, #8]
	bl	NAND_Print_DBG
.L2423:
	adds	r7, r7, #1
	b	.L2422
.L2424:
	cmp	r4, #10
	beq	.L2425
	cmp	r4, #0
	bne	.L2423
.L2425:
	ldr	r3, [r5, #176]
	movs	r4, #10
	ldr	r1, [r5, #260]
	ldr	r0, .L2431+8
	str	r3, [sp, #4]
	ldr	r3, [r6, #8]
	str	r3, [sp]
	ldr	r3, [r6, #4]
	ldr	r2, [r5, #20]
	ldr	r1, [r1, #8]
	bl	NAND_Print_DBG
.L2426:
	movs	r3, #0
	mov	r0, r5
	str	r3, [r5, #176]
	bl	sandisk_exit_readretry
.L2420:
	mov	r0, r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, pc}
.L2432:
	.align	2
.L2431:
	.word	g_nsi
	.word	.LC396
	.word	.LC397
	.word	.LANCHOR68
	.word	.LC387
	.size	sandisk_read_page_end, .-sandisk_read_page_end
	.section	.text.sandisk_special_init,"ax",%progbits
	.align	1
	.global	sandisk_special_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_special_init, %function
sandisk_special_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	movs	r4, #0
	ldr	r3, .L2438
	ldr	r3, [r3]
	ldr	r5, [r3, #8]
.L2434:
	cbnz	r5, .L2435
	ldr	r3, .L2438+4
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, .L2438+8
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, .L2438+12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cbnz	r4, .L2436
	ldr	r0, .L2438+16
	ldr	r5, .L2438+20
	str	r5, [r0]
	ldr	r0, .L2438+24
	bl	NAND_Print_DBG
.L2433:
	mov	r0, r4
	pop	{r3, r4, r5, pc}
.L2435:
	mov	r0, r5
	bl	sandisk_readretry_init
	ldr	r5, [r5]
	orrs	r4, r4, r0
	b	.L2434
.L2436:
	ldr	r0, .L2438+28
	bl	NAND_Print
	b	.L2433
.L2439:
	.align	2
.L2438:
	.word	g_nsi
	.word	.LANCHOR61
	.word	.LANCHOR68
	.word	.LANCHOR76
	.word	df_read_page_end
	.word	sandisk_read_page_end
	.word	.LC398
	.word	.LC399
	.size	sandisk_special_init, .-sandisk_special_init
	.section	.text.sandisk_special_exit,"ax",%progbits
	.align	1
	.global	sandisk_special_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sandisk_special_exit, %function
sandisk_special_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L2443
	push	{r4, lr}
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
.L2441:
	cbnz	r4, .L2442
	ldr	r0, .L2443+4
	bl	NAND_Print_DBG
	mov	r0, r4
	pop	{r4, pc}
.L2442:
	ldr	r4, [r4]
	b	.L2441
.L2444:
	.align	2
.L2443:
	.word	g_nsi
	.word	.LC400
	.size	sandisk_special_exit, .-sandisk_special_exit
	.section	.text.hynix20nm_vender_set_param,"ax",%progbits
	.align	1
	.global	hynix20nm_vender_set_param
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_vender_set_param, %function
hynix20nm_vender_set_param:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, lr}
	mov	r4, r2
	sub	sp, sp, #28
	mov	r7, r3
	mov	r6, r0
	movs	r3, #54
	add	r8, sp, #24
	add	r7, r7, r4
	mov	r10, #1
	mov	r5, r1
	strb	r3, [r8, #-1]!
	bl	nand_enable_chip
	ldr	r0, [r6, #260]
	bl	ndfc_disable_randomize
.L2446:
	cmp	r4, r7
	bne	.L2447
	mov	r0, r6
	bl	nand_disable_chip
	movs	r0, #0
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, pc}
.L2447:
	mov	r3, r4
	str	r5, [sp]
	movs	r2, #0
	mov	r1, r8
	strd	r10, r10, [sp, #4]
	mov	r0, r6
	bl	set_cmd_with_nand_bus
	movs	r2, #0
	movs	r1, #22
	mov	r0, r6
	adds	r4, r4, #1
	bl	set_one_cmd
	adds	r5, r5, #1
	b	.L2446
	.size	hynix20nm_vender_set_param, .-hynix20nm_vender_set_param
	.section	.text.hynix20nm_set_readretry,"ax",%progbits
	.align	1
	.global	hynix20nm_set_readretry
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_set_readretry, %function
hynix20nm_set_readretry:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L2455
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	ldr	r1, [r0, #176]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r1, r3
	bhi	.L2454
	ldr	r5, .L2455+4
	lsls	r1, r1, #3
	movs	r2, #0
	ldrb	r3, [r5]	@ zero_extendqisi2
.L2450:
	cmp	r3, r2
	bhi	.L2451
	ldr	r7, .L2455+8
	mov	r1, sp
	ldr	r2, .L2455+12
	movs	r4, #0
	bl	hynix20nm_vender_set_param
	mov	r6, r0
	ldr	r0, .L2455+16
	bl	NAND_Print_DBG
.L2452:
	ldrb	r3, [r5]	@ zero_extendqisi2
	cmp	r3, r4
	bhi	.L2453
	ldr	r0, .L2455+20
	bl	NAND_Print_DBG
.L2448:
	mov	r0, r6
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L2451:
	adds	r4, r1, r2
	add	r4, r4, r0
	ldrb	r4, [r4, #48]	@ zero_extendqisi2
	strb	r4, [sp, r2]
	adds	r2, r2, #1
	b	.L2450
.L2453:
	ldrb	r1, [sp, r4]	@ zero_extendqisi2
	mov	r0, r7
	bl	NAND_Print_DBG
	adds	r4, r4, #1
	b	.L2452
.L2454:
	mvn	r6, #91
	b	.L2448
.L2456:
	.align	2
.L2455:
	.word	.LANCHOR77
	.word	.LANCHOR78
	.word	.LC402
	.word	.LANCHOR79
	.word	.LC401
	.word	.LC7
	.size	hynix20nm_set_readretry, .-hynix20nm_set_readretry
	.section	.text.hynix20nm_read_page_end,"ax",%progbits
	.align	1
	.global	hynix20nm_read_page_end
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_read_page_end, %function
hynix20nm_read_page_end:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L2473
	push	{r0, r1, r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r6, r0
	ldr	r1, [r0]
	ldr	r0, [r3]
	bl	nci_get_from_nsi
	mov	r5, r0
	mov	r0, r6
	bl	generic_read_page_end_not_retry
	adds	r3, r0, #2
	mov	r4, r0
	bne	.L2457
	ldr	r8, .L2473+16
	movs	r7, #0
	ldr	r10, .L2473+20
	ldr	r0, .L2473+4
	bl	NAND_Print_DBG
.L2459:
	ldrb	r2, [r8]	@ zero_extendqisi2
	cmp	r2, r7
	ble	.L2463
	ldr	r3, [r5, #176]
	mov	r0, r5
	adds	r3, r3, #1
	cmp	r3, r2
	it	hi
	movhi	r3, #0
	str	r3, [r5, #176]
	bl	hynix20nm_set_readretry
	mov	r4, r0
	cbz	r0, .L2462
	movs	r3, #0
	mov	r0, r5
	str	r3, [r5, #176]
	bl	hynix20nm_set_readretry
.L2463:
	movs	r3, #0
	mov	r0, r5
	str	r3, [r5, #176]
	bl	hynix20nm_set_readretry
.L2457:
	mov	r0, r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L2462:
	mov	r0, r6
	bl	generic_read_page_start
	mov	r4, r0
	mov	r0, r6
	bl	generic_read_page_end_not_retry
	ldr	fp, [r6, #20]
	orrs	r4, r4, r0
	mov	r0, fp
	bl	is_nouse_page
	cmp	r0, #1
	bne	.L2464
	ldr	r3, [r5, #176]
	mvn	r4, #1
	ldr	r1, [r5, #260]
	mov	r0, r10
	str	r3, [sp, #4]
	ldr	r3, [r6, #8]
	str	r3, [sp]
	ldr	r3, [r6, #4]
	ldr	r2, [r5, #20]
	ldr	r1, [r1, #8]
	bl	NAND_Print_DBG
.L2465:
	adds	r7, r7, #1
	b	.L2459
.L2464:
	cmp	r4, #10
	bne	.L2466
.L2467:
	ldrb	r0, [fp, #4]	@ zero_extendqisi2
	movs	r4, #10
	ldrb	r3, [fp, #3]	@ zero_extendqisi2
	ldrb	r2, [fp, #2]	@ zero_extendqisi2
	ldrb	r1, [fp, #1]	@ zero_extendqisi2
	str	r0, [sp]
	ldr	r0, .L2473+8
	bl	NAND_Print_DBG
	ldr	r3, [r5, #176]
	ldr	r1, [r5, #260]
	ldr	r0, .L2473+12
	str	r3, [sp, #4]
	ldr	r3, [r6, #8]
	str	r3, [sp]
	ldr	r3, [r6, #4]
	ldr	r2, [r5, #20]
	ldr	r1, [r1, #8]
	bl	NAND_Print_DBG
	b	.L2463
.L2466:
	cmp	r4, #0
	bne	.L2465
	b	.L2467
.L2474:
	.align	2
.L2473:
	.word	g_nsi
	.word	.LC403
	.word	.LC404
	.word	.LC405
	.word	.LANCHOR77
	.word	.LC387
	.size	hynix20nm_read_page_end, .-hynix20nm_read_page_end
	.section	.text.hynix20nm_vender_get_param,"ax",%progbits
	.align	1
	.global	hynix20nm_vender_get_param
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_vender_get_param, %function
hynix20nm_vender_get_param:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, lr}
	mov	r7, r3
	sub	sp, sp, #20
	mov	r4, r2
	mov	r6, r0
	mov	r5, r1
	add	r7, r7, r4
	mov	r10, #1
	bl	nand_enable_chip
	ldr	r0, [r6, #260]
	add	r8, sp, #16
	bl	ndfc_disable_randomize
	movs	r3, #55
	strb	r3, [r8, #-1]!
.L2476:
	cmp	r4, r7
	bne	.L2477
	mov	r0, r6
	bl	nand_disable_chip
	movs	r0, #0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, pc}
.L2477:
	mov	r3, r5
	mov	r2, r4
	str	r10, [sp]
	mov	r1, r8
	mov	r0, r6
	adds	r4, r4, #1
	bl	get_data_with_nand_bus_one_cmd
	adds	r5, r5, #1
	b	.L2476
	.size	hynix20nm_vender_get_param, .-hynix20nm_vender_get_param
	.section	.text.hynix20nm_lsb_init,"ax",%progbits
	.align	1
	.global	hynix20nm_lsb_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_lsb_init, %function
hynix20nm_lsb_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #264]
	ldr	r1, .L2482
	ldr	r2, [r3, #52]
	ubfx	r3, r2, #16, #8
	strb	r3, [r1]
	lsrs	r0, r2, #8
	ldr	r1, .L2482+4
	cmp	r3, #2
	strb	r0, [r1]
	ldr	r1, .L2482+8
	strb	r2, [r1]
	bne	.L2479
	ldr	r3, .L2482+12
	movs	r2, #4
	strb	r2, [r3]
	movs	r2, #176
	ldr	r3, .L2482+16
	strb	r2, [r3]
	movs	r2, #177
	strb	r2, [r3, #1]
	movs	r2, #160
	strb	r2, [r3, #2]
	movs	r2, #161
.L2481:
	strb	r2, [r3, #3]
	movs	r2, #10
	ldr	r3, .L2482+20
	strb	r2, [r3]
	strb	r2, [r3, #1]
	strb	r2, [r3, #2]
	strb	r2, [r3, #3]
.L2480:
	movs	r0, #0
	bx	lr
.L2479:
	cmp	r3, #3
	bne	.L2480
	ldr	r3, .L2482+12
	movs	r2, #4
	strb	r2, [r3]
	movs	r2, #160
	ldr	r3, .L2482+16
	strb	r2, [r3]
	movs	r2, #161
	strb	r2, [r3, #1]
	movs	r2, #167
	strb	r2, [r3, #2]
	movs	r2, #168
	b	.L2481
.L2483:
	.align	2
.L2482:
	.word	.LANCHOR80
	.word	.LANCHOR77
	.word	.LANCHOR78
	.word	.LANCHOR81
	.word	.LANCHOR82
	.word	.LANCHOR83
	.size	hynix20nm_lsb_init, .-hynix20nm_lsb_init
	.section	.text.hynix20nm_lsb_enable,"ax",%progbits
	.align	1
	.global	hynix20nm_lsb_enable
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_lsb_enable, %function
hynix20nm_lsb_enable:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	mov	r5, r0
	ldr	r4, .L2487
	ldr	r2, .L2487+4
	ldrb	r3, [r4]	@ zero_extendqisi2
	ldr	r1, .L2487+8
	bl	hynix20nm_vender_get_param
	ldr	r6, .L2487+12
	movs	r2, #0
	ldrb	r3, [r4]	@ zero_extendqisi2
	add	r1, sp, #4
	ldr	r4, .L2487+8
.L2485:
	cmp	r3, r2
	bhi	.L2486
	ldr	r2, .L2487+4
	mov	r0, r5
	bl	hynix20nm_vender_set_param
	movs	r0, #0
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L2486:
	ldrb	r0, [r2, r4]	@ zero_extendqisi2
	ldrb	r7, [r2, r6]	@ zero_extendqisi2
	add	r0, r0, r7
	strb	r0, [r1, r2]
	adds	r2, r2, #1
	b	.L2485
.L2488:
	.align	2
.L2487:
	.word	.LANCHOR81
	.word	.LANCHOR82
	.word	.LANCHOR84
	.word	.LANCHOR83
	.size	hynix20nm_lsb_enable, .-hynix20nm_lsb_enable
	.section	.text.hynix20nm_lsb_disable,"ax",%progbits
	.align	1
	.global	hynix20nm_lsb_disable
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_lsb_disable, %function
hynix20nm_lsb_disable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	ldr	r3, .L2490
	ldr	r2, .L2490+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r1, .L2490+8
	bl	hynix20nm_vender_set_param
	movs	r0, #0
	pop	{r3, pc}
.L2491:
	.align	2
.L2490:
	.word	.LANCHOR81
	.word	.LANCHOR82
	.word	.LANCHOR84
	.size	hynix20nm_lsb_disable, .-hynix20nm_lsb_disable
	.section	.text.hynix20nm_lsb_exit,"ax",%progbits
	.align	1
	.global	hynix20nm_lsb_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_lsb_exit, %function
hynix20nm_lsb_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	bl	nand_enable_chip
	ldr	r0, [r4, #260]
	bl	ndfc_disable_randomize
	movs	r2, #0
	mov	r0, r4
	mov	r1, r2
	bl	set_one_cmd
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r2, #1
	movs	r1, #48
	mov	r0, r4
	bl	set_one_cmd
	ldr	r0, .L2493
	bl	NAND_Print_DBG
	mov	r0, r4
	bl	nand_disable_chip
	movs	r0, #0
	pop	{r4, pc}
.L2494:
	.align	2
.L2493:
	.word	.LC406
	.size	hynix20nm_lsb_exit, .-hynix20nm_lsb_exit
	.section	.text.hynix20nm_vender_get_param_otp_hynix,"ax",%progbits
	.align	1
	.global	hynix20nm_vender_get_param_otp_hynix
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_vender_get_param_otp_hynix, %function
hynix20nm_vender_get_param_otp_hynix:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	movs	r3, #0
	sub	sp, sp, #36
	mov	r4, r0
	strh	r3, [sp, #28]	@ movhi
	ldr	r3, .L2513
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L2496
	movw	r3, #52479
	strh	r3, [sp, #24]	@ movhi
	movw	r3, #19776
	strh	r3, [sp, #28]	@ movhi
.L2497:
	mov	r0, #1024
	movs	r6, #1
	bl	nand_get_temp_buf
	mov	r5, r0
	mov	r0, r4
	bl	nand_enable_chip
	ldr	r0, [r4, #260]
	bl	ndfc_disable_randomize
	movs	r2, #1
	movs	r1, #255
	mov	r0, r4
	bl	set_one_cmd
	movs	r3, #54
	movs	r2, #0
	strb	r3, [sp, #20]
	add	r3, sp, #28
	str	r3, [sp]
	add	r1, sp, #20
	add	r3, sp, #24
	strd	r6, r6, [sp, #4]
	mov	r0, r4
	bl	set_cmd_with_nand_bus
	movs	r2, #0
	add	r3, sp, #29
	mov	r1, r2
	str	r3, [sp]
	strd	r6, r6, [sp, #4]
	add	r3, sp, #25
	mov	r0, r4
	bl	set_cmd_with_nand_bus
	movs	r2, #0
	movs	r1, #22
	mov	r0, r4
	bl	set_one_cmd
	movs	r2, #0
	movs	r1, #23
	mov	r0, r4
	bl	set_one_cmd
	movs	r2, #0
	movs	r1, #4
	mov	r0, r4
	bl	set_one_cmd
	movs	r2, #0
	movs	r1, #25
	mov	r0, r4
	bl	set_one_cmd
	movs	r2, #0
	mov	r0, r4
	mov	r1, r2
	bl	set_one_cmd
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r1, #2
	mov	r0, r4
	bl	set_one_addr
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r3, #48
	movs	r2, #0
	strb	r3, [sp, #20]
	movs	r3, #2
	str	r3, [sp]
	add	r1, sp, #20
	mov	r3, r5
	mov	r0, r4
	bl	get_data_with_nand_bus_one_cmd
	ldrb	r1, [r5]	@ zero_extendqisi2
	ldrb	r2, [r5, #1]	@ zero_extendqisi2
	cmp	r1, #8
	bne	.L2499
	cmp	r2, #8
	beq	.L2508
.L2499:
	mvn	r6, #95
	ldr	r0, .L2513+4
	bl	NAND_Print
.L2500:
	mov	r3, #1024
	movs	r2, #0
	str	r3, [sp]
	mov	r1, r2
	mov	r3, r5
	mov	r0, r4
	bl	get_data_with_nand_bus_one_cmd
	movs	r1, #0
	add	ip, r4, #112
.L2501:
	add	r2, r5, r1, lsl #7
	add	r3, r4, #48
.L2503:
	ldrb	r7, [r2], #1	@ zero_extendqisi2
	strb	r7, [r3], #1
	ldrb	r0, [r2, #63]	@ zero_extendqisi2
	add	r0, r0, r7
	cmp	r0, #255
	bne	.L2502
	cmp	r3, ip
	bne	.L2503
	ldr	r0, .L2513+8
	bl	NAND_Print_DBG
	b	.L2505
.L2496:
	cmp	r3, #3
	bne	.L2507
	movw	r3, #45230
	strh	r3, [sp, #24]	@ movhi
	movs	r3, #77
	strb	r3, [sp, #29]
	b	.L2497
.L2508:
	movs	r6, #0
	b	.L2500
.L2507:
	mvn	r6, #96
	b	.L2495
.L2502:
	adds	r1, r1, #1
	cmp	r1, #8
	bne	.L2501
	mvn	r6, #94
	ldr	r0, .L2513+12
	bl	NAND_Print_DBG
.L2505:
	movs	r2, #1
	movs	r1, #255
	mov	r0, r4
	bl	set_one_cmd
	movs	r1, #56
	movs	r2, #1
	mov	r0, r4
	bl	set_one_cmd
	mov	r0, r4
	bl	nand_disable_chip
	mov	r1, #1024
	mov	r0, r5
	bl	nand_free_temp_buf
.L2495:
	mov	r0, r6
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L2514:
	.align	2
.L2513:
	.word	.LANCHOR80
	.word	.LC356
	.word	.LC408
	.word	.LC407
	.size	hynix20nm_vender_get_param_otp_hynix, .-hynix20nm_vender_get_param_otp_hynix
	.section	.text.hynix20nm_saveotpvalue,"ax",%progbits
	.align	1
	.global	hynix20nm_saveotpvalue
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_saveotpvalue, %function
hynix20nm_saveotpvalue:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r1, #1
	adds	r0, r0, #48
	adds	r1, r1, #63
.L2516:
	ldrb	r2, [r3, #1]!	@ zero_extendqisi2
	cmp	r3, r1
	strb	r2, [r0], #1
	bne	.L2516
	bx	lr
	.size	hynix20nm_saveotpvalue, .-hynix20nm_saveotpvalue
	.section	.text.hynix20nm_getotpparam,"ax",%progbits
	.align	1
	.global	hynix20nm_getotpparam
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_getotpparam, %function
hynix20nm_getotpparam:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	ldr	r8, .L2528+4
	mov	r5, r1
	movs	r6, #0
.L2521:
	mov	r1, r6
	mov	r0, r8
	bl	NAND_Print_DBG
	mov	r0, r4
	bl	hynix20nm_vender_get_param_otp_hynix
	mov	r7, r0
	cbnz	r0, .L2519
	mov	r0, r4
	mov	r1, r5
	add	r2, r4, #64
.L2520:
	movs	r3, #0
.L2523:
	adds	r4, r0, r3
	ldrb	r4, [r4, #48]	@ zero_extendqisi2
	strb	r4, [r1, r3]
	adds	r3, r3, #1
	cmp	r3, #8
	bne	.L2523
	adds	r0, r0, #8
	adds	r1, r1, #8
	cmp	r2, r0
	bne	.L2520
.L2518:
	mov	r0, r7
	pop	{r4, r5, r6, r7, r8, pc}
.L2519:
	adds	r6, r6, #1
	cmp	r6, #5
	bne	.L2521
	ldr	r0, .L2528
	bl	NAND_Print
	b	.L2518
.L2529:
	.align	2
.L2528:
	.word	.LC409
	.word	.LC360
	.size	hynix20nm_getotpparam, .-hynix20nm_getotpparam
	.section	.text.hynix20nm_set_default_param,"ax",%progbits
	.align	1
	.global	hynix20nm_set_default_param
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_set_default_param, %function
hynix20nm_set_default_param:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	add	r1, r0, #48
	ldr	r5, .L2535
	movs	r2, #0
	ldrb	r3, [r5]	@ zero_extendqisi2
.L2531:
	cmp	r3, r2
	bhi	.L2532
	ldr	r7, .L2535+4
	mov	r1, sp
	ldr	r2, .L2535+8
	movs	r4, #0
	bl	hynix20nm_vender_set_param
	mov	r6, r0
	ldr	r0, .L2535+12
	bl	NAND_Print_DBG
.L2533:
	ldrb	r3, [r5]	@ zero_extendqisi2
	cmp	r3, r4
	bhi	.L2534
	ldr	r0, .L2535+16
	bl	NAND_Print_DBG
	mov	r0, r6
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L2532:
	ldrb	r4, [r1], #1	@ zero_extendqisi2
	strb	r4, [sp, r2]
	adds	r2, r2, #1
	b	.L2531
.L2534:
	ldrb	r1, [sp, r4]	@ zero_extendqisi2
	mov	r0, r7
	bl	NAND_Print_DBG
	adds	r4, r4, #1
	b	.L2533
.L2536:
	.align	2
.L2535:
	.word	.LANCHOR78
	.word	.LC362
	.word	.LANCHOR79
	.word	.LC361
	.word	.LC7
	.size	hynix20nm_set_default_param, .-hynix20nm_set_default_param
	.section	.text.hynix20nm_init_readretry_param,"ax",%progbits
	.align	1
	.global	hynix20nm_init_readretry_param
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_init_readretry_param, %function
hynix20nm_init_readretry_param:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #264]
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	sub	sp, sp, #64
	ldr	r0, [r3, #16]
	lsls	r0, r0, #9
	bl	nand_get_temp_buf
	mov	r6, r0
	cbnz	r0, .L2538
	mvn	r5, #93
	ldr	r0, .L2546
	bl	NAND_Print_DBG
.L2537:
	mov	r0, r5
	add	sp, sp, #64
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L2538:
	mov	r0, #32768
	bl	nand_get_temp_buf
	cbnz	r0, .L2540
	ldr	r3, [r4, #264]
	mov	r0, r6
	mvn	r5, #75
	ldr	r1, [r3, #16]
	lsls	r1, r1, #9
	bl	nand_free_temp_buf
	ldr	r0, .L2546+4
	bl	NAND_Print
	b	.L2537
.L2540:
	ldr	r3, [r4, #16]
	movs	r2, #64
	mov	r1, r6
	bl	hynix16nm_get_special_info
	ldr	r3, [r4, #260]
	mov	r5, r0
	cbnz	r0, .L2541
	ldr	r7, .L2546+8
	ldr	r8, .L2546+24
	ldr	r2, [r4, #16]
	ldr	r1, [r3, #8]
	ldr	r0, .L2546+12
	bl	NAND_Print_DBG
.L2543:
	ldrb	r1, [r6, r5]	@ zero_extendqisi2
	mov	r0, r7
	bl	NAND_Print_DBG
	and	r3, r5, #7
	cmp	r3, #7
	bne	.L2542
	mov	r0, r8
	bl	NAND_Print_DBG
.L2542:
	adds	r5, r5, #1
	cmp	r5, #64
	bne	.L2543
	mov	r1, r6
	mov	r0, r4
	bl	hynix20nm_saveotpvalue
	mov	r0, r4
	bl	hynix20nm_set_default_param
	mov	r5, r0
.L2544:
	ldr	r3, [r4, #264]
	mov	r0, r6
	ldr	r1, [r3, #16]
	lsls	r1, r1, #9
	bl	nand_free_temp_buf
	b	.L2537
.L2541:
	ldr	r1, [r3, #8]
	ldr	r0, .L2546+16
	bl	NAND_Print_DBG
	mov	r1, sp
	mov	r0, r4
	bl	hynix20nm_getotpparam
	mov	r5, r0
	cmp	r0, #0
	bne	.L2544
	mov	r0, r4
	bl	hynix20nm_set_default_param
	ldr	r3, [r4, #260]
	ldr	r0, .L2546+20
	ldr	r1, [r3, #8]
	bl	NAND_Print_DBG
	b	.L2544
.L2547:
	.align	2
.L2546:
	.word	.LC410
	.word	.LC363
	.word	.LC365
	.word	.LC411
	.word	.LC366
	.word	.LC412
	.word	.LC7
	.size	hynix20nm_init_readretry_param, .-hynix20nm_init_readretry_param
	.section	.text.hynix20nm_readretry_init,"ax",%progbits
	.align	1
	.global	hynix20nm_readretry_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_readretry_init, %function
hynix20nm_readretry_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #264]
	ldr	r2, .L2557
	push	{r4, lr}
	ldr	r3, [r3, #52]
	ubfx	r1, r3, #16, #8
	strb	r1, [r2]
	lsrs	r4, r3, #8
	ldr	r2, .L2557+4
	cmp	r1, #2
	strb	r4, [r2]
	ldr	r2, .L2557+8
	strb	r3, [r2]
	bne	.L2549
	ldr	r3, .L2557+12
	movs	r2, #204
	strb	r2, [r3]
	movs	r2, #191
	strb	r2, [r3, #1]
	movs	r2, #170
	strb	r2, [r3, #2]
	movs	r2, #171
	strb	r2, [r3, #3]
	movs	r2, #205
	strb	r2, [r3, #4]
	movs	r2, #173
	strb	r2, [r3, #5]
	movs	r2, #174
	strb	r2, [r3, #6]
	movs	r2, #175
.L2556:
	strb	r2, [r3, #7]
	add	r1, r0, #176
	add	r2, r0, #48
	movs	r3, #0
	str	r3, [r0, #176]
.L2553:
	strb	r3, [r2], #1
	cmp	r2, r1
	bne	.L2553
	pop	{r4, lr}
	b	hynix20nm_init_readretry_param
.L2549:
	cmp	r1, #3
	bne	.L2551
	ldr	r3, .L2557+12
	movs	r2, #176
	strb	r2, [r3]
	movs	r2, #177
	strb	r2, [r3, #1]
	movs	r2, #178
	strb	r2, [r3, #2]
	movs	r2, #179
	strb	r2, [r3, #3]
	movs	r2, #180
	strb	r2, [r3, #4]
	movs	r2, #181
	strb	r2, [r3, #5]
	movs	r2, #182
	strb	r2, [r3, #6]
	movs	r2, #183
	b	.L2556
.L2551:
	ldr	r0, .L2557+16
	bl	NAND_Print
	mvn	r0, #92
	pop	{r4, pc}
.L2558:
	.align	2
.L2557:
	.word	.LANCHOR80
	.word	.LANCHOR77
	.word	.LANCHOR78
	.word	.LANCHOR79
	.word	.LC368
	.size	hynix20nm_readretry_init, .-hynix20nm_readretry_init
	.section	.text.hynix20nm_readretry_exit,"ax",%progbits
	.align	1
	.global	hynix20nm_readretry_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_readretry_exit, %function
hynix20nm_readretry_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	ldr	r0, .L2560
	bl	NAND_Print_DBG
	mov	r0, r4
	bl	hynix20nm_set_default_param
	movs	r0, #0
	str	r0, [r4, #176]
	pop	{r4, pc}
.L2561:
	.align	2
.L2560:
	.word	.LC413
	.size	hynix20nm_readretry_exit, .-hynix20nm_readretry_exit
	.section	.text.hynix20nm_special_init,"ax",%progbits
	.align	1
	.global	hynix20nm_special_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_special_init, %function
hynix20nm_special_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	movs	r4, #0
	ldr	r3, .L2567
	ldr	r3, [r3]
	ldr	r5, [r3, #8]
.L2563:
	cbnz	r5, .L2564
	ldr	r3, .L2567+4
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, .L2567+8
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, .L2567+12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cbnz	r4, .L2565
	ldr	r0, .L2567+16
	ldr	r5, .L2567+20
	str	r5, [r0]
	ldr	r0, .L2567+24
	bl	NAND_Print_DBG
.L2562:
	mov	r0, r4
	pop	{r3, r4, r5, pc}
.L2564:
	mov	r0, r5
	bl	hynix20nm_readretry_init
	ldr	r5, [r5]
	orrs	r4, r4, r0
	b	.L2563
.L2565:
	ldr	r0, .L2567+28
	bl	NAND_Print
	b	.L2562
.L2568:
	.align	2
.L2567:
	.word	g_nsi
	.word	.LANCHOR80
	.word	.LANCHOR77
	.word	.LANCHOR78
	.word	df_read_page_end
	.word	hynix20nm_read_page_end
	.word	.LC414
	.word	.LC415
	.size	hynix20nm_special_init, .-hynix20nm_special_init
	.section	.text.hynix20nm_special_exit,"ax",%progbits
	.align	1
	.global	hynix20nm_special_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix20nm_special_exit, %function
hynix20nm_special_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L2572
	push	{r4, lr}
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
.L2570:
	cbnz	r4, .L2571
	ldr	r0, .L2572+4
	bl	NAND_Print_DBG
	mov	r0, r4
	pop	{r4, pc}
.L2571:
	mov	r0, r4
	bl	hynix20nm_readretry_exit
	ldr	r4, [r4]
	b	.L2570
.L2573:
	.align	2
.L2572:
	.word	g_nsi
	.word	.LC416
	.size	hynix20nm_special_exit, .-hynix20nm_special_exit
	.section	.text.hynix26nm_vender_set_param,"ax",%progbits
	.align	1
	.global	hynix26nm_vender_set_param
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix26nm_vender_set_param, %function
hynix26nm_vender_set_param:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	hynix16nm_vender_set_param
	.size	hynix26nm_vender_set_param, .-hynix26nm_vender_set_param
	.section	.text.hynix26nm_set_readretry,"ax",%progbits
	.align	1
	.global	hynix26nm_set_readretry
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix26nm_set_readretry, %function
hynix26nm_set_readretry:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L2584
	push	{r0, r1, r4, r5, r6, r7, r8, lr}
	ldr	r1, [r0, #176]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r1, r3
	bhi	.L2583
	ldr	r4, .L2584+4
	movs	r6, #0
	ldr	r7, .L2584+8
	add	r5, sp, #4
	ldrb	r3, [r4]	@ zero_extendqisi2
	add	r7, r7, r1, lsl #3
.L2577:
	cmp	r3, r6
	bhi	.L2578
	subs	r2, r1, #2
	subs	r1, r1, #5
	cmp	r2, #4
	ldr	r8, .L2584+24
	it	ls
	movls	r2, #0
	mov	r6, #0
	it	ls
	strbls	r2, [sp, #4]
	cmp	r1, #1
	it	ls
	movls	r2, #0
	mov	r1, r5
	it	ls
	strbls	r2, [sp, #5]
	ldr	r2, .L2584+12
	bl	hynix16nm_vender_set_param
	mov	r7, r0
	ldr	r0, .L2584+16
	bl	NAND_Print_DBG
.L2581:
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, r6
	bhi	.L2582
	ldr	r0, .L2584+20
	bl	NAND_Print_DBG
.L2575:
	mov	r0, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L2578:
	adds	r2, r0, r6
	ldrh	ip, [r7, r6, lsl #1]
	ldrb	r2, [r2, #48]	@ zero_extendqisi2
	add	r2, r2, ip
	sxth	r2, r2
	usat	r2, #8, r2
	strb	r2, [r5, r6]
	adds	r6, r6, #1
	b	.L2577
.L2582:
	ldrb	r1, [r5, r6]	@ zero_extendqisi2
	mov	r0, r8
	bl	NAND_Print_DBG
	adds	r6, r6, #1
	b	.L2581
.L2583:
	mvn	r7, #52
	b	.L2575
.L2585:
	.align	2
.L2584:
	.word	.LANCHOR85
	.word	.LANCHOR86
	.word	.LANCHOR87
	.word	.LANCHOR88
	.word	.LC417
	.word	.LC7
	.word	.LC402
	.size	hynix26nm_set_readretry, .-hynix26nm_set_readretry
	.section	.text.hynix26nm_read_page_end,"ax",%progbits
	.align	1
	.global	hynix26nm_read_page_end
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix26nm_read_page_end, %function
hynix26nm_read_page_end:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L2599
	push	{r0, r1, r2, r4, r5, r6, r7, r8, r10, lr}
	mov	r6, r0
	ldr	r1, [r0]
	ldr	r0, [r3]
	bl	nci_get_from_nsi
	mov	r5, r0
	mov	r0, r6
	bl	generic_read_page_end_not_retry
	adds	r3, r0, #2
	mov	r4, r0
	bne	.L2586
	ldr	r7, .L2599+4
	mov	r10, #0
	mov	r8, r10
	ldr	r0, .L2599+8
	bl	NAND_Print_DBG
.L2588:
	ldrb	r2, [r7]	@ zero_extendqisi2
	cmp	r2, r10
	ble	.L2592
	ldr	r3, [r5, #176]
	mov	r0, r5
	adds	r3, r3, #1
	cmp	r3, r2
	it	hi
	movhi	r3, r8
	str	r3, [r5, #176]
	bl	hynix26nm_set_readretry
	mov	r4, r0
	cbz	r0, .L2591
	movs	r3, #0
	mov	r0, r5
	str	r3, [r5, #176]
	bl	hynix26nm_set_readretry
.L2592:
	movs	r3, #0
	mov	r0, r5
	str	r3, [r5, #176]
	bl	hynix26nm_set_readretry
.L2586:
	mov	r0, r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, pc}
.L2591:
	mov	r0, r6
	bl	generic_read_page_start
	mov	r4, r0
	mov	r0, r6
	bl	generic_read_page_end_not_retry
	orrs	r4, r4, r0
	cmp	r4, #10
	beq	.L2593
	cbnz	r4, .L2594
.L2593:
	ldr	r3, [r5, #176]
	movs	r4, #10
	ldr	r1, [r5, #260]
	ldr	r0, .L2599+12
	str	r3, [sp, #4]
	ldr	r3, [r6, #8]
	str	r3, [sp]
	ldr	r3, [r6, #4]
	ldr	r2, [r5, #20]
	ldr	r1, [r1, #8]
	bl	NAND_Print_DBG
	b	.L2592
.L2594:
	add	r10, r10, #1
	b	.L2588
.L2600:
	.align	2
.L2599:
	.word	g_nsi
	.word	.LANCHOR85
	.word	.LC418
	.word	.LC419
	.size	hynix26nm_read_page_end, .-hynix26nm_read_page_end
	.section	.text.hynix26nm_vender_get_param,"ax",%progbits
	.align	1
	.global	hynix26nm_vender_get_param
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix26nm_vender_get_param, %function
hynix26nm_vender_get_param:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	hynix16nm_vender_get_param
	.size	hynix26nm_vender_get_param, .-hynix26nm_vender_get_param
	.section	.text.hynix26nm_lsb_init,"ax",%progbits
	.align	1
	.global	hynix26nm_lsb_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix26nm_lsb_init, %function
hynix26nm_lsb_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #264]
	movs	r0, #0
	ldr	r2, .L2603
	ldr	r3, [r3, #52]
	lsrs	r1, r3, #16
	strb	r1, [r2]
	lsrs	r1, r3, #8
	ldr	r2, .L2603+4
	strb	r1, [r2]
	ldr	r2, .L2603+8
	strb	r3, [r2]
	movs	r2, #5
	ldr	r3, .L2603+12
	strb	r2, [r3]
	movs	r2, #164
	ldr	r3, .L2603+16
	strb	r2, [r3]
	movs	r2, #165
	strb	r2, [r3, #1]
	movs	r2, #176
	strb	r2, [r3, #2]
	movs	r2, #177
	strb	r2, [r3, #3]
	movs	r2, #201
	strb	r2, [r3, #4]
	movs	r2, #37
	ldr	r3, .L2603+20
	strb	r2, [r3]
	strb	r2, [r3, #1]
	strb	r2, [r3, #2]
	strb	r2, [r3, #3]
	movs	r2, #1
	strb	r2, [r3, #4]
	bx	lr
.L2604:
	.align	2
.L2603:
	.word	.LANCHOR89
	.word	.LANCHOR85
	.word	.LANCHOR86
	.word	.LANCHOR90
	.word	.LANCHOR91
	.word	.LANCHOR92
	.size	hynix26nm_lsb_init, .-hynix26nm_lsb_init
	.section	.text.hynix26nm_lsb_enable,"ax",%progbits
	.align	1
	.global	hynix26nm_lsb_enable
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix26nm_lsb_enable, %function
hynix26nm_lsb_enable:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, r5, r6, lr}
	mov	r5, r0
	ldr	r4, .L2608
	ldr	r2, .L2608+4
	ldrb	r3, [r4]	@ zero_extendqisi2
	ldr	r1, .L2608+8
	bl	hynix16nm_vender_get_param
	ldrb	r3, [r4]	@ zero_extendqisi2
	movs	r2, #0
	ldr	r0, .L2608+8
	ldr	r4, .L2608+12
.L2606:
	cmp	r3, r2
	bhi	.L2607
	ldr	r2, .L2608+4
	mov	r1, sp
	mov	r0, r5
	bl	hynix16nm_vender_set_param
	movs	r0, #0
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L2607:
	ldrb	r1, [r2, r0]	@ zero_extendqisi2
	ldrb	r6, [r2, r4]	@ zero_extendqisi2
	add	r1, r1, r6
	strb	r1, [sp, r2]
	adds	r2, r2, #1
	b	.L2606
.L2609:
	.align	2
.L2608:
	.word	.LANCHOR90
	.word	.LANCHOR91
	.word	.LANCHOR93
	.word	.LANCHOR92
	.size	hynix26nm_lsb_enable, .-hynix26nm_lsb_enable
	.section	.text.hynix26nm_lsb_disable,"ax",%progbits
	.align	1
	.global	hynix26nm_lsb_disable
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix26nm_lsb_disable, %function
hynix26nm_lsb_disable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	ldr	r3, .L2611
	ldr	r2, .L2611+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r1, .L2611+8
	bl	hynix16nm_vender_set_param
	movs	r0, #0
	pop	{r3, pc}
.L2612:
	.align	2
.L2611:
	.word	.LANCHOR90
	.word	.LANCHOR91
	.word	.LANCHOR93
	.size	hynix26nm_lsb_disable, .-hynix26nm_lsb_disable
	.section	.text.hynix26nm_lsb_exit,"ax",%progbits
	.align	1
	.global	hynix26nm_lsb_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix26nm_lsb_exit, %function
hynix26nm_lsb_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	bl	nand_enable_chip
	ldr	r0, [r4, #260]
	bl	ndfc_disable_randomize
	movs	r2, #0
	mov	r0, r4
	mov	r1, r2
	bl	set_one_cmd
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r1, #0
	mov	r0, r4
	bl	set_one_addr
	movs	r2, #1
	movs	r1, #48
	mov	r0, r4
	bl	set_one_cmd
	ldr	r0, .L2614
	bl	NAND_Print_DBG
	mov	r0, r4
	bl	nand_disable_chip
	movs	r0, #0
	pop	{r4, pc}
.L2615:
	.align	2
.L2614:
	.word	.LC420
	.size	hynix26nm_lsb_exit, .-hynix26nm_lsb_exit
	.section	.text.hynix26nm_getdefaultparam,"ax",%progbits
	.align	1
	.global	hynix26nm_getdefaultparam
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix26nm_getdefaultparam, %function
hynix26nm_getdefaultparam:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	add	r4, r0, #48
	ldr	r5, .L2619
	mov	r6, r1
	mov	r1, r4
	ldr	r2, .L2619+4
	ldrb	r3, [r5]	@ zero_extendqisi2
	bl	hynix16nm_vender_get_param
	mov	r3, r6
.L2617:
	ldrb	r1, [r5]	@ zero_extendqisi2
	subs	r2, r3, r6
	cmp	r1, r2
	bgt	.L2618
	pop	{r4, r5, r6, pc}
.L2618:
	ldrb	r2, [r4], #1	@ zero_extendqisi2
	strb	r2, [r3], #1
	b	.L2617
.L2620:
	.align	2
.L2619:
	.word	.LANCHOR86
	.word	.LANCHOR88
	.size	hynix26nm_getdefaultparam, .-hynix26nm_getdefaultparam
	.section	.text.hynix26nm_setdefaultparam,"ax",%progbits
	.align	1
	.global	hynix26nm_setdefaultparam
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix26nm_setdefaultparam, %function
hynix26nm_setdefaultparam:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	add	r1, r0, #48
	ldr	r5, .L2626
	movs	r2, #0
	ldrb	r3, [r5]	@ zero_extendqisi2
.L2622:
	cmp	r3, r2
	bgt	.L2623
	ldr	r7, .L2626+4
	mov	r1, sp
	ldr	r2, .L2626+8
	movs	r4, #0
	bl	hynix16nm_vender_set_param
	mov	r6, r0
	ldr	r0, .L2626+12
	bl	NAND_Print_DBG
.L2624:
	ldrb	r3, [r5]	@ zero_extendqisi2
	cmp	r3, r4
	bgt	.L2625
	ldr	r0, .L2626+16
	bl	NAND_Print_DBG
	mov	r0, r6
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L2623:
	ldrb	r4, [r1], #1	@ zero_extendqisi2
	strb	r4, [sp, r2]
	adds	r2, r2, #1
	b	.L2622
.L2625:
	ldrb	r1, [sp, r4]	@ zero_extendqisi2
	mov	r0, r7
	bl	NAND_Print_DBG
	adds	r4, r4, #1
	b	.L2624
.L2627:
	.align	2
.L2626:
	.word	.LANCHOR86
	.word	.LC362
	.word	.LANCHOR88
	.word	.LC361
	.word	.LC7
	.size	hynix26nm_setdefaultparam, .-hynix26nm_setdefaultparam
	.section	.text.hynix26nm_get_default_param,"ax",%progbits
	.align	1
	.global	hynix26nm_get_default_param
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix26nm_get_default_param, %function
hynix26nm_get_default_param:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	sub	sp, sp, #24
	add	r1, sp, #20
	mov	r4, r0
	bl	hynix26nm_getdefaultparam
	ldrb	r2, [sp, #23]	@ zero_extendqisi2
	ldr	r1, [r4, #260]
	ldrb	r3, [sp, #20]	@ zero_extendqisi2
	str	r2, [sp, #8]
	ldrb	r2, [sp, #22]	@ zero_extendqisi2
	ldr	r0, .L2629
	str	r2, [sp, #4]
	ldrb	r2, [sp, #21]	@ zero_extendqisi2
	str	r2, [sp]
	ldr	r2, [r4, #20]
	ldr	r1, [r1, #8]
	bl	NAND_Print_DBG
	mov	r0, r4
	bl	hynix26nm_setdefaultparam
	movs	r0, #0
	add	sp, sp, #24
	@ sp needed
	pop	{r4, pc}
.L2630:
	.align	2
.L2629:
	.word	.LC421
	.size	hynix26nm_get_default_param, .-hynix26nm_get_default_param
	.section	.text.hynix26nm_readretry_init,"ax",%progbits
	.align	1
	.global	hynix26nm_readretry_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix26nm_readretry_init, %function
hynix26nm_readretry_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	ldr	r3, [r0, #264]
	ldr	r4, .L2646
	ldr	r2, [r3, #52]
	ldr	r3, .L2646+4
	ubfx	r1, r2, #16, #8
	strb	r1, [r3]
	lsrs	r3, r2, #8
	strb	r3, [r4]
	ldr	r4, .L2646+8
	strb	r2, [r4]
	cbnz	r1, .L2632
	ldr	r4, .L2646+12
	movs	r5, #172
	uxtb	r3, r3
	ldr	r6, .L2646+16
	uxtb	r2, r2
	strb	r5, [r4]
	movs	r5, #173
	strb	r5, [r4, #1]
	movs	r5, #174
	strb	r5, [r4, #2]
	movs	r5, #175
	strb	r5, [r4, #3]
	adds	r3, r3, #1
	ldr	r5, .L2646+20
.L2633:
	cmp	r3, r1
	bhi	.L2643
.L2636:
	add	r2, r0, #48
	add	r1, r0, #176
	movs	r3, #0
	str	r3, [r0, #176]
.L2642:
	strb	r3, [r2], #1
	cmp	r1, r2
	bne	.L2642
	bl	hynix26nm_get_default_param
	movs	r0, #0
	b	.L2631
.L2634:
	ldrh	r7, [r5, r4, lsl #1]
	strh	r7, [r6, r4, lsl #1]	@ movhi
	adds	r4, r4, #1
.L2635:
	cmp	r4, r2
	bcc	.L2634
	adds	r1, r1, #1
	adds	r5, r5, #8
	adds	r6, r6, #8
	b	.L2633
.L2643:
	movs	r4, #0
	b	.L2635
.L2632:
	cmp	r1, #1
	bne	.L2637
	ldr	r1, .L2646+12
	movs	r4, #167
	uxtb	r3, r3
	ldr	r5, .L2646+24
	ldr	r6, .L2646+16
	uxtb	r2, r2
	strb	r4, [r1]
	movs	r4, #173
	strb	r4, [r1, #1]
	movs	r4, #174
	strb	r4, [r1, #2]
	movs	r4, #175
	strb	r4, [r1, #3]
	adds	r3, r3, #1
	movs	r4, #0
.L2638:
	cmp	r3, r4
	bls	.L2636
	movs	r1, #0
	b	.L2640
.L2639:
	ldrh	r7, [r5, r1, lsl #1]
	strh	r7, [r6, r1, lsl #1]	@ movhi
	adds	r1, r1, #1
.L2640:
	cmp	r1, r2
	bcc	.L2639
	adds	r4, r4, #1
	adds	r5, r5, #8
	adds	r6, r6, #8
	b	.L2638
.L2637:
	ldr	r0, .L2646+28
	bl	NAND_Print
	mvn	r0, #53
.L2631:
	pop	{r3, r4, r5, r6, r7, pc}
.L2647:
	.align	2
.L2646:
	.word	.LANCHOR85
	.word	.LANCHOR89
	.word	.LANCHOR86
	.word	.LANCHOR88
	.word	.LANCHOR87
	.word	.LANCHOR94
	.word	.LANCHOR95
	.word	.LC368
	.size	hynix26nm_readretry_init, .-hynix26nm_readretry_init
	.section	.text.hynix26nm_readretry_exit,"ax",%progbits
	.align	1
	.global	hynix26nm_readretry_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix26nm_readretry_exit, %function
hynix26nm_readretry_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	ldr	r0, .L2649
	bl	NAND_Print_DBG
	mov	r0, r4
	bl	hynix26nm_setdefaultparam
	movs	r0, #0
	str	r0, [r4, #176]
	pop	{r4, pc}
.L2650:
	.align	2
.L2649:
	.word	.LC422
	.size	hynix26nm_readretry_exit, .-hynix26nm_readretry_exit
	.section	.text.hynix26nm_special_init,"ax",%progbits
	.align	1
	.global	hynix26nm_special_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix26nm_special_init, %function
hynix26nm_special_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	movs	r4, #0
	ldr	r3, .L2656
	ldr	r3, [r3]
	ldr	r5, [r3, #8]
.L2652:
	cbnz	r5, .L2653
	ldr	r3, .L2656+4
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, .L2656+8
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, .L2656+12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cbnz	r4, .L2654
	ldr	r0, .L2656+16
	ldr	r5, .L2656+20
	str	r5, [r0]
	ldr	r0, .L2656+24
	bl	NAND_Print_DBG
.L2651:
	mov	r0, r4
	pop	{r3, r4, r5, pc}
.L2653:
	mov	r0, r5
	bl	hynix26nm_readretry_init
	ldr	r5, [r5]
	orrs	r4, r4, r0
	b	.L2652
.L2654:
	ldr	r0, .L2656+28
	bl	NAND_Print
	b	.L2651
.L2657:
	.align	2
.L2656:
	.word	g_nsi
	.word	.LANCHOR89
	.word	.LANCHOR85
	.word	.LANCHOR86
	.word	df_read_page_end
	.word	hynix26nm_read_page_end
	.word	.LC423
	.word	.LC424
	.size	hynix26nm_special_init, .-hynix26nm_special_init
	.section	.text.hynix26nm_special_exit,"ax",%progbits
	.align	1
	.global	hynix26nm_special_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	hynix26nm_special_exit, %function
hynix26nm_special_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L2661
	push	{r4, lr}
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
.L2659:
	cbnz	r4, .L2660
	ldr	r0, .L2661+4
	bl	NAND_Print_DBG
	mov	r0, r4
	pop	{r4, pc}
.L2660:
	mov	r0, r4
	bl	hynix26nm_readretry_exit
	ldr	r4, [r4]
	b	.L2659
.L2662:
	.align	2
.L2661:
	.word	g_nsi
	.word	.LC425
	.size	hynix26nm_special_exit, .-hynix26nm_special_exit
	.section	.text.samsung_vender_set_param,"ax",%progbits
	.align	1
	.global	samsung_vender_set_param
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	samsung_vender_set_param, %function
samsung_vender_set_param:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #20
	str	r3, [sp, #8]
	movs	r3, #1
	mov	r4, r1
	strd	r1, r3, [sp]
	mov	r3, r2
	ldr	r1, .L2664
	movs	r2, #0
	bl	set_cmd_with_nand_bus
	mov	r5, r0
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	ldrb	r2, [r4, #1]	@ zero_extendqisi2
	str	r0, [sp]
	ldrb	r1, [r4]	@ zero_extendqisi2
	ldr	r0, .L2664+4
	bl	NAND_Print_DBG
	mov	r0, r5
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, pc}
.L2665:
	.align	2
.L2664:
	.word	.LANCHOR96
	.word	.LC337
	.size	samsung_vender_set_param, .-samsung_vender_set_param
	.section	.text.samsung_set_readretry,"ax",%progbits
	.align	1
	.global	samsung_set_readretry
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	samsung_set_readretry, %function
samsung_set_readretry:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	bl	nand_enable_chip
	ldr	r0, [r4, #260]
	bl	ndfc_disable_randomize
	ldr	r0, [r4, #176]
	movs	r3, #4
	ldr	r1, .L2671
	ldr	r2, .L2671+4
	add	r1, r1, r0, lsl #2
	mov	r0, r4
	bl	samsung_vender_set_param
	mov	r5, r0
	cbz	r0, .L2667
	ldr	r1, [r4, #176]
	ldr	r0, .L2671+8
	bl	NAND_Print
.L2667:
	mov	r0, r4
	bl	nand_disable_chip
	mov	r0, r5
	pop	{r3, r4, r5, pc}
.L2672:
	.align	2
.L2671:
	.word	.LANCHOR98
	.word	.LANCHOR97
	.word	.LC426
	.size	samsung_set_readretry, .-samsung_set_readretry
	.section	.text.samsung_read_page_end,"ax",%progbits
	.align	1
	.global	samsung_read_page_end
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	samsung_read_page_end, %function
samsung_read_page_end:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L2683
	push	{r0, r1, r4, r5, r6, r7, r8, lr}
	mov	r6, r0
	ldr	r1, [r0]
	ldr	r0, [r3]
	bl	nci_get_from_nsi
	mov	r5, r0
	mov	r0, r6
	bl	generic_read_page_end_not_retry
	adds	r3, r0, #2
	mov	r4, r0
	bne	.L2673
	ldr	r8, .L2683+12
	movs	r7, #1
	ldr	r0, .L2683+4
	bl	NAND_Print_DBG
.L2675:
	ldrb	r3, [r8]	@ zero_extendqisi2
	cmp	r3, r7
	ble	.L2678
	str	r7, [r5, #176]
	mov	r0, r5
	bl	samsung_set_readretry
	mov	r4, r0
	cbnz	r0, .L2676
	mov	r0, r6
	bl	generic_read_page_start
	mov	r4, r0
	mov	r0, r6
	bl	generic_read_page_end_not_retry
	orrs	r4, r4, r0
	cmp	r4, #10
	beq	.L2677
	cbnz	r4, .L2676
.L2677:
	ldr	r3, [r5, #176]
	movs	r4, #10
	ldr	r1, [r5, #260]
	ldr	r0, .L2683+8
	str	r3, [sp, #4]
	ldr	r3, [r6, #8]
	str	r3, [sp]
	ldr	r3, [r6, #4]
	ldr	r2, [r5, #20]
	ldr	r1, [r1, #8]
	bl	NAND_Print_DBG
.L2678:
	movs	r3, #0
	mov	r0, r5
	str	r3, [r5, #176]
	bl	samsung_set_readretry
.L2673:
	mov	r0, r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L2676:
	adds	r7, r7, #1
	b	.L2675
.L2684:
	.align	2
.L2683:
	.word	g_nsi
	.word	.LC427
	.word	.LC428
	.word	.LANCHOR99
	.size	samsung_read_page_end, .-samsung_read_page_end
	.section	.text.samsung_readretry_init,"ax",%progbits
	.align	1
	.global	samsung_readretry_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	samsung_readretry_init, %function
samsung_readretry_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #0
	push	{r4, lr}
	str	r3, [r0, #176]
	movs	r1, #15
	ldr	r3, [r0, #264]
	ldr	r4, .L2688
	ldr	r0, .L2688+4
	ldrh	r3, [r3, #54]
	strb	r3, [r4]
	ldr	r3, .L2688+8
	strb	r1, [r3]
	bl	NAND_Print_DBG
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #32
	ite	ne
	mvnne	r0, #99
	moveq	r0, #0
	pop	{r4, pc}
.L2689:
	.align	2
.L2688:
	.word	.LANCHOR100
	.word	.LC429
	.word	.LANCHOR99
	.size	samsung_readretry_init, .-samsung_readretry_init
	.section	.text.samsung_readretry_exit,"ax",%progbits
	.align	1
	.global	samsung_readretry_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	samsung_readretry_exit, %function
samsung_readretry_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #0
	bx	lr
	.size	samsung_readretry_exit, .-samsung_readretry_exit
	.section	.text.samsung_special_init,"ax",%progbits
	.align	1
	.global	samsung_special_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	samsung_special_init, %function
samsung_special_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	movs	r4, #0
	ldr	r3, .L2696
	ldr	r3, [r3]
	ldr	r5, [r3, #8]
.L2692:
	cbnz	r5, .L2693
	ldr	r3, .L2696+4
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, .L2696+8
	ldrb	r2, [r3]	@ zero_extendqisi2
	cbnz	r4, .L2694
	ldr	r0, .L2696+12
	ldr	r3, .L2696+16
	str	r0, [r3]
	ldr	r0, .L2696+20
	bl	NAND_Print_DBG
.L2691:
	mov	r0, r4
	pop	{r3, r4, r5, pc}
.L2693:
	mov	r0, r5
	bl	samsung_readretry_init
	ldr	r5, [r5]
	orrs	r4, r4, r0
	b	.L2692
.L2694:
	ldr	r0, .L2696+24
	bl	NAND_Print
	b	.L2691
.L2697:
	.align	2
.L2696:
	.word	g_nsi
	.word	.LANCHOR100
	.word	.LANCHOR99
	.word	samsung_read_page_end
	.word	df_read_page_end
	.word	.LC430
	.word	.LC431
	.size	samsung_special_init, .-samsung_special_init
	.section	.text.samsung_special_exit,"ax",%progbits
	.align	1
	.global	samsung_special_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	samsung_special_exit, %function
samsung_special_exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L2701
	push	{r4, lr}
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
.L2699:
	cbnz	r4, .L2700
	ldr	r0, .L2701+4
	bl	NAND_Print_DBG
	mov	r0, r4
	pop	{r4, pc}
.L2700:
	ldr	r4, [r4]
	b	.L2699
.L2702:
	.align	2
.L2701:
	.word	g_nsi
	.word	.LC432
	.size	samsung_special_exit, .-samsung_special_exit
	.section	.text.is_on_panic,"ax",%progbits
	.align	1
	.global	is_on_panic
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_on_panic, %function
is_on_panic:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L2704
	ldr	r0, [r3]
	adds	r0, r0, #0
	it	ne
	movne	r0, #1
	bx	lr
.L2705:
	.align	2
.L2704:
	.word	.LANCHOR101
	.size	is_on_panic, .-is_on_panic
	.section	.text.panic_mark_enable,"ax",%progbits
	.align	1
	.global	panic_mark_enable
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	panic_mark_enable, %function
panic_mark_enable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L2707
	movs	r2, #1
	str	r2, [r3]
	bx	lr
.L2708:
	.align	2
.L2707:
	.word	.LANCHOR102
	.size	panic_mark_enable, .-panic_mark_enable
	.section	.text.is_panic_enable,"ax",%progbits
	.align	1
	.global	is_panic_enable
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_panic_enable, %function
is_panic_enable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L2710
	ldr	r0, [r3]
	adds	r0, r0, #0
	it	ne
	movne	r0, #1
	bx	lr
.L2711:
	.align	2
.L2710:
	.word	.LANCHOR102
	.size	is_panic_enable, .-is_panic_enable
	.section	.text.panic_init_part,"ax",%progbits
	.align	1
	.global	panic_init_part
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	panic_init_part, %function
panic_init_part:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r3, r2
	cbz	r0, .L2716
	cbz	r2, .L2716
	ldr	r5, .L2717
	ldr	r4, [r5, #8]
	cbnz	r4, .L2716
	str	r2, [r5, #8]
	ldr	r2, .L2717+4
	strd	r0, r1, [r5]
	movs	r5, #1
	str	r5, [r2]
	mov	r2, r1
	mov	r1, r0
	ldr	r0, .L2717+8
	bl	NAND_Print
	mov	r0, r4
.L2712:
	pop	{r3, r4, r5, pc}
.L2716:
	mov	r0, #-1
	b	.L2712
.L2718:
	.align	2
.L2717:
	.word	.LANCHOR103
	.word	.LANCHOR102
	.word	.LC433
	.size	panic_init_part, .-panic_init_part
	.section	.text.panic_backup_block,"ax",%progbits
	.align	1
	.global	panic_backup_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	panic_backup_block, %function
panic_backup_block:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L2730
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r8, r0
	ldr	r0, [r3]
	cbz	r0, .L2719
	ldr	r6, .L2730+4
	movs	r5, #0
	ldr	fp, .L2730+16
.L2723:
	ldr	r4, [r6, r5, lsl #2]
	lsl	r10, r5, #2
	cbz	r4, .L2721
	ldrh	r1, [r4]
	ldr	r0, .L2730+8
	bl	NAND_Print
	movs	r0, #0
.L2719:
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L2721:
	mov	r0, r8
	bl	out_phy_block_from_free_list
	mov	r7, r0
	cbz	r0, .L2722
	ldrh	r1, [r0]
	adds	r5, r5, #1
	mov	r0, fp
	bl	NAND_Print
	cmp	r5, #3
	str	r7, [r10, r6]
	bne	.L2723
	ldr	r3, [r8, #4]
	mov	r0, r4
	ldrh	r3, [r3, #20]
	add	r3, r3, r3, lsl #1
	str	r3, [r6, #12]
	b	.L2719
.L2722:
	ldr	r0, .L2730+12
	bl	NAND_Print
	mov	r0, #-1
	b	.L2719
.L2731:
	.align	2
.L2730:
	.word	.LANCHOR102
	.word	.LANCHOR104
	.word	.LC434
	.word	.LC436
	.word	.LC435
	.size	panic_backup_block, .-panic_backup_block
	.section	.text.panic_read,"ax",%progbits
	.align	1
	.global	panic_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	panic_read, %function
panic_read:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	mov	r8, r3
	ldr	r3, .L2738
	mov	r6, r0
	mov	r5, r2
	ldr	r3, [r3]
	cbz	r3, .L2736
	ldr	r3, .L2738+4
	movs	r2, #1
	mov	r4, r1
	sub	fp, r8, r1
	str	r2, [r3]
	bic	r3, r5, #32640
	bic	r3, r3, #127
	add	r10, r3, r1
.L2734:
	cmp	r4, r10
	add	r3, fp, r4
	bne	.L2735
	ubfx	r2, r5, #0, #15
	bic	r5, r5, #32640
	bic	r5, r5, #127
	add	r3, r8, r5
	cbz	r2, .L2737
	ldr	r5, [r6, #44]
	mov	r1, r4
	mov	r0, r6
	blx	r5
	movs	r0, #0
.L2732:
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L2735:
	mov	r1, r4
	ldr	r7, [r6, #44]
	mov	r2, #32768
	mov	r0, r6
	blx	r7
	add	r4, r4, #32768
	b	.L2734
.L2736:
	mov	r0, #-1
	b	.L2732
.L2737:
	mov	r0, r2
	b	.L2732
.L2739:
	.align	2
.L2738:
	.word	.LANCHOR102
	.word	.LANCHOR101
	.size	panic_read, .-panic_read
	.section	.text.panic_write,"ax",%progbits
	.align	1
	.global	panic_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	panic_write, %function
panic_write:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	sub	sp, sp, #56
	str	r3, [sp, #16]
	mov	fp, r2
	ldr	r3, .L2753
	str	r1, [sp, #12]
	ldr	r3, [r3]
	cbz	r3, .L2751
	ldr	r8, [r0, #12]
	movs	r2, #1
	ldr	r3, .L2753+4
	add	r0, fp, #-1
	ldr	r7, .L2753+8
	ldr	r5, [r8, #4]
	str	r2, [r3]
	ldrb	r1, [r5, #8]	@ zero_extendqisi2
	add	r0, r0, r1
	bl	__aeabi_uidiv
	ldrh	r1, [r5, #20]
	mov	r10, r0
	subs	r0, r1, #1
	add	r0, r0, r10
	bl	__aeabi_uidiv
	mov	r3, r10
	str	r0, [sp]
	mov	r2, fp
	ldr	r1, [sp, #12]
	ldr	r0, .L2753+12
	bl	NAND_Print
	ldr	r3, [r7, #12]
	subs	r3, r3, #3
	cmp	r3, r10
	bcs	.L2742
	ldrb	r1, [r5, #8]	@ zero_extendqisi2
	ldr	r0, .L2753+16
	muls	r1, r3, r1
	bl	NAND_Print
.L2751:
	mov	r0, #-1
	b	.L2740
.L2742:
	movs	r2, #16
	movs	r1, #165
	add	r0, sp, #24
	mov	r4, r7
	bl	NAND_Memset
	ldr	r3, [r7, #16]
	ldr	r6, [r7, r3, lsl #2]
.L2743:
	ldr	r3, [r7, #20]
	cmp	r10, #0
	bne	.L2746
	ldr	fp, .L2753+24
	movs	r7, #3
	add	r10, sp, #24
	movs	r3, #98
	strb	r3, [sp, #26]
.L2750:
	ldr	r2, [r4, #20]
	cmp	r2, #0
	bne	.L2747
.L2748:
	movs	r0, #0
.L2740:
	add	sp, sp, #56
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L2746:
	ldrh	r2, [r5, #20]
	cmp	r3, r2
	bcc	.L2744
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
	ldr	r6, [r7, r3, lsl #2]
	movs	r3, #0
	str	r3, [r7, #20]
.L2744:
	ldr	r3, [r4, #20]
	ldrh	r1, [r6]
	cbnz	r3, .L2745
	ldrh	r2, [r5, #28]
	mov	r0, r8
	strh	r3, [sp, #40]	@ movhi
	strh	r1, [sp, #42]	@ movhi
	add	r1, sp, #40
	strh	r2, [sp, #44]	@ movhi
	strd	r3, r3, [sp, #48]
	ldr	r2, [r8, #1976]
	str	r3, [sp, #20]
	blx	r2
	ldrh	r2, [r6, #6]
	ldr	r3, [sp, #20]
	adds	r2, r2, #1
	strh	r2, [r6, #6]	@ movhi
	strh	r3, [r6, #4]	@ movhi
.L2745:
	ldr	r2, [r4, #20]
	add	r10, r10, #-1
	ldrh	r1, [r6]
	ldr	r0, .L2753+20
	bl	NAND_Print
	movw	r3, #43775
	movs	r2, #5
	strh	r3, [sp, #24]	@ movhi
	movs	r3, #99
	strb	r3, [sp, #26]
	add	r0, sp, #24
	ldrb	r3, [r8, #16]	@ zero_extendqisi2
	strb	r3, [sp, #27]
	ldr	r3, [r4, #16]
	strb	r3, [sp, #28]
	movs	r3, #2
	ldrh	r1, [r6, #6]
	bl	set_spare_data
	movs	r3, #4
	movs	r2, #7
	ldr	r1, [sp, #12]
	add	r0, sp, #24
	bl	set_spare_data
	ldrb	r1, [r5, #8]	@ zero_extendqisi2
	movs	r3, #4
	movs	r2, #11
	add	r0, sp, #24
	cmp	r1, fp
	it	cs
	movcs	r1, fp
	bl	set_spare_data
	ldrh	r3, [r5, #28]
	mov	r0, r8
	ldrh	r2, [r6]
	ldr	r1, [r4, #20]
	strh	r3, [sp, #44]	@ movhi
	ldr	r3, [sp, #16]
	strh	r1, [sp, #40]	@ movhi
	add	r1, sp, #40
	strh	r2, [sp, #42]	@ movhi
	str	r3, [sp, #48]
	add	r3, sp, #24
	str	r3, [sp, #52]
	ldr	r3, [r8, #1984]
	blx	r3
	ldr	r2, [sp, #16]
	ldrh	r3, [r5, #26]
	adds	r3, r2, r3
	ldr	r2, [sp, #12]
	str	r3, [sp, #16]
	ldrb	r3, [r5, #8]	@ zero_extendqisi2
	cmp	r3, fp
	it	cs
	movcs	r3, fp
	add	r2, r2, r3
	sub	fp, fp, r3
	ldr	r3, [r4, #12]
	str	r2, [sp, #12]
	subs	r3, r3, #1
	str	r3, [r4, #12]
	ldr	r3, [r4, #20]
	adds	r3, r3, #1
	str	r3, [r4, #20]
	b	.L2743
.L2747:
	ldrh	r3, [r5, #20]
	cmp	r2, r3
	bcs	.L2748
	ldrh	r1, [r6]
	mov	r0, fp
	bl	NAND_Print
	ldrh	r3, [r5, #28]
	mov	r0, r8
	ldrh	r2, [r6]
	ldr	r1, [r4, #20]
	strh	r3, [sp, #44]	@ movhi
	ldr	r3, [sp, #16]
	strh	r1, [sp, #40]	@ movhi
	add	r1, sp, #40
	strh	r2, [sp, #42]	@ movhi
	strd	r3, r10, [sp, #48]
	ldr	r3, [r8, #1984]
	blx	r3
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #20]
	subs	r2, r2, #1
	str	r2, [r4, #12]
	adds	r3, r3, #1
	ldrh	r2, [r5, #20]
	str	r3, [r4, #20]
	cmp	r3, r2
	bcc	.L2749
	ldr	r3, [r4, #16]
	adds	r3, r3, #1
	str	r3, [r4, #16]
	ldr	r6, [r4, r3, lsl #2]
	movs	r3, #0
	str	r3, [r4, #20]
.L2749:
	subs	r7, r7, #1
	bne	.L2750
	b	.L2748
.L2754:
	.align	2
.L2753:
	.word	.LANCHOR102
	.word	.LANCHOR101
	.word	.LANCHOR104
	.word	.LC437
	.word	.LC438
	.word	.LC439
	.word	.LC440
	.size	panic_write, .-panic_write
	.section	.text.is_panic_data_page,"ax",%progbits
	.align	1
	.global	is_panic_data_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_panic_data_page, %function
is_panic_data_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	cmp	r3, #170
	bne	.L2757
	ldrb	r0, [r0, #2]	@ zero_extendqisi2
	sub	r3, r0, #99
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	bx	lr
.L2757:
	movs	r0, #0
	bx	lr
	.size	is_panic_data_page, .-is_panic_data_page
	.section	.text.is_panic_dummy_page,"ax",%progbits
	.align	1
	.global	is_panic_dummy_page
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	is_panic_dummy_page, %function
is_panic_dummy_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	cmp	r3, #170
	bne	.L2760
	ldrb	r0, [r0, #2]	@ zero_extendqisi2
	sub	r3, r0, #98
	rsbs	r0, r3, #0
	adcs	r0, r0, r3
	bx	lr
.L2760:
	movs	r0, #0
	bx	lr
	.size	is_panic_dummy_page, .-is_panic_dummy_page
	.section	.text.panic_recover_info,"ax",%progbits
	.align	1
	.global	panic_recover_info
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	panic_recover_info, %function
panic_recover_info:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r1
	ldrb	r4, [r0, #4]	@ zero_extendqisi2
	cmp	r4, #2
	bhi	.L2762
	ldrh	r1, [r1]
	ldr	r0, .L2764
	bl	NAND_Print
	ldr	r3, .L2764+4
	movs	r0, #0
	str	r5, [r3, r4, lsl #2]
.L2761:
	pop	{r3, r4, r5, pc}
.L2762:
	mov	r1, r4
	ldr	r0, .L2764+8
	bl	NAND_Print
	mov	r0, #-1
	b	.L2761
.L2765:
	.align	2
.L2764:
	.word	.LC441
	.word	.LANCHOR104
	.word	.LC442
	.size	panic_recover_info, .-panic_recover_info
	.section	.text.first_scan_all_blocks,"ax",%progbits
	.align	1
	.global	first_scan_all_blocks
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	first_scan_all_blocks, %function
first_scan_all_blocks:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	sub	sp, sp, #88
	ldr	r4, [r0, #40]
	mov	r5, r0
	movs	r2, #5
	add	r0, sp, #72
	ldr	r1, .L2820
	add	r6, sp, #88
	bl	memcpy
	movs	r3, #47
	ldr	r1, .L2820+4
	strh	r3, [r6, #-32]!	@ movhi
	mov	r0, r6
	bl	nand_fdt_get_string
	cmp	r0, #0
	beq	.L2767
	movs	r2, #3
	add	r1, sp, #72
	bl	NAND_Memcmp
	mov	r7, r0
	cbnz	r0, .L2767
	ldr	r0, .L2820+8
	bl	NAND_Print_DBG
	strh	r7, [r5, #18]	@ movhi
.L2768:
	ldr	r2, [r5, #4]
	mov	r8, #0
	ldrh	r3, [r4]
	ldrh	r2, [r2, #24]
	cmp	r2, r3
	bls	.L2813
	strh	r3, [sp, #74]	@ movhi
	add	r1, sp, #72
	strh	r8, [sp, #72]	@ movhi
	mov	r0, r5
	strh	r8, [sp, #76]	@ movhi
	strd	r8, r6, [sp, #80]
	ldr	r3, [r5, #1992]
	blx	r3
	cmp	r0, #1
	bne	.L2770
	ldr	r3, [r5, #1980]
	add	r1, sp, #72
	mov	r0, r5
	blx	r3
	str	r4, [r5, #44]
	mov	r10, r0
	mov	r0, r6
	bl	get_block_used_count_from_oob
	mov	fp, r0
	mov	r0, r6
	bl	is_ftl_end_flag_page
	cmp	r0, #1
	bne	.L2771
	ldrh	r1, [r4]
	ldr	r0, .L2820+12
	bl	NAND_Print
.L2813:
	mov	r0, r8
	b	.L2766
.L2767:
	mov	r0, #-1
.L2766:
	add	sp, sp, #88
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L2771:
	mov	r0, r6
	bl	is_panic_data_page
	cmp	r0, #1
	bne	.L2772
	ldrb	r2, [sp, #59]	@ zero_extendqisi2
	ldrb	r3, [r5, #16]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L2773
	mov	r1, r4
	mov	r0, r6
	bl	panic_recover_info
.L2773:
	adds	r4, r4, #36
	b	.L2768
.L2772:
	mov	r0, r6
	bl	is_nouse_page
	cmp	r0, #1
	bne	.L2774
	ldrh	r3, [r5, #18]
	mov	r1, r4
	mov	r0, r5
	adds	r3, r3, #1
	strh	r3, [r5, #18]	@ movhi
	strh	r8, [r4, #2]	@ movhi
	strh	r8, [r4, #6]	@ movhi
	strh	r8, [r4, #4]	@ movhi
	bl	put_phy_block_to_free_list
	b	.L2773
.L2774:
	mov	r0, r6
	bl	is_ftl_logic_page_data
	cmp	r0, #1
	beq	.L2775
	mov	r0, r6
	bl	is_function_info_page
	cmp	r0, #1
	bne	.L2776
.L2775:
	cmp	r10, #0
	beq	.L2777
	cmp	r10, #10
	bne	.L2776
.L2777:
	ldrh	r3, [r5, #18]
	mov	r8, #1
	mov	r0, r6
	adds	r3, r3, #1
	strh	r3, [r5, #18]	@ movhi
	strh	r8, [r4, #2]	@ movhi
	bl	get_erase_count_from_oob
	movs	r3, #0
	strh	r0, [r4, #6]	@ movhi
	mov	r7, r0
	strh	r3, [r4, #4]	@ movhi
	str	fp, [r4, #8]
	mov	r1, r4
	strd	r3, r3, [r4, #28]
	mov	r0, r5
	bl	add_block_count_list
	cmp	r10, #10
	bne	.L2773
	ldr	r3, [r5, #1972]
	ldrh	r3, [r3, #4]
	cmp	r3, #0
	beq	.L2773
	mov	r2, r8
	mov	r0, r5
	bl	add_prio_gc
	ldr	r0, .L2820+16
	bl	NAND_Print_DBG
	b	.L2773
.L2776:
	mov	r0, r6
	bl	is_ftl_start_flag_page
	cmp	r0, #1
	bne	.L2778
	ldr	r0, .L2820+20
.L2812:
	bl	NAND_Print
	b	.L2773
.L2778:
	mov	r0, r6
	bl	is_fill_page
	cmp	r0, #1
	bne	.L2779
	ldrh	r3, [r5, #18]
	mov	r0, r6
	adds	r3, r3, #1
	strh	r3, [r5, #18]	@ movhi
	movs	r3, #0
	strh	r3, [r4, #2]	@ movhi
	bl	get_erase_count_from_oob
	ldr	r3, [r5, #4]
	mov	r1, r4
	strh	r0, [r4, #6]	@ movhi
	mov	r7, r0
	mov	r0, r5
	ldrh	r3, [r3, #20]
	strh	r3, [r4, #4]	@ movhi
	bl	put_phy_block_to_free_list
	ldrh	r1, [r4]
	ldr	r0, .L2820+24
	bl	NAND_Print_DBG
	b	.L2773
.L2779:
	ldrb	r0, [sp, #71]	@ zero_extendqisi2
	ldrh	r1, [r4]
	ldrb	r3, [sp, #57]	@ zero_extendqisi2
	str	r0, [sp, #52]
	ldrb	r0, [sp, #70]	@ zero_extendqisi2
	ldrb	r2, [sp, #56]	@ zero_extendqisi2
	str	r0, [sp, #48]
	ldrb	r0, [sp, #69]	@ zero_extendqisi2
	str	r0, [sp, #44]
	ldrb	r0, [sp, #68]	@ zero_extendqisi2
	str	r0, [sp, #40]
	ldrb	r0, [sp, #67]	@ zero_extendqisi2
	str	r0, [sp, #36]
	ldrb	r0, [sp, #66]	@ zero_extendqisi2
	str	r0, [sp, #32]
	ldrb	r0, [sp, #65]	@ zero_extendqisi2
	str	r0, [sp, #28]
	ldrb	r0, [sp, #64]	@ zero_extendqisi2
	str	r0, [sp, #24]
	ldrb	r0, [sp, #63]	@ zero_extendqisi2
	str	r0, [sp, #20]
	ldrb	r0, [sp, #62]	@ zero_extendqisi2
	str	r0, [sp, #16]
	ldrb	r0, [sp, #61]	@ zero_extendqisi2
	str	r0, [sp, #12]
	ldrb	r0, [sp, #60]	@ zero_extendqisi2
	str	r0, [sp, #8]
	ldrb	r0, [sp, #59]	@ zero_extendqisi2
	str	r0, [sp, #4]
	ldrb	r0, [sp, #58]	@ zero_extendqisi2
	str	r0, [sp]
	ldr	r0, .L2820+28
	bl	NAND_Print
	uxth	r2, r7
	adds	r3, r2, #1
	strh	r3, [r4, #6]	@ movhi
	cmp	r10, #0
	beq	.L2780
	cmp	r10, #10
	bne	.L2781
.L2780:
	ldrb	r3, [sp, #56]	@ zero_extendqisi2
	cmp	r3, #255
	beq	.L2782
	ldrh	r1, [r4]
	ldr	r0, .L2820+32
	bl	NAND_Print
	movs	r3, #255
	strh	r3, [r4, #2]	@ movhi
.L2811:
	ldrh	r3, [r5, #20]
	adds	r3, r3, #1
	strh	r3, [r5, #20]	@ movhi
	b	.L2773
.L2782:
	adds	r2, r2, #2
.L2818:
	uxth	r2, r2
	mov	r1, r4
	mov	r0, r5
	bl	erase_block
.L2815:
	cmp	r0, #0
	bne	.L2773
	ldrh	r3, [r5, #18]
	adds	r3, r3, #1
	strh	r3, [r5, #18]	@ movhi
	b	.L2773
.L2781:
	ldrh	r1, [r4]
	ldr	r0, .L2820+36
	bl	NAND_Print
	ldr	r3, [r5, #4]
	add	r1, sp, #72
	ldrh	r2, [r4]
	mov	r0, r5
	ldrh	r3, [r3, #20]
	strh	r2, [sp, #74]	@ movhi
	subs	r3, r3, #1
	strh	r3, [sp, #72]	@ movhi
	movs	r3, #0
	strh	r3, [sp, #76]	@ movhi
	strd	r3, r6, [sp, #80]
	ldr	r3, [r5, #1980]
	blx	r3
	ldrh	r8, [r4]
	mov	fp, r0
	cbz	r0, .L2783
	cmp	r0, #10
	bne	.L2784
.L2783:
	mov	r0, r6
	bl	is_phy_mapping_page
	cmp	r0, #1
	mov	r10, r0
	bne	.L2785
	mov	r1, r8
	ldr	r0, .L2820+40
	bl	NAND_Print
	mov	r0, r6
	bl	get_block_used_count_from_oob
	ldrh	r3, [r5, #18]
	mov	r8, r0
	mov	r0, r6
	adds	r3, r3, #1
	strh	r3, [r5, #18]	@ movhi
	strh	r10, [r4, #2]	@ movhi
	bl	get_erase_count_from_oob
	movs	r3, #0
	strh	r0, [r4, #6]	@ movhi
	mov	r7, r0
	strh	r3, [r4, #4]	@ movhi
	str	r8, [r4, #8]
	mov	r1, r4
	strd	r3, r3, [r4, #28]
	mov	r0, r5
	bl	add_block_count_list
	cmp	fp, #10
	bne	.L2773
	ldr	r3, [r5, #1972]
	ldrh	r3, [r3, #4]
	cmp	r3, #0
	beq	.L2773
	mov	r2, r10
	mov	r0, r5
	bl	add_prio_gc
	ldr	r0, .L2820+44
	b	.L2812
.L2785:
	mov	r0, r6
	bl	is_nouse_page
	cmp	r0, #1
	mov	r1, r8
	ite	eq
	ldreq	r0, .L2820+48
	ldrne	r0, .L2820+52
	bl	NAND_Print
	ldrh	r2, [r4, #6]
	adds	r2, r2, #1
	b	.L2818
.L2821:
	.align	2
.L2820:
	.word	.LANCHOR0+25
	.word	.LANCHOR105
	.word	.LC443
	.word	.LC444
	.word	.LC445
	.word	.LC446
	.word	.LC447
	.word	.LC448
	.word	.LC449
	.word	.LC450
	.word	.LC451
	.word	.LC452
	.word	.LC453
	.word	.LC454
.L2784:
	mov	r1, r8
	ldr	r0, .L2822
	bl	NAND_Print
	ldrb	r0, [sp, #71]	@ zero_extendqisi2
	ldrh	r1, [r4]
	ldrb	r3, [sp, #57]	@ zero_extendqisi2
	str	r0, [sp, #52]
	ldrb	r0, [sp, #70]	@ zero_extendqisi2
	ldrb	r2, [sp, #56]	@ zero_extendqisi2
	str	r0, [sp, #48]
	ldrb	r0, [sp, #69]	@ zero_extendqisi2
	str	r0, [sp, #44]
	ldrb	r0, [sp, #68]	@ zero_extendqisi2
	str	r0, [sp, #40]
	ldrb	r0, [sp, #67]	@ zero_extendqisi2
	str	r0, [sp, #36]
	ldrb	r0, [sp, #66]	@ zero_extendqisi2
	str	r0, [sp, #32]
	ldrb	r0, [sp, #65]	@ zero_extendqisi2
	str	r0, [sp, #28]
	ldrb	r0, [sp, #64]	@ zero_extendqisi2
	str	r0, [sp, #24]
	ldrb	r0, [sp, #63]	@ zero_extendqisi2
	str	r0, [sp, #20]
	ldrb	r0, [sp, #62]	@ zero_extendqisi2
	str	r0, [sp, #16]
	ldrb	r0, [sp, #61]	@ zero_extendqisi2
	str	r0, [sp, #12]
	ldrb	r0, [sp, #60]	@ zero_extendqisi2
	str	r0, [sp, #8]
	ldrb	r0, [sp, #59]	@ zero_extendqisi2
	str	r0, [sp, #4]
	ldrb	r0, [sp, #58]	@ zero_extendqisi2
	str	r0, [sp]
	ldr	r0, .L2822+4
	bl	NAND_Print
	mov	r1, r4
	mov	r0, r5
	bl	torture_block_and_mark
	b	.L2815
.L2770:
	ldrh	r1, [r4]
	ldr	r0, .L2822+8
	bl	NAND_Print
	movs	r3, #255
	strh	r8, [r4, #6]	@ movhi
	strh	r3, [r4, #2]	@ movhi
	b	.L2811
.L2823:
	.align	2
.L2822:
	.word	.LC455
	.word	.LC456
	.word	.LC457
	.size	first_scan_all_blocks, .-first_scan_all_blocks
	.section	.text.build_zone_list,"ax",%progbits
	.align	1
	.global	build_zone_list
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	build_zone_list, %function
build_zone_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	ldr	r0, .L2829
	bl	NAND_Print_DBG
	mov	r0, r4
	bl	first_scan_all_blocks
	ldrh	r1, [r4, #18]
	mov	r0, r4
	bl	init_zone_after_first_scan
	cbz	r0, .L2825
	ldr	r0, .L2829+4
.L2828:
	movs	r5, #1
	bl	NAND_Print
.L2824:
	mov	r0, r5
	pop	{r3, r4, r5, pc}
.L2825:
	mov	r0, r4
	bl	second_scan_all_blocks
	mov	r5, r0
	cbz	r0, .L2827
	ldr	r0, .L2829+8
	b	.L2828
.L2827:
	mov	r0, r4
	bl	power_on_gc
	mov	r0, r4
	bl	print_nftl_zone
	ldr	r0, .L2829+12
	bl	NAND_Print
	mov	r0, r4
	bl	panic_backup_block
	b	.L2824
.L2830:
	.align	2
.L2829:
	.word	.LC458
	.word	.LC459
	.word	.LC460
	.word	.LC461
	.size	build_zone_list, .-build_zone_list
	.global	__aeabi_idiv
	.section	.text.nftl_start,"ax",%progbits
	.align	1
	.global	nftl_start
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_start, %function
nftl_start:
	@ args = 40, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	sub	sp, sp, #40
	ldr	r3, [sp, #92]
	mov	r6, r2
	ldr	r2, [sp, #76]
	ldr	r7, [sp, #88]
	lsr	r10, r3, #9
	ldr	r3, [sp, #72]
	strd	r0, r1, [sp, #28]
	mov	r0, #2016
	lsrs	r7, r7, #9
	lsrs	r3, r3, #9
	orr	r3, r3, r2, lsl #23
	ldr	r2, [sp, #84]
	str	r3, [sp, #20]
	ldr	r3, [sp, #80]
	lsrs	r3, r3, #9
	orr	r3, r3, r2, lsl #23
	str	r3, [sp, #24]
	bl	NAND_Malloc
	mov	r4, r0
	str	r0, [r6]
	cbz	r0, .L2832
	lsl	r3, r10, #9
	uxth	r3, r3
	str	r3, [sp, #16]
	movs	r3, #2
.L2855:
.L2833:
	mov	r2, #2016
	movs	r1, #0
	mov	r0, r4
	str	r3, [sp, #12]
	bl	NAND_Memset
	ldr	r3, [sp, #28]
	movs	r0, #36
	str	r3, [r4]
	ldr	r3, [sp, #32]
	str	r3, [r4, #1972]
	bl	NAND_Malloc
	str	r0, [r4, #4]
	cbnz	r0, .L2835
	ldr	r1, .L2857
	ldr	r0, .L2857+4
	b	.L2856
.L2832:
	ldr	r1, .L2857
	ldr	r0, .L2857+8
.L2856:
	mvn	r5, #1
	bl	NAND_Print
.L2831:
	mov	r0, r5
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L2835:
	movs	r2, #4
	movs	r1, #0
	bl	NAND_Memset
	ldr	r3, .L2857+12
	movs	r2, #8
	ldr	r0, [r4, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #8]
	add	r1, r1, r2
	bl	NAND_Memcpy
	ldr	r5, [r4, #4]
	mov	r1, r7
	ldrh	r3, [sp, #16]
	ldr	r0, [sp, #24]
	strh	r3, [r5, #26]	@ movhi
	ldr	r3, [sp, #96]
	strb	r3, [r5, #10]
	bl	__aeabi_uidiv
	ldr	r2, [r4, #1972]
	mov	r8, r0
	ldrh	r2, [r2, #12]
	cmp	r2, r0
	bcs	.L2845
	uxth	r3, r0
	mov	r1, r10
	mov	r0, r7
	str	r3, [sp, #4]
	mov	fp, #36
	ldrh	r3, [sp, #4]
	strh	r3, [r5, #24]	@ movhi
	bl	__aeabi_uidiv
	uxtb	r2, r10
	add	r3, r8, #1
	strh	r0, [r5, #20]	@ movhi
	strb	r2, [r5, #8]
	strh	r2, [r5, #28]	@ movhi
	movw	r2, #3000
	strh	r2, [r5, #16]	@ movhi
	mul	r2, fp, r3
	str	r3, [sp, #8]
	mov	r0, r2
	str	r2, [sp, #36]
	bl	nftl_malloc
	ldr	r3, [r4, #4]
	str	r0, [r5, #32]
	ldr	r2, [sp, #36]
	ldr	r0, [r3, #32]
	cbnz	r0, .L2836
	ldr	r1, .L2857
	ldr	r0, .L2857+16
	b	.L2856
.L2836:
	subs	r2, r2, #36
	movs	r1, #255
	bl	NAND_Memset
	movs	r1, #0
	mov	ip, #-1
	mov	r2, r1
.L2837:
	ldr	r3, [sp, #8]
	cmp	r3, r1
	bhi	.L2838
	ldr	r0, [r6]
	bl	nftl_ops_init
	mov	r1, r7
	ldr	r0, [sp, #20]
	bl	__aeabi_uidiv
	ldr	r3, [sp, #4]
	subs	r0, r3, r0
	ldr	r3, [r4, #1972]
	uxth	r2, r0
	ldrh	r3, [r3, #12]
	strh	r2, [r4, #22]	@ movhi
	cmp	r3, r2
	bls	.L2839
	mov	r1, r2
	ldr	r0, .L2857+20
	b	.L2856
.L2838:
	ldr	r3, [r4, #4]
	mul	r0, fp, r1
	ldr	lr, [r3, #32]
	add	r3, lr, r0
	strh	r1, [lr, r0]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	adds	r1, r1, #1
	strh	r2, [r3, #2]	@ movhi
	str	ip, [r3, #8]
	strh	r2, [r3, #6]	@ movhi
	strd	r2, r2, [r3, #12]
	strd	r2, r2, [r3, #20]
	strd	r2, r2, [r3, #28]
	b	.L2837
.L2839:
	mov	r1, r8
	ldr	r0, .L2857+24
	bl	NAND_Print_DBG
	ldrh	r3, [r4, #22]
	movs	r1, #0
	ldr	r0, [r6]
	sub	r2, r8, r3
	muls	r2, r7, r2
	muls	r3, r7, r3
	bl	zone_param_init
	mov	r5, r0
	cbz	r0, .L2840
	ldr	r0, .L2857+28
	bl	NAND_Print
	b	.L2831
.L2840:
	ldr	r3, [sp, #104]
	ldr	r2, [r4, #1972]
	strb	r3, [r4, #16]
	ldrh	r3, [r2, #26]
	cbz	r3, .L2841
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	orr	r3, r3, #1
	strb	r3, [r4, #17]
.L2841:
	ldrh	r3, [r2, #10]
	cbz	r3, .L2842
	mov	r1, r8
	ldr	r0, [r6]
	bl	is_no_use_device
	cmp	r0, #1
	bne	.L2842
	mov	r1, r8
	ldr	r0, [r6]
	bl	build_zone_list_first
	mov	r8, r0
	cbz	r0, .L2842
	ldr	r0, .L2857+32
	bl	NAND_Print
.L2844:
	mov	r5, r8
	b	.L2831
.L2842:
	ldr	r0, [r6]
	bl	build_zone_list
	mov	r8, r0
	cbz	r0, .L2843
	ldr	r0, .L2857+36
	bl	NAND_Print
	ldr	r3, [sp, #12]
	cmp	r3, #1
	beq	.L2844
	ldr	r0, .L2857+40
	bl	NAND_Print
	movs	r3, #1
	b	.L2855
.L2843:
	ldr	r0, [r6]
	bl	nftl_cache_init
	b	.L2831
.L2845:
	mov	r5, #-1
	b	.L2831
.L2858:
	.align	2
.L2857:
	.word	.LANCHOR106
	.word	.LC463
	.word	.LC462
	.word	g_nsi
	.word	.LC464
	.word	.LC465
	.word	.LC466
	.word	.LC467
	.word	.LC468
	.word	.LC469
	.word	.LC470
	.size	nftl_start, .-nftl_start
	.section	.text.nftl_initialize,"ax",%progbits
	.align	1
	.global	nftl_initialize
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_initialize, %function
nftl_initialize:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #60
	ldr	r5, [r0, #4]
	mov	r4, r0
	mov	r6, r1
	movs	r2, #9
	ldr	r1, .L2881
	add	r0, sp, #44
	bl	memcpy
	add	r0, sp, #56
	movs	r3, #47
	strh	r3, [r0, #-16]!	@ movhi
	ldr	r1, .L2881+4
	bl	nand_fdt_get_string
	cbz	r0, .L2873
	movs	r2, #9
	add	r1, sp, #44
	bl	NAND_Memcmp
	mov	r7, r0
	cbnz	r0, .L2873
	ldr	r3, .L2881+8
	ldr	r2, .L2881+12
	ldr	r1, .L2881+16
	str	r3, [sp, #4]
	ldr	r3, .L2881+20
	ldr	r0, .L2881+24
	str	r3, [sp]
	ldr	r3, .L2881+28
	bl	NAND_Print
	ldr	r0, .L2881+32
	bl	nftl_get_nand_phyinfo
	ldrh	r3, [r5, #34]
	cmp	r3, #15
	bhi	.L2877
.L2873:
	mov	r6, #-1
	b	.L2859
.L2877:
	movs	r0, #36
	bl	NAND_Malloc
	str	r0, [r4, #16]
	cbnz	r0, .L2863
	movs	r6, #1
	ldr	r1, .L2881+36
	ldr	r0, .L2881+40
	bl	NAND_Print
.L2859:
	mov	r0, r6
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L2863:
	str	r7, [r0, #8]
	mov	r2, #65536
	ldr	r7, [r5, #80]
	mov	r3, #65537
	strd	r2, r3, [r0]
	movs	r1, #3
	ldr	r2, [r7, #36]
	ldrh	r3, [r2, #2478]
	strh	r3, [r0, #12]	@ movhi
	ldrh	r3, [r2, #2480]
	strh	r1, [r0, #20]	@ movhi
	strh	r3, [r0, #16]	@ movhi
	movs	r3, #8
	strh	r3, [r0, #14]	@ movhi
	movs	r3, #2
	strh	r3, [r0, #18]	@ movhi
	ldr	r3, .L2881+44
	str	r3, [r0, #32]
	ldrh	r3, [r2, #2474]
	cmp	r3, #0
	bne	.L2864
.L2878:
	movs	r3, #30
	strh	r1, [r0, #24]	@ movhi
	strh	r3, [r0, #22]	@ movhi
.L2865:
	ldrh	r3, [r7, #2]
	strh	r3, [r0, #26]	@ movhi
	cmp	r3, #0
	beq	.L2868
	movs	r3, #3
.L2880:
	ldr	r1, [r2, #2492]
	strh	r3, [r0, #24]	@ movhi
	ldrh	r3, [r0, #22]
	ldr	r7, .L2881+48
	sub	r2, r1, #86016
	sub	r2, r2, #384
	cmp	r3, #30
	itt	hi
	movhi	r3, #30
	strhhi	r3, [r0, #22]	@ movhi
	movs	r3, #1
	cmp	r2, r7
	strh	r3, [r0, #24]	@ movhi
	it	ls
	strls	r1, [r0, #32]
	strh	r3, [r0, #28]	@ movhi
	bl	nftl_support_boot_check_crc_from_dts
	cbnz	r0, .L2872
	ldr	r3, [r4, #16]
	strh	r0, [r3, #28]	@ movhi
.L2872:
	movs	r3, #0
	str	r5, [sp, #28]
	strd	r6, r3, [sp, #32]
	mov	r0, r4
	ldrh	r3, [r5, #34]
	ldr	r1, [r4, #16]
	str	r3, [sp, #24]
	ldrh	r3, [r5, #40]
	str	r3, [sp, #20]
	ldr	r3, [r5, #44]
	str	r3, [sp, #16]
	ldrd	r2, [r5, #72]
	strd	r2, [sp, #8]
	ldrd	r2, [r5, #64]
	strd	r2, [sp]
	add	r2, r4, #12
	bl	nftl_start
	mov	r6, r0
	cmp	r0, #0
	bne	.L2859
	ldr	r3, [r5, #80]
	ldr	r0, .L2881+52
	ldr	r2, [r3, #36]
	ldr	r3, [r4, #12]
	ldr	r1, [r2, #2484]
	ldr	r3, [r3, #4]
	ldr	r2, [r2, #2488]
	strh	r1, [r3, #16]	@ movhi
	uxth	r1, r1
	strh	r2, [r3, #30]	@ movhi
	bl	NAND_Print_DBG
	ldr	r3, [r4, #12]
	ldr	r3, [r3, #24]
	str	r6, [r4, #8]
	str	r3, [r4]
	ldr	r3, .L2881+56
	str	r3, [r4, #44]
	ldr	r3, .L2881+60
	str	r3, [r4, #40]
	ldr	r3, .L2881+64
	str	r3, [r4, #48]
	ldr	r3, .L2881+68
	str	r3, [r4, #56]
	ldr	r3, .L2881+72
	str	r3, [r4, #52]
	ldr	r3, .L2881+76
	str	r3, [r4, #60]
	ldr	r3, .L2881+80
	str	r3, [r4, #64]
	ldr	r3, .L2881+84
	str	r3, [r4, #68]
	ldr	r3, .L2881+88
	str	r3, [r4, #72]
	b	.L2859
.L2864:
	cmp	r3, #255
	bne	.L2866
	movs	r3, #1
	strh	r3, [r0]	@ movhi
	movs	r3, #50
	strh	r3, [r0, #22]	@ movhi
	movs	r3, #40
.L2879:
	strh	r3, [r0, #24]	@ movhi
	b	.L2865
.L2866:
	cmp	r3, #10
	bls	.L2867
	movs	r3, #10
	strh	r3, [r2, #2474]	@ movhi
	b	.L2878
.L2867:
	add	r3, r3, r3, lsl #2
	add	r1, r3, r3, lsl #2
	lsls	r3, r3, #3
	lsls	r1, r1, #1
	strh	r1, [r0, #22]	@ movhi
	b	.L2879
.L2868:
	movs	r3, #1
	b	.L2880
.L2882:
	.align	2
.L2881:
	.word	.LANCHOR0+30
	.word	.LANCHOR107
	.word	.LC475
	.word	.LC472
	.word	.LC473
	.word	.LC476
	.word	.LC474
	.word	.LC471
	.word	.LANCHOR7
	.word	.LANCHOR108
	.word	.LC477
	.word	1296000
	.word	7692600
	.word	.LC478
	.word	_nand_read
	.word	_nand_read_history
	.word	_nand_write
	.word	_nand_discard
	.word	_nand_flush_write_cache
	.word	_shutdown_op
	.word	_nand_sector_read
	.word	_nand_sector_write
	.word	_nand_flush_sector_write_cache
	.size	nftl_initialize, .-nftl_initialize
	.section	.text.nand_find_zone_table,"ax",%progbits
	.align	1
	.global	nand_find_zone_table
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_find_zone_table, %function
nand_find_zone_table:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	bl	clean_block_list
	mov	r0, r4
	bl	nand_clean_zone_table2
	ldr	r0, .L2884
	bl	NAND_Print_DBG
	ldr	r5, .L2884+4
	mov	r0, r4
	bl	build_zone_list
	ldr	r0, .L2884+8
	bl	NAND_Print_DBG
	mov	r0, r4
	bl	nftl_cache_init
	mov	r0, r5
	bl	NAND_Print_DBG
	mov	r0, r4
	bl	print_block_invalid_list
	mov	r0, r4
	bl	print_free_list
	mov	r0, r5
	bl	NAND_Print_DBG
	ldr	r0, .L2884+12
	bl	NAND_Print_DBG
	movs	r0, #0
	pop	{r3, r4, r5, pc}
.L2885:
	.align	2
.L2884:
	.word	.LC479
	.word	.LC481
	.word	.LC480
	.word	.LC482
	.size	nand_find_zone_table, .-nand_find_zone_table
	.section	.text.nand_check_table,"ax",%progbits
	.align	1
	.global	nand_check_table
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nand_check_table, %function
nand_check_table:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r1, #1000
	ldr	r4, .L2887
	mov	r5, r0
	bl	__nand_flush_write_cache
	mov	r0, r4
	bl	NAND_Print_DBG
	mov	r0, r5
	bl	print_nftl_zone
	mov	r0, r4
	bl	NAND_Print_DBG
	mov	r0, r5
	bl	nand_clean_zone_table
	mov	r0, r4
	bl	NAND_Print_DBG
	mov	r0, r5
	bl	nand_find_zone_table
	mov	r0, r5
	bl	write_data_to_nand
	mov	r0, r4
	bl	NAND_Print_DBG
	movs	r0, #0
	pop	{r3, r4, r5, pc}
.L2888:
	.align	2
.L2887:
	.word	.LC483
	.size	nand_check_table, .-nand_check_table
	.section	.text.panic_recover_data,"ax",%progbits
	.align	1
	.global	panic_recover_data
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	panic_recover_data, %function
panic_recover_data:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	sub	sp, sp, #40
	ldr	r4, .L2908
	ldr	r5, [r4]
	cbnz	r5, .L2890
	ldr	r0, .L2908+4
	bl	NAND_Print
.L2907:
	movs	r0, #0
	b	.L2889
.L2890:
	ldr	r6, [r0, #12]
	ldr	r0, .L2908+8
	ldr	r7, [r6, #4]
	bl	NAND_Print
	ldrh	r0, [r7, #26]
	bl	NAND_Malloc
	mov	fp, r0
	cbnz	r0, .L2892
	mov	r2, #308
	ldr	r1, .L2908+12
	ldr	r0, .L2908+16
	bl	NAND_Print
	mov	r0, #-1
.L2889:
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
.L2892:
	ldrh	r2, [r7, #26]
	movs	r1, #0
	bl	NAND_Memset
	movs	r3, #0
.L2906:
	str	r3, [r4, #16]
	ldr	r3, [r4, #16]
	cmp	r3, #2
	bhi	.L2900
	ldr	r3, [r4, r3, lsl #2]
	str	r3, [sp]
	movs	r3, #0
.L2905:
	str	r3, [r4, #20]
	ldrh	r2, [r7, #20]
	ldr	r3, [r4, #20]
	cmp	r3, r2
	bcc	.L2901
	ldr	r3, [r4, #16]
	adds	r3, r3, #1
	b	.L2906
.L2901:
	ldr	r2, [sp]
	add	r5, sp, #24
	mov	r0, r6
	ldrh	r1, [r2]
	ldrh	r2, [r7, #28]
	strh	r3, [sp, #8]	@ movhi
	strh	r1, [sp, #10]	@ movhi
	add	r1, sp, #8
	ldr	r3, [r6, #1980]
	strh	r2, [sp, #12]	@ movhi
	str	fp, [sp, #16]
	str	r5, [sp, #20]
	blx	r3
	mov	r0, r5
	bl	is_panic_dummy_page
	ldr	r3, [sp]
	ldrh	r8, [r3]
	cbz	r0, .L2895
	ldr	r2, [r4, #20]
	mov	r1, r8
	ldr	r0, .L2908+20
	bl	NAND_Print
.L2896:
	ldr	r3, [r4, #20]
	adds	r3, r3, #1
	b	.L2905
.L2895:
	mov	r0, r5
	bl	is_panic_data_page
	ldr	r10, [r4, #20]
	cbnz	r0, .L2897
	ldr	r3, [r4, #16]
	mov	r2, r10
	mov	r1, r8
	cbnz	r3, .L2898
	cmp	r10, #0
	bne	.L2898
	ldr	r0, .L2908+24
	bl	NAND_Print
.L2899:
	movs	r1, #0
	mov	r0, fp
	bl	NAND_Free
	b	.L2907
.L2898:
	ldr	r0, .L2908+28
	bl	NAND_Print
.L2900:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	blt	.L2899
	ldr	r1, [r4, r3, lsl #2]
	mov	r0, r6
	ldrh	r2, [r1, #6]
	adds	r2, r2, #1
	uxth	r2, r2
	bl	erase_block
	ldr	r3, [r4, #16]
	subs	r3, r3, #1
	str	r3, [r4, #16]
	b	.L2900
.L2897:
	movs	r2, #4
	movs	r1, #7
	mov	r0, r5
	bl	get_spare_data
	movs	r2, #4
	str	r0, [sp, #4]
	movs	r1, #11
	mov	r0, r5
	bl	get_spare_data
	mov	r2, r10
	mov	r5, r0
	mov	r1, r8
	ldr	r3, [sp, #4]
	ldr	r0, .L2908+32
	bl	NAND_Print
	mov	r2, fp
	mov	r1, r5
	ldr	r0, [sp, #4]
	bl	nftl_write
	b	.L2896
.L2909:
	.align	2
.L2908:
	.word	.LANCHOR104
	.word	.LC484
	.word	.LC485
	.word	.LANCHOR109
	.word	.LC486
	.word	.LC487
	.word	.LC488
	.word	.LC489
	.word	.LC490
	.size	panic_recover_data, .-panic_recover_data
	.section	.text.nftl_add,"ax",%progbits
	.align	1
	.global	nftl_add
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_add, %function
nftl_add:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r0
	movs	r0, #76
	bl	NAND_Malloc
	mov	r4, r0
	cbnz	r0, .L2911
	ldr	r1, .L2914
	ldr	r0, .L2914+4
	bl	NAND_Print
.L2910:
	mov	r0, r4
	pop	{r3, r4, r5, pc}
.L2911:
	mov	r0, r5
	bl	build_nand_partition
	ldrh	r1, [r5]
	str	r0, [r4, #4]
	mov	r0, r4
	bl	nftl_initialize
	cbz	r0, .L2913
	ldr	r0, .L2914+8
	movs	r4, #0
	bl	NAND_Print
	b	.L2910
.L2913:
	mov	r1, r4
	ldr	r0, .L2914+12
	bl	add_nftl_blk_list
	mov	r0, r4
	bl	panic_recover_data
	ldr	r0, .L2914+16
	bl	NAND_Print_DBG
	b	.L2910
.L2915:
	.align	2
.L2914:
	.word	.LANCHOR110
	.word	.LC491
	.word	.LC492
	.word	.LANCHOR19
	.word	.LC493
	.size	nftl_add, .-nftl_add
	.section	.text.nftl_build_all,"ax",%progbits
	.align	1
	.global	nftl_build_all
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_build_all, %function
nftl_build_all:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r2, #0
	ldr	r4, [r0, #56]
	ldr	r3, .L2921
	str	r2, [r3, #8]
.L2917:
	mov	r0, r4
	cbz	r4, .L2916
	bl	nftl_add
	cbnz	r0, .L2918
	ldr	r0, .L2921+4
	bl	NAND_Print
	movs	r0, #1
.L2916:
	pop	{r4, pc}
.L2918:
	ldr	r4, [r4, #48]
	b	.L2917
.L2922:
	.align	2
.L2921:
	.word	.LANCHOR19
	.word	.LC494
	.size	nftl_build_all, .-nftl_build_all
	.section	.text.nftl_build_one,"ax",%progbits
	.align	1
	.global	nftl_build_one
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	nftl_build_one, %function
nftl_build_one:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r1
	ldr	r4, [r0, #56]
	cbnz	r1, .L2925
	ldr	r3, .L2929
	str	r1, [r3, #8]
.L2925:
	cbnz	r4, .L2928
	mov	r0, r4
	b	.L2923
.L2928:
	ldrh	r3, [r4]
	cmp	r3, r5
	bne	.L2926
	mov	r0, r4
	bl	nftl_add
	cbnz	r0, .L2926
	ldr	r0, .L2929+4
	bl	NAND_Print
	movs	r0, #1
.L2923:
	pop	{r3, r4, r5, pc}
.L2926:
	ldr	r4, [r4, #48]
	b	.L2925
.L2930:
	.align	2
.L2929:
	.word	.LANCHOR19
	.word	.LC494
	.size	nftl_build_one, .-nftl_build_one
	.global	samsung_p1
	.global	samsung_read_retry_cmd
	.global	samsung_read_retry_addr
	.global	samsung_read_retry_cycle
	.global	samsung_read_retry_mode
	.global	para1
	.global	para0
	.global	hynix26nm_lsb_mode_reg_num
	.global	hynix26nm_lsb_mode_val
	.global	hynix26nm_lsb_mode_default_val
	.global	hynix26nm_lsb_mode_reg_adr
	.global	hynix26nm_read_retry_val
	.global	hynix26nm_read_retry_reg_adr
	.global	hynix26nm_read_retry_reg_num
	.global	hynix26nm_read_retry_cycle
	.global	hynix26nm_read_retry_mode
	.global	hynix20nm_lsb_mode_reg_num
	.global	hynix20nm_lsb_mode_val
	.global	hynix20nm_lsb_mode_default_val
	.global	hynix20nm_lsb_mode_reg_adr
	.global	hynix20nm_read_retry_reg_adr_2
	.global	hynix20nm_read_retry_reg_adr_1
	.global	hynix20nm_read_retry_reg_adr
	.global	hynix20nm_read_retry_reg_num
	.global	hynix20nm_read_retry_cycle
	.global	hynix20nm_read_retry_mode
	.global	sandisk_1y
	.global	sandisk_read_retry_reg_adr_1y
	.global	sandisk_read_retry_cmd_1y
	.global	sandisk_read_retry_exit_cmd_1y
	.global	sandisk_read_retry_enable_cmd_1y
	.global	sandisk_24
	.global	sandisk_read_retry_reg_adr_24
	.global	sandisk_read_retry_cmd_24
	.global	sandisk_19_high
	.global	sandisk_19_low
	.global	sandisk_read_retry_reg_adr_19
	.global	sandisk_read_retry_cmd_19
	.global	sandisk_read_retry_disable_cmd_19
	.global	sandisk_read_retry_enable_cmd_19
	.global	sandisk_acti_start_addr
	.global	sandisk_acti_start_cmd
	.global	sandisk_read_retry_reg_cnt
	.global	sandisk_read_retry_cycle
	.global	sandisk_read_retry_mode
	.global	sandisk_A19_1z_8g
	.global	sandisk_A19_1z_16g
	.global	sandisk_A19_1y
	.global	sandisk_A19_read_retry_reg_adr_1y
	.global	sandisk_A19_read_retry_cmd_1y
	.global	sandisk_A19_read_retry_exit_cmd_1y
	.global	sandisk_A19_read_retry_enable_cmd_1y
	.global	sandisk_A19_read_retry_reg_cnt
	.global	sandisk_A19_read_retry_cycle
	.global	sandisk_A19_read_retry_mode
	.global	toshiba_read_retry_exit_cmd
	.global	toshiba_read_retry_last_cmd
	.global	toshiba_p1_3
	.global	toshiba_p1_2
	.global	toshiba_read_retry_addr_2
	.global	toshiba_read_retry_cmd_2
	.global	toshiba_p1_1
	.global	toshiba_read_retry_addr_1
	.global	toshiba_read_retry_cmd_1
	.global	toshiba_read_retry_end_cmd
	.global	toshiba_read_retry_start_cmd
	.global	toshiba_read_retry_reg_cnt
	.global	toshiba_read_retry_cycle
	.global	toshiba_read_retry_mode
	.global	hynix16nm_read_retry_reg_adr
	.global	hynix16nm_read_retry_reg_num
	.global	hynix16nm_read_retry_cycle
	.global	hynix16nm_read_retry_mode
	.global	micron_p1_3
	.global	micron_p1_2
	.global	micron_p1_1
	.global	micron_read_retry_cycle
	.global	micron_read_retry_mode
	.global	nftl_blk_head
	.global	phyinfo
	.global	mod
	.global	com
	.section	.rodata
	.set	.LANCHOR0,. + 0
.LC0:
	.byte	44
	.byte	100
	.byte	68
	.byte	50
	.byte	-91
	.byte	-1
	.byte	-1
	.byte	-1
.LC1:
	.byte	44
	.byte	-124
	.byte	68
	.byte	50
	.byte	-86
	.byte	4
	.byte	0
	.byte	0
.LC4:
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
.LC2:
	.byte	115
	.byte	117
	.byte	110
	.byte	120
	.byte	105
.LC3:
	.byte	97
	.byte	108
	.byte	108
	.byte	119
	.byte	105
	.byte	110
	.byte	110
	.byte	101
	.byte	114
	.section	.bss.hynix16nm_read_retry_cycle,"aw",%nobits
	.set	.LANCHOR26,. + 0
	.type	hynix16nm_read_retry_cycle, %object
	.size	hynix16nm_read_retry_cycle, 1
hynix16nm_read_retry_cycle:
	.space	1
	.section	.bss.hynix16nm_read_retry_mode,"aw",%nobits
	.set	.LANCHOR29,. + 0
	.type	hynix16nm_read_retry_mode, %object
	.size	hynix16nm_read_retry_mode, 1
hynix16nm_read_retry_mode:
	.space	1
	.section	.bss.hynix16nm_read_retry_reg_adr,"aw",%nobits
	.set	.LANCHOR28,. + 0
	.type	hynix16nm_read_retry_reg_adr, %object
	.size	hynix16nm_read_retry_reg_adr, 4
hynix16nm_read_retry_reg_adr:
	.space	4
	.section	.bss.hynix16nm_read_retry_reg_num,"aw",%nobits
	.set	.LANCHOR27,. + 0
	.type	hynix16nm_read_retry_reg_num, %object
	.size	hynix16nm_read_retry_reg_num, 1
hynix16nm_read_retry_reg_num:
	.space	1
	.section	.bss.hynix20nm_lsb_mode_default_val,"aw",%nobits
	.set	.LANCHOR84,. + 0
	.type	hynix20nm_lsb_mode_default_val, %object
	.size	hynix20nm_lsb_mode_default_val, 4
hynix20nm_lsb_mode_default_val:
	.space	4
	.section	.bss.hynix20nm_lsb_mode_reg_adr,"aw",%nobits
	.set	.LANCHOR82,. + 0
	.type	hynix20nm_lsb_mode_reg_adr, %object
	.size	hynix20nm_lsb_mode_reg_adr, 4
hynix20nm_lsb_mode_reg_adr:
	.space	4
	.section	.bss.hynix20nm_lsb_mode_reg_num,"aw",%nobits
	.set	.LANCHOR81,. + 0
	.type	hynix20nm_lsb_mode_reg_num, %object
	.size	hynix20nm_lsb_mode_reg_num, 1
hynix20nm_lsb_mode_reg_num:
	.space	1
	.section	.bss.hynix20nm_lsb_mode_val,"aw",%nobits
	.set	.LANCHOR83,. + 0
	.type	hynix20nm_lsb_mode_val, %object
	.size	hynix20nm_lsb_mode_val, 4
hynix20nm_lsb_mode_val:
	.space	4
	.section	.bss.hynix20nm_read_retry_cycle,"aw",%nobits
	.set	.LANCHOR77,. + 0
	.type	hynix20nm_read_retry_cycle, %object
	.size	hynix20nm_read_retry_cycle, 1
hynix20nm_read_retry_cycle:
	.space	1
	.section	.bss.hynix20nm_read_retry_mode,"aw",%nobits
	.set	.LANCHOR80,. + 0
	.type	hynix20nm_read_retry_mode, %object
	.size	hynix20nm_read_retry_mode, 1
hynix20nm_read_retry_mode:
	.space	1
	.section	.bss.hynix20nm_read_retry_reg_adr,"aw",%nobits
	.set	.LANCHOR79,. + 0
	.type	hynix20nm_read_retry_reg_adr, %object
	.size	hynix20nm_read_retry_reg_adr, 8
hynix20nm_read_retry_reg_adr:
	.space	8
	.section	.bss.hynix20nm_read_retry_reg_num,"aw",%nobits
	.set	.LANCHOR78,. + 0
	.type	hynix20nm_read_retry_reg_num, %object
	.size	hynix20nm_read_retry_reg_num, 1
hynix20nm_read_retry_reg_num:
	.space	1
	.section	.bss.hynix26nm_lsb_mode_default_val,"aw",%nobits
	.set	.LANCHOR93,. + 0
	.type	hynix26nm_lsb_mode_default_val, %object
	.size	hynix26nm_lsb_mode_default_val, 5
hynix26nm_lsb_mode_default_val:
	.space	5
	.section	.bss.hynix26nm_lsb_mode_reg_adr,"aw",%nobits
	.set	.LANCHOR91,. + 0
	.type	hynix26nm_lsb_mode_reg_adr, %object
	.size	hynix26nm_lsb_mode_reg_adr, 5
hynix26nm_lsb_mode_reg_adr:
	.space	5
	.section	.bss.hynix26nm_lsb_mode_reg_num,"aw",%nobits
	.set	.LANCHOR90,. + 0
	.type	hynix26nm_lsb_mode_reg_num, %object
	.size	hynix26nm_lsb_mode_reg_num, 1
hynix26nm_lsb_mode_reg_num:
	.space	1
	.section	.bss.hynix26nm_lsb_mode_val,"aw",%nobits
	.set	.LANCHOR92,. + 0
	.type	hynix26nm_lsb_mode_val, %object
	.size	hynix26nm_lsb_mode_val, 5
hynix26nm_lsb_mode_val:
	.space	5
	.section	.bss.hynix26nm_read_retry_cycle,"aw",%nobits
	.set	.LANCHOR85,. + 0
	.type	hynix26nm_read_retry_cycle, %object
	.size	hynix26nm_read_retry_cycle, 1
hynix26nm_read_retry_cycle:
	.space	1
	.section	.bss.hynix26nm_read_retry_mode,"aw",%nobits
	.set	.LANCHOR89,. + 0
	.type	hynix26nm_read_retry_mode, %object
	.size	hynix26nm_read_retry_mode, 1
hynix26nm_read_retry_mode:
	.space	1
	.section	.bss.hynix26nm_read_retry_reg_adr,"aw",%nobits
	.set	.LANCHOR88,. + 0
	.type	hynix26nm_read_retry_reg_adr, %object
	.size	hynix26nm_read_retry_reg_adr, 4
hynix26nm_read_retry_reg_adr:
	.space	4
	.section	.bss.hynix26nm_read_retry_reg_num,"aw",%nobits
	.set	.LANCHOR86,. + 0
	.type	hynix26nm_read_retry_reg_num, %object
	.size	hynix26nm_read_retry_reg_num, 1
hynix26nm_read_retry_reg_num:
	.space	1
	.section	.bss.hynix26nm_read_retry_val,"aw",%nobits
	.align	1
	.set	.LANCHOR87,. + 0
	.type	hynix26nm_read_retry_val, %object
	.size	hynix26nm_read_retry_val, 56
hynix26nm_read_retry_val:
	.space	56
	.section	.bss.micron_p1,"aw",%nobits
	.align	2
	.set	.LANCHOR21,. + 0
	.type	micron_p1, %object
	.size	micron_p1, 4
micron_p1:
	.space	4
	.section	.bss.micron_read_retry_cycle,"aw",%nobits
	.set	.LANCHOR22,. + 0
	.type	micron_read_retry_cycle, %object
	.size	micron_read_retry_cycle, 1
micron_read_retry_cycle:
	.space	1
	.section	.bss.micron_read_retry_mode,"aw",%nobits
	.set	.LANCHOR20,. + 0
	.type	micron_read_retry_mode, %object
	.size	micron_read_retry_mode, 1
micron_read_retry_mode:
	.space	1
	.section	.bss.nand_on_panic,"aw",%nobits
	.align	2
	.set	.LANCHOR101,. + 0
	.type	nand_on_panic, %object
	.size	nand_on_panic, 4
nand_on_panic:
	.space	4
	.section	.bss.nftl_blk_head,"aw",%nobits
	.align	2
	.set	.LANCHOR19,. + 0
	.type	nftl_blk_head, %object
	.size	nftl_blk_head, 76
nftl_blk_head:
	.space	76
	.section	.bss.panic_enable,"aw",%nobits
	.align	2
	.set	.LANCHOR102,. + 0
	.type	panic_enable, %object
	.size	panic_enable, 4
panic_enable:
	.space	4
	.section	.bss.panic_info,"aw",%nobits
	.align	2
	.set	.LANCHOR104,. + 0
	.type	panic_info, %object
	.size	panic_info, 24
panic_info:
	.space	24
	.section	.bss.panic_part,"aw",%nobits
	.align	2
	.set	.LANCHOR103,. + 0
	.type	panic_part, %object
	.size	panic_part, 12
panic_part:
	.space	12
	.section	.bss.phyinfo,"aw",%nobits
	.align	2
	.set	.LANCHOR7,. + 0
	.type	phyinfo, %object
	.size	phyinfo, 20
phyinfo:
	.space	20
	.section	.bss.samsung_read_retry_cycle,"aw",%nobits
	.set	.LANCHOR99,. + 0
	.type	samsung_read_retry_cycle, %object
	.size	samsung_read_retry_cycle, 1
samsung_read_retry_cycle:
	.space	1
	.section	.bss.samsung_read_retry_mode,"aw",%nobits
	.set	.LANCHOR100,. + 0
	.type	samsung_read_retry_mode, %object
	.size	samsung_read_retry_mode, 1
samsung_read_retry_mode:
	.space	1
	.section	.bss.sandisk_A19_read_retry_cycle,"aw",%nobits
	.set	.LANCHOR49,. + 0
	.type	sandisk_A19_read_retry_cycle, %object
	.size	sandisk_A19_read_retry_cycle, 1
sandisk_A19_read_retry_cycle:
	.space	1
	.section	.bss.sandisk_A19_read_retry_mode,"aw",%nobits
	.set	.LANCHOR48,. + 0
	.type	sandisk_A19_read_retry_mode, %object
	.size	sandisk_A19_read_retry_mode, 1
sandisk_A19_read_retry_mode:
	.space	1
	.section	.bss.sandisk_A19_read_retry_reg_cnt,"aw",%nobits
	.set	.LANCHOR50,. + 0
	.type	sandisk_A19_read_retry_reg_cnt, %object
	.size	sandisk_A19_read_retry_reg_cnt, 1
sandisk_A19_read_retry_reg_cnt:
	.space	1
	.section	.bss.sandisk_A19_sclk0_bak,"aw",%nobits
	.align	2
	.set	.LANCHOR52,. + 0
	.type	sandisk_A19_sclk0_bak, %object
	.size	sandisk_A19_sclk0_bak, 4
sandisk_A19_sclk0_bak:
	.space	4
	.section	.bss.sandisk_A19_sclk1_bak,"aw",%nobits
	.align	2
	.set	.LANCHOR51,. + 0
	.type	sandisk_A19_sclk1_bak, %object
	.size	sandisk_A19_sclk1_bak, 4
sandisk_A19_sclk1_bak:
	.space	4
	.section	.bss.sandisk_read_retry_cycle,"aw",%nobits
	.set	.LANCHOR68,. + 0
	.type	sandisk_read_retry_cycle, %object
	.size	sandisk_read_retry_cycle, 1
sandisk_read_retry_cycle:
	.space	1
	.section	.bss.sandisk_read_retry_mode,"aw",%nobits
	.set	.LANCHOR61,. + 0
	.type	sandisk_read_retry_mode, %object
	.size	sandisk_read_retry_mode, 1
sandisk_read_retry_mode:
	.space	1
	.section	.bss.sandisk_read_retry_reg_cnt,"aw",%nobits
	.set	.LANCHOR76,. + 0
	.type	sandisk_read_retry_reg_cnt, %object
	.size	sandisk_read_retry_reg_cnt, 1
sandisk_read_retry_reg_cnt:
	.space	1
	.section	.bss.sandisk_sclk0_bak,"aw",%nobits
	.align	2
	.set	.LANCHOR60,. + 0
	.type	sandisk_sclk0_bak, %object
	.size	sandisk_sclk0_bak, 4
sandisk_sclk0_bak:
	.space	4
	.section	.bss.sandisk_sclk1_bak,"aw",%nobits
	.align	2
	.set	.LANCHOR59,. + 0
	.type	sandisk_sclk1_bak, %object
	.size	sandisk_sclk1_bak, 4
sandisk_sclk1_bak:
	.space	4
	.section	.bss.sandisk_toggle_mode_flag,"aw",%nobits
	.align	2
	.set	.LANCHOR65,. + 0
	.type	sandisk_toggle_mode_flag, %object
	.size	sandisk_toggle_mode_flag, 4
sandisk_toggle_mode_flag:
	.space	4
	.section	.bss.toshiba_read_retry_cycle,"aw",%nobits
	.set	.LANCHOR46,. + 0
	.type	toshiba_read_retry_cycle, %object
	.size	toshiba_read_retry_cycle, 1
toshiba_read_retry_cycle:
	.space	1
	.section	.bss.toshiba_read_retry_mode,"aw",%nobits
	.set	.LANCHOR32,. + 0
	.type	toshiba_read_retry_mode, %object
	.size	toshiba_read_retry_mode, 1
toshiba_read_retry_mode:
	.space	1
	.section	.bss.toshiba_read_retry_reg_cnt,"aw",%nobits
	.set	.LANCHOR47,. + 0
	.type	toshiba_read_retry_reg_cnt, %object
	.size	toshiba_read_retry_reg_cnt, 1
toshiba_read_retry_reg_cnt:
	.space	1
	.section	.bss.toshiba_retry_flag,"aw",%nobits
	.align	2
	.set	.LANCHOR34,. + 0
	.type	toshiba_retry_flag, %object
	.size	toshiba_retry_flag, 4
toshiba_retry_flag:
	.space	4
	.section	.bss.toshiba_sclk0_bak,"aw",%nobits
	.align	2
	.set	.LANCHOR31,. + 0
	.type	toshiba_sclk0_bak, %object
	.size	toshiba_sclk0_bak, 4
toshiba_sclk0_bak:
	.space	4
	.section	.bss.toshiba_sclk1_bak,"aw",%nobits
	.align	2
	.set	.LANCHOR30,. + 0
	.type	toshiba_sclk1_bak, %object
	.size	toshiba_sclk1_bak, 4
toshiba_sclk1_bak:
	.space	4
	.section	.bss.toshiba_toggle_mode_flag,"aw",%nobits
	.align	2
	.set	.LANCHOR42,. + 0
	.type	toshiba_toggle_mode_flag, %object
	.size	toshiba_toggle_mode_flag, 4
toshiba_toggle_mode_flag:
	.space	4
	.section	.data.hynix20nm_read_retry_reg_adr_1,"aw",%progbits
	.type	hynix20nm_read_retry_reg_adr_1, %object
	.size	hynix20nm_read_retry_reg_adr_1, 8
hynix20nm_read_retry_reg_adr_1:
	.byte	-52
	.byte	-65
	.byte	-86
	.byte	-85
	.byte	-51
	.byte	-83
	.byte	-82
	.byte	-81
	.section	.data.hynix20nm_read_retry_reg_adr_2,"aw",%progbits
	.type	hynix20nm_read_retry_reg_adr_2, %object
	.size	hynix20nm_read_retry_reg_adr_2, 8
hynix20nm_read_retry_reg_adr_2:
	.byte	-80
	.byte	-79
	.byte	-78
	.byte	-77
	.byte	-76
	.byte	-75
	.byte	-74
	.byte	-73
	.section	.data.micron_p1_1,"aw",%progbits
	.set	.LANCHOR24,. + 0
	.type	micron_p1_1, %object
	.size	micron_p1_1, 10
micron_p1_1:
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.section	.data.micron_p1_2,"aw",%progbits
	.set	.LANCHOR23,. + 0
	.type	micron_p1_2, %object
	.size	micron_p1_2, 12
micron_p1_2:
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	12
	.section	.data.micron_p1_3,"aw",%progbits
	.set	.LANCHOR25,. + 0
	.type	micron_p1_3, %object
	.size	micron_p1_3, 7
micron_p1_3:
	.byte	1
	.byte	2
	.byte	3
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.section	.data.samsung_p1,"aw",%progbits
	.set	.LANCHOR98,. + 0
	.type	samsung_p1, %object
	.size	samsung_p1, 60
samsung_p1:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	5
	.byte	10
	.byte	0
	.byte	0
	.byte	40
	.byte	0
	.byte	-20
	.byte	-40
	.byte	-19
	.byte	-11
	.byte	-19
	.byte	-26
	.byte	10
	.byte	15
	.byte	5
	.byte	0
	.byte	15
	.byte	10
	.byte	-5
	.byte	-20
	.byte	-24
	.byte	-17
	.byte	-24
	.byte	-36
	.byte	-15
	.byte	-5
	.byte	-2
	.byte	-16
	.byte	10
	.byte	0
	.byte	-5
	.byte	-20
	.byte	-48
	.byte	-30
	.byte	-48
	.byte	-62
	.byte	20
	.byte	15
	.byte	-5
	.byte	-20
	.byte	-24
	.byte	-5
	.byte	-24
	.byte	-36
	.byte	30
	.byte	20
	.byte	-5
	.byte	-20
	.byte	-5
	.byte	-1
	.byte	-5
	.byte	-8
	.byte	7
	.byte	12
	.byte	2
	.byte	0
	.section	.data.samsung_read_retry_addr,"aw",%progbits
	.set	.LANCHOR97,. + 0
	.type	samsung_read_retry_addr, %object
	.size	samsung_read_retry_addr, 4
samsung_read_retry_addr:
	.byte	-89
	.byte	-92
	.byte	-91
	.byte	-90
	.section	.data.samsung_read_retry_cmd,"aw",%progbits
	.set	.LANCHOR96,. + 0
	.type	samsung_read_retry_cmd, %object
	.size	samsung_read_retry_cmd, 4
samsung_read_retry_cmd:
	.byte	-95
	.byte	-95
	.byte	-95
	.byte	-95
	.section	.data.sandisk_19_high,"aw",%progbits
	.set	.LANCHOR69,. + 0
	.type	sandisk_19_high, %object
	.size	sandisk_19_high, 60
sandisk_19_high:
	.byte	0
	.byte	-16
	.byte	0
	.byte	15
	.byte	-32
	.byte	0
	.byte	15
	.byte	-48
	.byte	0
	.byte	14
	.byte	-32
	.byte	0
	.byte	14
	.byte	-48
	.byte	0
	.byte	13
	.byte	-16
	.byte	0
	.byte	13
	.byte	-32
	.byte	0
	.byte	13
	.byte	-48
	.byte	0
	.byte	1
	.byte	16
	.byte	0
	.byte	2
	.byte	32
	.byte	0
	.byte	2
	.byte	16
	.byte	0
	.byte	3
	.byte	32
	.byte	0
	.byte	15
	.byte	0
	.byte	0
	.byte	14
	.byte	-16
	.byte	0
	.byte	13
	.byte	-64
	.byte	0
	.byte	15
	.byte	-16
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	13
	.byte	-80
	.byte	0
	.byte	12
	.byte	-96
	.byte	0
	.section	.data.sandisk_19_low,"aw",%progbits
	.set	.LANCHOR67,. + 0
	.type	sandisk_19_low, %object
	.size	sandisk_19_low, 48
sandisk_19_low:
	.byte	-16
	.byte	0
	.byte	-16
	.byte	-32
	.byte	0
	.byte	-32
	.byte	-48
	.byte	0
	.byte	-48
	.byte	16
	.byte	0
	.byte	16
	.byte	32
	.byte	0
	.byte	32
	.byte	48
	.byte	0
	.byte	48
	.byte	-64
	.byte	0
	.byte	-48
	.byte	0
	.byte	0
	.byte	16
	.byte	0
	.byte	0
	.byte	32
	.byte	16
	.byte	0
	.byte	32
	.byte	-80
	.byte	0
	.byte	-48
	.byte	-96
	.byte	0
	.byte	-48
	.byte	-112
	.byte	0
	.byte	-48
	.byte	-80
	.byte	0
	.byte	-64
	.byte	-96
	.byte	0
	.byte	-64
	.byte	-112
	.byte	0
	.byte	-64
	.section	.data.sandisk_1y,"aw",%progbits
	.set	.LANCHOR74,. + 0
	.type	sandisk_1y, %object
	.size	sandisk_1y, 76
sandisk_1y:
	.byte	4
	.byte	0
	.byte	124
	.byte	124
	.byte	8
	.byte	0
	.byte	4
	.byte	4
	.byte	124
	.byte	124
	.byte	0
	.byte	124
	.byte	124
	.byte	124
	.byte	0
	.byte	0
	.byte	12
	.byte	0
	.byte	120
	.byte	120
	.byte	16
	.byte	0
	.byte	8
	.byte	8
	.byte	124
	.byte	124
	.byte	120
	.byte	120
	.byte	124
	.byte	124
	.byte	4
	.byte	4
	.byte	124
	.byte	124
	.byte	120
	.byte	116
	.byte	20
	.byte	4
	.byte	4
	.byte	0
	.byte	120
	.byte	120
	.byte	0
	.byte	124
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	116
	.byte	120
	.byte	120
	.byte	4
	.byte	0
	.byte	120
	.byte	116
	.byte	120
	.byte	116
	.byte	120
	.byte	116
	.byte	116
	.byte	112
	.byte	120
	.byte	116
	.byte	120
	.byte	120
	.byte	120
	.byte	112
	.byte	120
	.byte	116
	.byte	120
	.byte	112
	.byte	112
	.byte	112
	.section	.data.sandisk_24,"aw",%progbits
	.set	.LANCHOR72,. + 0
	.type	sandisk_24, %object
	.size	sandisk_24, 27
sandisk_24:
	.byte	0
	.byte	-16
	.byte	0
	.byte	0
	.byte	-32
	.byte	0
	.byte	-1
	.byte	-16
	.byte	-16
	.byte	-18
	.byte	-32
	.byte	-32
	.byte	-34
	.byte	-48
	.byte	-48
	.byte	-51
	.byte	-64
	.byte	-64
	.byte	1
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	3
	.byte	0
	.byte	0
	.section	.data.sandisk_A19_1y,"aw",%progbits
	.set	.LANCHOR56,. + 0
	.type	sandisk_A19_1y, %object
	.size	sandisk_A19_1y, 124
sandisk_A19_1y:
	.byte	124
	.byte	0
	.byte	0
	.byte	124
	.byte	4
	.byte	0
	.byte	124
	.byte	120
	.byte	120
	.byte	0
	.byte	120
	.byte	116
	.byte	8
	.byte	124
	.byte	0
	.byte	124
	.byte	0
	.byte	124
	.byte	124
	.byte	120
	.byte	124
	.byte	124
	.byte	120
	.byte	116
	.byte	0
	.byte	124
	.byte	116
	.byte	112
	.byte	0
	.byte	120
	.byte	0
	.byte	124
	.byte	0
	.byte	120
	.byte	124
	.byte	120
	.byte	0
	.byte	120
	.byte	120
	.byte	116
	.byte	0
	.byte	120
	.byte	116
	.byte	112
	.byte	0
	.byte	120
	.byte	112
	.byte	108
	.byte	0
	.byte	4
	.byte	4
	.byte	0
	.byte	0
	.byte	4
	.byte	0
	.byte	124
	.byte	12
	.byte	4
	.byte	124
	.byte	120
	.byte	12
	.byte	4
	.byte	120
	.byte	116
	.byte	16
	.byte	8
	.byte	0
	.byte	124
	.byte	16
	.byte	8
	.byte	4
	.byte	0
	.byte	120
	.byte	116
	.byte	120
	.byte	116
	.byte	120
	.byte	116
	.byte	116
	.byte	112
	.byte	120
	.byte	116
	.byte	112
	.byte	108
	.byte	120
	.byte	116
	.byte	108
	.byte	104
	.byte	120
	.byte	112
	.byte	120
	.byte	116
	.byte	120
	.byte	112
	.byte	116
	.byte	112
	.byte	120
	.byte	112
	.byte	108
	.byte	104
	.byte	120
	.byte	112
	.byte	112
	.byte	108
	.byte	120
	.byte	108
	.byte	112
	.byte	108
	.byte	120
	.byte	108
	.byte	108
	.byte	104
	.byte	120
	.byte	108
	.byte	104
	.byte	100
	.byte	116
	.byte	104
	.byte	108
	.byte	104
	.byte	116
	.byte	104
	.byte	104
	.byte	100
	.section	.data.sandisk_A19_1z_16g,"aw",%progbits
	.set	.LANCHOR54,. + 0
	.type	sandisk_A19_1z_16g, %object
	.size	sandisk_A19_1z_16g, 128
sandisk_A19_1z_16g:
	.byte	124
	.byte	0
	.byte	4
	.byte	0
	.byte	4
	.byte	0
	.byte	0
	.byte	124
	.byte	120
	.byte	0
	.byte	8
	.byte	4
	.byte	8
	.byte	0
	.byte	124
	.byte	120
	.byte	124
	.byte	124
	.byte	4
	.byte	0
	.byte	0
	.byte	124
	.byte	0
	.byte	124
	.byte	120
	.byte	124
	.byte	8
	.byte	4
	.byte	4
	.byte	124
	.byte	116
	.byte	120
	.byte	4
	.byte	4
	.byte	4
	.byte	0
	.byte	8
	.byte	4
	.byte	0
	.byte	124
	.byte	0
	.byte	4
	.byte	8
	.byte	4
	.byte	12
	.byte	4
	.byte	124
	.byte	120
	.byte	124
	.byte	4
	.byte	12
	.byte	8
	.byte	120
	.byte	120
	.byte	4
	.byte	0
	.byte	124
	.byte	120
	.byte	0
	.byte	124
	.byte	116
	.byte	120
	.byte	112
	.byte	120
	.byte	8
	.byte	8
	.byte	4
	.byte	0
	.byte	4
	.byte	8
	.byte	8
	.byte	4
	.byte	12
	.byte	8
	.byte	12
	.byte	8
	.byte	0
	.byte	0
	.byte	12
	.byte	8
	.byte	4
	.byte	0
	.byte	120
	.byte	116
	.byte	124
	.byte	124
	.byte	120
	.byte	116
	.byte	120
	.byte	120
	.byte	120
	.byte	116
	.byte	8
	.byte	8
	.byte	0
	.byte	124
	.byte	116
	.byte	116
	.byte	0
	.byte	124
	.byte	120
	.byte	116
	.byte	124
	.byte	120
	.byte	112
	.byte	116
	.byte	116
	.byte	116
	.byte	124
	.byte	116
	.byte	112
	.byte	112
	.byte	12
	.byte	12
	.byte	8
	.byte	4
	.byte	16
	.byte	12
	.byte	12
	.byte	8
	.byte	112
	.byte	112
	.byte	112
	.byte	116
	.byte	116
	.byte	112
	.byte	112
	.byte	112
	.section	.data.sandisk_A19_1z_8g,"aw",%progbits
	.set	.LANCHOR55,. + 0
	.type	sandisk_A19_1z_8g, %object
	.size	sandisk_A19_1z_8g, 124
sandisk_A19_1z_8g:
	.byte	4
	.byte	4
	.byte	120
	.byte	120
	.byte	4
	.byte	4
	.byte	124
	.byte	116
	.byte	0
	.byte	0
	.byte	4
	.byte	120
	.byte	4
	.byte	4
	.byte	124
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	116
	.byte	8
	.byte	8
	.byte	4
	.byte	120
	.byte	124
	.byte	124
	.byte	4
	.byte	120
	.byte	124
	.byte	124
	.byte	0
	.byte	124
	.byte	4
	.byte	4
	.byte	124
	.byte	112
	.byte	124
	.byte	124
	.byte	116
	.byte	116
	.byte	0
	.byte	0
	.byte	120
	.byte	112
	.byte	12
	.byte	12
	.byte	8
	.byte	120
	.byte	120
	.byte	120
	.byte	124
	.byte	124
	.byte	4
	.byte	4
	.byte	8
	.byte	4
	.byte	120
	.byte	120
	.byte	8
	.byte	120
	.byte	124
	.byte	124
	.byte	120
	.byte	112
	.byte	120
	.byte	120
	.byte	112
	.byte	108
	.byte	0
	.byte	0
	.byte	116
	.byte	108
	.byte	8
	.byte	8
	.byte	0
	.byte	116
	.byte	124
	.byte	124
	.byte	120
	.byte	108
	.byte	0
	.byte	0
	.byte	4
	.byte	4
	.byte	116
	.byte	116
	.byte	116
	.byte	108
	.byte	120
	.byte	120
	.byte	124
	.byte	112
	.byte	12
	.byte	12
	.byte	0
	.byte	116
	.byte	4
	.byte	4
	.byte	12
	.byte	8
	.byte	120
	.byte	120
	.byte	124
	.byte	116
	.byte	120
	.byte	120
	.byte	112
	.byte	104
	.byte	8
	.byte	8
	.byte	0
	.byte	112
	.byte	16
	.byte	16
	.byte	12
	.byte	120
	.byte	0
	.byte	0
	.byte	12
	.byte	8
	.section	.data.sandisk_A19_read_retry_cmd_1y,"aw",%progbits
	.set	.LANCHOR53,. + 0
	.type	sandisk_A19_read_retry_cmd_1y, %object
	.size	sandisk_A19_read_retry_cmd_1y, 1
sandisk_A19_read_retry_cmd_1y:
	.byte	-17
	.section	.data.sandisk_A19_read_retry_enable_cmd_1y,"aw",%progbits
	.type	sandisk_A19_read_retry_enable_cmd_1y, %object
	.size	sandisk_A19_read_retry_enable_cmd_1y, 1
sandisk_A19_read_retry_enable_cmd_1y:
	.byte	93
	.section	.data.sandisk_A19_read_retry_exit_cmd_1y,"aw",%progbits
	.type	sandisk_A19_read_retry_exit_cmd_1y, %object
	.size	sandisk_A19_read_retry_exit_cmd_1y, 1
sandisk_A19_read_retry_exit_cmd_1y:
	.byte	-1
	.section	.data.sandisk_A19_read_retry_reg_adr_1y,"aw",%progbits
	.set	.LANCHOR57,. + 0
	.type	sandisk_A19_read_retry_reg_adr_1y, %object
	.size	sandisk_A19_read_retry_reg_adr_1y, 1
sandisk_A19_read_retry_reg_adr_1y:
	.byte	17
	.section	.data.sandisk_acti_start_addr,"aw",%progbits
	.set	.LANCHOR75,. + 0
	.type	sandisk_acti_start_addr, %object
	.size	sandisk_acti_start_addr, 9
sandisk_acti_start_addr:
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.section	.data.sandisk_acti_start_cmd,"aw",%progbits
	.set	.LANCHOR62,. + 0
	.type	sandisk_acti_start_cmd, %object
	.size	sandisk_acti_start_cmd, 2
sandisk_acti_start_cmd:
	.byte	59
	.byte	-71
	.section	.data.sandisk_read_retry_cmd_19,"aw",%progbits
	.set	.LANCHOR63,. + 0
	.type	sandisk_read_retry_cmd_19, %object
	.size	sandisk_read_retry_cmd_19, 3
sandisk_read_retry_cmd_19:
	.byte	83
	.byte	83
	.byte	83
	.section	.data.sandisk_read_retry_cmd_1y,"aw",%progbits
	.set	.LANCHOR64,. + 0
	.type	sandisk_read_retry_cmd_1y, %object
	.size	sandisk_read_retry_cmd_1y, 1
sandisk_read_retry_cmd_1y:
	.byte	-17
	.section	.data.sandisk_read_retry_cmd_24,"aw",%progbits
	.type	sandisk_read_retry_cmd_24, %object
	.size	sandisk_read_retry_cmd_24, 3
sandisk_read_retry_cmd_24:
	.byte	83
	.byte	83
	.byte	83
	.section	.data.sandisk_read_retry_disable_cmd_19,"aw",%progbits
	.set	.LANCHOR66,. + 0
	.type	sandisk_read_retry_disable_cmd_19, %object
	.size	sandisk_read_retry_disable_cmd_19, 1
sandisk_read_retry_disable_cmd_19:
	.byte	-42
	.section	.data.sandisk_read_retry_enable_cmd_19,"aw",%progbits
	.type	sandisk_read_retry_enable_cmd_19, %object
	.size	sandisk_read_retry_enable_cmd_19, 1
sandisk_read_retry_enable_cmd_19:
	.byte	-74
	.section	.data.sandisk_read_retry_enable_cmd_1y,"aw",%progbits
	.type	sandisk_read_retry_enable_cmd_1y, %object
	.size	sandisk_read_retry_enable_cmd_1y, 1
sandisk_read_retry_enable_cmd_1y:
	.byte	93
	.section	.data.sandisk_read_retry_exit_cmd_1y,"aw",%progbits
	.type	sandisk_read_retry_exit_cmd_1y, %object
	.size	sandisk_read_retry_exit_cmd_1y, 1
sandisk_read_retry_exit_cmd_1y:
	.byte	-1
	.section	.data.sandisk_read_retry_reg_adr_19,"aw",%progbits
	.set	.LANCHOR70,. + 0
	.type	sandisk_read_retry_reg_adr_19, %object
	.size	sandisk_read_retry_reg_adr_19, 9
sandisk_read_retry_reg_adr_19:
	.byte	4
	.byte	5
	.byte	7
	.space	6
	.section	.data.sandisk_read_retry_reg_adr_1y,"aw",%progbits
	.set	.LANCHOR73,. + 0
	.type	sandisk_read_retry_reg_adr_1y, %object
	.size	sandisk_read_retry_reg_adr_1y, 1
sandisk_read_retry_reg_adr_1y:
	.byte	17
	.section	.data.sandisk_read_retry_reg_adr_24,"aw",%progbits
	.set	.LANCHOR71,. + 0
	.type	sandisk_read_retry_reg_adr_24, %object
	.size	sandisk_read_retry_reg_adr_24, 9
sandisk_read_retry_reg_adr_24:
	.byte	4
	.byte	5
	.byte	7
	.space	6
	.section	.data.toshiba_p1_1,"aw",%progbits
	.set	.LANCHOR45,. + 0
	.type	toshiba_p1_1, %object
	.size	toshiba_p1_1, 28
toshiba_p1_1:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	124
	.byte	124
	.byte	124
	.byte	124
	.byte	120
	.byte	120
	.byte	120
	.byte	120
	.byte	116
	.byte	116
	.byte	116
	.byte	116
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.section	.data.toshiba_p1_2,"aw",%progbits
	.set	.LANCHOR43,. + 0
	.type	toshiba_p1_2, %object
	.size	toshiba_p1_2, 40
toshiba_p1_2:
	.byte	4
	.byte	4
	.byte	124
	.byte	126
	.byte	0
	.byte	0
	.byte	124
	.byte	120
	.byte	120
	.byte	0
	.byte	124
	.byte	118
	.byte	116
	.byte	114
	.byte	0
	.byte	8
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	11
	.byte	126
	.byte	118
	.byte	116
	.byte	0
	.byte	16
	.byte	118
	.byte	114
	.byte	112
	.byte	0
	.byte	2
	.byte	0
	.byte	126
	.byte	124
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.data.toshiba_p1_3,"aw",%progbits
	.set	.LANCHOR44,. + 0
	.type	toshiba_p1_3, %object
	.size	toshiba_p1_3, 55
toshiba_p1_3:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	4
	.byte	2
	.byte	0
	.byte	0
	.byte	124
	.byte	0
	.byte	124
	.byte	124
	.byte	0
	.byte	122
	.byte	0
	.byte	122
	.byte	122
	.byte	0
	.byte	120
	.byte	2
	.byte	120
	.byte	122
	.byte	0
	.byte	126
	.byte	4
	.byte	126
	.byte	122
	.byte	0
	.byte	118
	.byte	4
	.byte	118
	.byte	120
	.byte	0
	.byte	4
	.byte	4
	.byte	4
	.byte	118
	.byte	0
	.byte	6
	.byte	10
	.byte	6
	.byte	2
	.byte	0
	.byte	116
	.byte	124
	.byte	116
	.byte	118
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.data.toshiba_read_retry_addr_1,"aw",%progbits
	.set	.LANCHOR41,. + 0
	.type	toshiba_read_retry_addr_1, %object
	.size	toshiba_read_retry_addr_1, 4
toshiba_read_retry_addr_1:
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.section	.data.toshiba_read_retry_addr_2,"aw",%progbits
	.set	.LANCHOR40,. + 0
	.type	toshiba_read_retry_addr_2, %object
	.size	toshiba_read_retry_addr_2, 5
toshiba_read_retry_addr_2:
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	13
	.section	.data.toshiba_read_retry_cmd_1,"aw",%progbits
	.set	.LANCHOR37,. + 0
	.type	toshiba_read_retry_cmd_1, %object
	.size	toshiba_read_retry_cmd_1, 4
toshiba_read_retry_cmd_1:
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.section	.data.toshiba_read_retry_cmd_2,"aw",%progbits
	.set	.LANCHOR33,. + 0
	.type	toshiba_read_retry_cmd_2, %object
	.size	toshiba_read_retry_cmd_2, 5
toshiba_read_retry_cmd_2:
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.byte	85
	.section	.data.toshiba_read_retry_end_cmd,"aw",%progbits
	.set	.LANCHOR38,. + 0
	.type	toshiba_read_retry_end_cmd, %object
	.size	toshiba_read_retry_end_cmd, 2
toshiba_read_retry_end_cmd:
	.byte	38
	.byte	93
	.section	.data.toshiba_read_retry_exit_cmd,"aw",%progbits
	.set	.LANCHOR35,. + 0
	.type	toshiba_read_retry_exit_cmd, %object
	.size	toshiba_read_retry_exit_cmd, 1
toshiba_read_retry_exit_cmd:
	.byte	-1
	.section	.data.toshiba_read_retry_last_cmd,"aw",%progbits
	.set	.LANCHOR36,. + 0
	.type	toshiba_read_retry_last_cmd, %object
	.size	toshiba_read_retry_last_cmd, 1
toshiba_read_retry_last_cmd:
	.byte	-77
	.section	.data.toshiba_read_retry_start_cmd,"aw",%progbits
	.set	.LANCHOR39,. + 0
	.type	toshiba_read_retry_start_cmd, %object
	.size	toshiba_read_retry_start_cmd, 2
toshiba_read_retry_start_cmd:
	.byte	92
	.byte	-59
	.section	.rodata.__FUNCTION__.7342,"a",%progbits
	.set	.LANCHOR4,. + 0
	.type	__FUNCTION__.7342, %object
	.size	__FUNCTION__.7342, 25
__FUNCTION__.7342:
	.ascii	"nand_power_off_ecc_error\000"
	.section	.rodata.__func__.6094,"a",%progbits
	.set	.LANCHOR9,. + 0
	.type	__func__.6094, %object
	.size	__func__.6094, 16
__func__.6094:
	.ascii	"nftl_cache_init\000"
	.section	.rodata.__func__.6363,"a",%progbits
	.set	.LANCHOR1,. + 0
	.type	__func__.6363, %object
	.size	__func__.6363, 23
__func__.6363:
	.ascii	"nftl_sector_cache_init\000"
	.section	.rodata.__func__.6636,"a",%progbits
	.set	.LANCHOR8,. + 0
	.type	__func__.6636, %object
	.size	__func__.6636, 15
__func__.6636:
	.ascii	"shutdown_on_gc\000"
	.section	.rodata.__func__.6683,"a",%progbits
	.set	.LANCHOR106,. + 0
	.type	__func__.6683, %object
	.size	__func__.6683, 11
__func__.6683:
	.ascii	"nftl_start\000"
	.section	.rodata.__func__.6780,"a",%progbits
	.set	.LANCHOR10,. + 0
	.type	__func__.6780, %object
	.size	__func__.6780, 16
__func__.6780:
	.ascii	"zone_param_init\000"
	.section	.rodata.__func__.6928,"a",%progbits
	.set	.LANCHOR6,. + 0
	.type	__func__.6928, %object
	.size	__func__.6928, 23
__func__.6928:
	.ascii	"get_current_used_block\000"
	.section	.rodata.__func__.6994,"a",%progbits
	.set	.LANCHOR11,. + 0
	.type	__func__.6994, %object
	.size	__func__.6994, 9
__func__.6994:
	.ascii	"init_nrc\000"
	.section	.rodata.__func__.7079,"a",%progbits
	.set	.LANCHOR3,. + 0
	.type	__func__.7079, %object
	.size	__func__.7079, 23
__func__.7079:
	.ascii	"torture_block_and_mark\000"
	.section	.rodata.__func__.7202,"a",%progbits
	.set	.LANCHOR12,. + 0
	.type	__func__.7202, %object
	.size	__func__.7202, 26
__func__.7202:
	.ascii	"block_last_page_ecc_error\000"
	.section	.rodata.__func__.7234,"a",%progbits
	.set	.LANCHOR13,. + 0
	.type	__func__.7234, %object
	.size	__func__.7234, 18
__func__.7234:
	.ascii	"nand_dbg_phy_read\000"
	.section	.rodata.__func__.7245,"a",%progbits
	.set	.LANCHOR14,. + 0
	.type	__func__.7245, %object
	.size	__func__.7245, 23
__func__.7245:
	.ascii	"nand_dbg_zone_phy_read\000"
	.section	.rodata.__func__.7256,"a",%progbits
	.set	.LANCHOR15,. + 0
	.type	__func__.7256, %object
	.size	__func__.7256, 24
__func__.7256:
	.ascii	"nand_dbg_zone_phy_write\000"
	.section	.rodata.__func__.7265,"a",%progbits
	.set	.LANCHOR16,. + 0
	.type	__func__.7265, %object
	.size	__func__.7265, 19
__func__.7265:
	.ascii	"nand_dbg_phy_write\000"
	.section	.rodata.__func__.7318,"a",%progbits
	.set	.LANCHOR17,. + 0
	.type	__func__.7318, %object
	.size	__func__.7318, 19
__func__.7318:
	.ascii	"write_data_to_nand\000"
	.section	.rodata.__func__.7385,"a",%progbits
	.set	.LANCHOR18,. + 0
	.type	__func__.7385, %object
	.size	__func__.7385, 35
__func__.7385:
	.ascii	"_nftl_nand_read_logic_history_page\000"
	.section	.rodata.__func__.7672,"a",%progbits
	.set	.LANCHOR5,. + 0
	.type	__func__.7672, %object
	.size	__func__.7672, 19
__func__.7672:
	.ascii	"get_logic_page_map\000"
	.section	.rodata.__func__.7780,"a",%progbits
	.set	.LANCHOR108,. + 0
	.type	__func__.7780, %object
	.size	__func__.7780, 16
__func__.7780:
	.ascii	"nftl_initialize\000"
	.section	.rodata.__func__.7884,"a",%progbits
	.set	.LANCHOR110,. + 0
	.type	__func__.7884, %object
	.size	__func__.7884, 9
__func__.7884:
	.ascii	"nftl_add\000"
	.section	.rodata.__func__.8753,"a",%progbits
	.set	.LANCHOR58,. + 0
	.type	__func__.8753, %object
	.size	__func__.8753, 25
__func__.8753:
	.ascii	"sandisk_A19_special_exit\000"
	.section	.rodata.__func__.9321,"a",%progbits
	.set	.LANCHOR109,. + 0
	.type	__func__.9321, %object
	.size	__func__.9321, 19
__func__.9321:
	.ascii	"panic_recover_data\000"
	.section	.rodata.__nand_discard.str1.1,"aMS",%progbits,1
.LC63:
	.ascii	"[ND]dicard sector:0x%x,len:0x%x\012\000"
	.section	.rodata.__nand_flush_write_cache.str1.1,"aMS",%progbits,1
.LC60:
	.ascii	"[NE]nand_flush_write_cache write error\012\000"
.LC61:
	.ascii	"[ND]flush cache %d %d!\012\000"
	.section	.rodata.__nand_read.str1.1,"aMS",%progbits,1
.LC48:
	.ascii	"[ND]read sector:0x%x,len:0x%x\012\000"
	.section	.rodata.__nand_write.str1.1,"aMS",%progbits,1
.LC49:
	.ascii	"[ND]write sector:0x%x,len:0x%x\012\000"
	.section	.rodata._nftl_nand_read_logic_history_page.str1.1,"aMS",%progbits,1
.LC318:
	.ascii	"[NE]%s malloc buffer fail\012\000"
.LC319:
	.ascii	"scan super block@%d\012\000"
.LC320:
	.ascii	"block@%d is bad\012\000"
.LC321:
	.ascii	"[NE]read sb@%u sp@%u err, maybe read a bad block\012"
	.ascii	"\000"
.LC322:
	.ascii	"[NE]read lb@%u lp@%u err\012\000"
.LC323:
	.ascii	"page@%u history%d data:\012\000"
.LC324:
	.ascii	"oob:\012\000"
.LC325:
	.ascii	"scan end total super blocks:%d\012\000"
	.section	.rodata._nftl_nand_read_logic_page.str1.1,"aMS",%progbits,1
.LC258:
	.ascii	"[NE]read a page: %d READ_RECLAIM!\012\000"
	.section	.rodata._nftl_nand_write_logic_page.str1.1,"aMS",%progbits,1
.LC257:
	.ascii	"[NE]error nand_write_logic_page_no_gc page_no:%u\012"
	.ascii	"\000"
	.section	.rodata.adjust_free_list.str1.1,"aMS",%progbits,1
.LC141:
	.ascii	"[NE]adjust free list fail!!\012\000"
.LC142:
	.ascii	"[NI]adjust free list : %d %d!!\012\000"
	.section	.rodata.block_last_page_ecc_error.str1.1,"aMS",%progbits,1
.LC307:
	.ascii	"[NE]do block_last_page_ecc_error!!\012\000"
.LC308:
	.ascii	"[NE]%s:malloc fail 1!\012\000"
.LC309:
	.ascii	"[NE]%s:malloc fail 2!\012\000"
.LC310:
	.ascii	"[NE]current_block_ecc_error unkown page data!!\012\000"
.LC311:
	.ascii	"[NE]current_block_ecc_error invalid page data!!\012"
	.ascii	"\000"
.LC312:
	.ascii	"[NE]do block_last_page_ecc_error end!!\012\000"
	.section	.rodata.build_zone_list.str1.1,"aMS",%progbits,1
.LC458:
	.ascii	"[ND]first\012\000"
.LC459:
	.ascii	"[NE]init_zone_after_first_scan error\012\000"
.LC460:
	.ascii	"[NE]second_scan_all_blocks error\012\000"
.LC461:
	.ascii	"[NI]nftl ok!\012\000"
	.section	.rodata.build_zone_list_first.str1.1,"aMS",%progbits,1
.LC149:
	.ascii	"[ND]build_zone_list_first.\012\000"
.LC150:
	.ascii	"[NE]no block %d\012\000"
	.section	.rodata.check_invalid_page_right.str1.1,"aMS",%progbits,1
.LC202:
	.ascii	"[ND]logic_page_map_temp NULL!!\012\000"
.LC203:
	.ascii	"[NE]invaild_page num error:[%d] [%d]  used_page:[%d"
	.ascii	"]!!\012\000"
	.section	.rodata.check_static_wear_leveling.str1.1,"aMS",%progbits,1
.LC68:
	.ascii	"[ND]swl: static WL need to do(%d : %d)\012\000"
.LC69:
	.ascii	"[ND]swl: min_ec_blk_no = %d,\012\000"
.LC70:
	.ascii	"[ND]swl: zone->blocks = %d)\012\000"
	.section	.rodata.com,"a",%progbits
	.set	.LANCHOR107,. + 0
	.type	com, %object
	.size	com, 11
com:
	.byte	99
	.byte	111
	.byte	109
	.byte	112
	.byte	97
	.byte	116
	.byte	105
	.byte	98
	.byte	108
	.byte	101
	.byte	0
	.section	.rodata.crc_wrong.str1.1,"aMS",%progbits,1
.LC152:
	.ascii	"[NE]exception case wb %04x %04x, len: %d\012\000"
	.section	.rodata.cross_talk_rebuild_current_block.str1.1,"aMS",%progbits,1
.LC275:
	.ascii	"[NE]cross_talk_rebuild_current_block fail 1\012\000"
.LC276:
	.ascii	"[NE]cross_talk_rebuild_current_block!! %d,%d,%d!\012"
	.ascii	"\000"
.LC277:
	.ascii	"[NE]cross_talk_rebuild_current_block fail 2\012\000"
.LC278:
	.ascii	"[NE]cross_talk_rebuild_current_block!! %d,%d,%d,%d,"
	.ascii	"%d,%d!\012\000"
.LC279:
	.ascii	"[NE]cross_talk_rebuild_current_block fail 3\012\000"
.LC280:
	.ascii	"[NE]corss talk rebuild 1 %d %d %d!\012\000"
.LC281:
	.ascii	"[NE]corss talk rebuild 2 %d %d %d!\012\000"
.LC282:
	.ascii	"[NE]get free block fail!\012\000"
.LC283:
	.ascii	"[NE]something is error here 14!\012\000"
.LC284:
	.ascii	"[NE]page lost %d %d\012\000"
	.section	.rodata.current_block_ecc_error.str1.1,"aMS",%progbits,1
.LC170:
	.ascii	"[NE]current_block_ecc_error no free block!!!\012\000"
.LC171:
	.ascii	"[NE]something is error here 16!\012\000"
.LC172:
	.ascii	"[NE]do current_block_ecc_error %d!!\012\000"
.LC173:
	.ascii	"[NE]power off ecc error 2.\012\000"
.LC174:
	.ascii	"[NE]current_block_ecc ok page %d %d!!\012\000"
.LC175:
	.ascii	"[NE]current_block_ecc_error page %d!!\012\000"
.LC176:
	.ascii	"[NE]current_block_ecc_error invalid page data %d!!\012"
	.ascii	"\000"
.LC177:
	.ascii	"[NE]current_block_ecc_error unkown page data %d!!\012"
	.ascii	"\000"
.LC178:
	.ascii	"[ND]do current_block_ecc_error end %d %d!!\012\000"
	.section	.rodata.do_after_write.str1.1,"aMS",%progbits,1
.LC212:
	.ascii	"[NE]write_phy_page_map_to_current_block error!\012\000"
.LC213:
	.ascii	"[NE]get_new_current_block error1!\012\000"
.LC214:
	.ascii	"[NE]get_new_current_block error2!\012\000"
	.section	.rodata.do_before_write.str1.1,"aMS",%progbits,1
.LC137:
	.ascii	"[NE]get_new_current_block error3!\012\000"
.LC138:
	.ascii	"[NE]get_new_current_block error4!\012\000"
	.section	.rodata.do_prio_gc.str1.1,"aMS",%progbits,1
.LC236:
	.ascii	"[ND]no block to prio gc\012\000"
.LC237:
	.ascii	"[ND]no need gc:%d, type:%d\012\000"
.LC238:
	.ascii	"[NE]do_prio_gc garbage_collect_first fail:%d, type:"
	.ascii	"%d\012\000"
.LC239:
	.ascii	"[ND]prio gc fail1:%d, type:%d\012\000"
.LC240:
	.ascii	"[ND]prio gc fail2:%d, type:%d\012\000"
	.section	.rodata.do_write_error.str1.1,"aMS",%progbits,1
.LC204:
	.ascii	"[NE]no free block\012\000"
.LC205:
	.ascii	"[NE]do_write_error erase error sb:%d!\012\000"
.LC206:
	.ascii	"[NE]do_write_error sb@%d nftl_nand_copy_page error!"
	.ascii	"\012\000"
	.section	.rodata.do_write_error_in_build_list.str1.1,"aMS",%progbits,1
.LC77:
	.ascii	"[NE]NAND EVENT:do_write_error erase error1!\012\000"
.LC78:
	.ascii	"[NE]NAND EVENT:do_write_error erase error2!\012\000"
	.section	.rodata.done_static_wear_leveling.str1.1,"aMS",%progbits,1
.LC241:
	.ascii	"[ND]swl: the block(%d) for static WL is not in inva"
	.ascii	"lid_list\012\000"
.LC242:
	.ascii	"[ND]swl: done_static_wear_leveling(min_ec) block:%d"
	.ascii	", erase_count:%d\012\000"
.LC243:
	.ascii	"[NE]swl: garbage_collect_first fail:%d\012\000"
.LC244:
	.ascii	"[NE]swl: last->check fail:%d\012\000"
	.section	.rodata.dump_buf.str1.1,"aMS",%progbits,1
.LC73:
	.ascii	"%02x \000"
	.section	.rodata.dumphex.str1.1,"aMS",%progbits,1
.LC5:
	.ascii	"%08x: \000"
.LC6:
	.ascii	"%02x %02x %02x %02x %02x %02x %02x %02x %02x %02x %"
	.ascii	"02x %02x %02x %02x %02x %02x\012\000"
.LC7:
	.ascii	"\012\000"
	.section	.rodata.erase_block.str1.1,"aMS",%progbits,1
.LC139:
	.ascii	"[NI]erase_block block %d!\012\000"
.LC140:
	.ascii	"[NE]erase_block block fail %d!\012\000"
	.section	.rodata.first_scan_all_blocks.str1.1,"aMS",%progbits,1
.LC443:
	.ascii	"[ND]fsab\012\000"
.LC444:
	.ascii	"[NI]ftl end block! %d!\012\000"
.LC445:
	.ascii	"[ND]READ_RECLAIM!\012\000"
.LC446:
	.ascii	"[NI]start page , do nothing\012\000"
.LC447:
	.ascii	"[ND]fill block %d\012\000"
.LC448:
	.ascii	"[NI]b@%d p@0 unknow spare data:%x,%x,%x,%x,%x,%x,%x"
	.ascii	",%x,%x,%x,%x,%x,%x,%x,%x,%x.\012\000"
.LC449:
	.ascii	"[NE]nftl bad block: %d\012\000"
.LC450:
	.ascii	"[NE]nftl b@%d p@0 ecc error\012\000"
.LC451:
	.ascii	"[NE]b@%d last page ok !\012\000"
.LC452:
	.ascii	"[NI]READ_RECLAIM!\012\000"
.LC453:
	.ascii	"[NE]last page blank ! %d!\012\000"
.LC454:
	.ascii	"[NE]last page unkown ! %d!\012\000"
.LC455:
	.ascii	"[NE]b@%d first page last page ecc error\012\000"
.LC456:
	.ascii	"[NE]b@%d last page spare data %x,%x,%x,%x,%x,%x,%x,"
	.ascii	"%x,%x,%x,%x,%x,%x,%x,%x,%x\012\000"
.LC457:
	.ascii	"[NI]nftl bad block: %d\012\000"
	.section	.rodata.flush_write_cache_to_nand.str1.1,"aMS",%progbits,1
.LC50:
	.ascii	"[NE]flush write cache to nand no cache!\012\000"
.LC51:
	.ascii	"[NE]ECC_LIMIT happened 10! page:%d cache: %d!\012\000"
.LC52:
	.ascii	"[NE]flush write cache to nand error!\012\000"
.LC53:
	.ascii	"[NE]fwctn %d\012\000"
.LC54:
	.ascii	"[NE]fwctn w+\012\000"
	.section	.rodata.garbage_collect.str1.1,"aMS",%progbits,1
.LC254:
	.ascii	"[NE]garbage_collect phy_block null\012\000"
.LC255:
	.ascii	"[ND]garbage too frequency! %d:%d\012\000"
.LC256:
	.ascii	"[NE]garbage_collect_first wrong fbn:%d\012\000"
	.section	.rodata.garbage_collect_first.str1.1,"aMS",%progbits,1
.LC225:
	.ascii	"[NI]garbage_collect_first none!!\012\000"
.LC226:
	.ascii	"[ND]garbage_collect_first wrong!!\012\000"
.LC227:
	.ascii	"[ND]garbage_collect_first cannot find PHY_MAPPING_P"
	.ascii	"AGE%d %d %d %d!!\012\000"
.LC228:
	.ascii	"[ND]garbage_collect_first cannot find PHY_MAPPING_P"
	.ascii	"AGE%x %x %x %x %x %x %x %x %x %x %x %x %x %x %x %x."
	.ascii	"\012\000"
.LC229:
	.ascii	"[ND][NE]garbage_collect_first rebuild %d,%d!!\012\000"
.LC230:
	.ascii	"[ND]garbage_collect_first PHY_MAPPING_PAGEecc err b"
	.ascii	"lock:%d !!\012\000"
.LC231:
	.ascii	"[NE]garbage_collect_first invaild_page num error!!\012"
	.ascii	"\000"
.LC232:
	.ascii	"[ND]garbage_collect_first read a logic page error%d"
	.ascii	" %d %d %d spare data:\012\000"
.LC233:
	.ascii	"%x %x %x %x %x %x %x %x %x %x %x %x %x %x %x %x\012"
	.ascii	"\000"
.LC234:
	.ascii	"[NE]nand_write_logic_page_no_gc gc fail!!\012\000"
.LC235:
	.ascii	"[NE]erase ecc error block\012\000"
	.section	.rodata.gc_one.str1.1,"aMS",%progbits,1
.LC245:
	.ascii	"[ND]gc_one ok!\012\000"
.LC246:
	.ascii	"[NE]gc_one error!\012\000"
	.section	.rodata.gc_win_block.str1.1,"aMS",%progbits,1
.LC247:
	.ascii	"[ND][NE] gc_win_block gc_one error \012\000"
	.section	.rodata.generic_special_exit.str1.1,"aMS",%progbits,1
.LC374:
	.ascii	" generic special exit \012\000"
	.section	.rodata.generic_special_init.str1.1,"aMS",%progbits,1
.LC373:
	.ascii	" generic special init \012\000"
	.section	.rodata.get_current_used_block.str1.1,"aMS",%progbits,1
.LC192:
	.ascii	"%s %d:\012\000"
.LC193:
	.ascii	"[ND]recover %d %d\012\000"
.LC194:
	.ascii	"[NE]page used:%d invalid page count:%d error\012\000"
.LC195:
	.ascii	"[NE]new_block_init_for_write error here!\012\000"
.LC196:
	.ascii	"[NE]something is error here 10!\012\000"
.LC197:
	.ascii	"[NE]something is error here 11!\012\000"
.LC198:
	.ascii	"[NE]assist block page used:%d current block page us"
	.ascii	"ed:%d something is error here 12.\012\000"
.LC199:
	.ascii	"[NE]assist block page used:%d current block page us"
	.ascii	"ed:%d something is error here 17.\012\000"
.LC200:
	.ascii	"[ND]get a new free block\012\000"
.LC201:
	.ascii	"[NE]no free block to use!\012\000"
	.section	.rodata.get_logic_page_map.str1.1,"aMS",%progbits,1
.LC185:
	.ascii	"[NE]%s:logic_page:0x%x >= total_pages:0x%x\012\000"
	.section	.rodata.get_new_current_block.str1.1,"aMS",%progbits,1
.LC134:
	.ascii	"[ND]swl: new_cur_blk->alloc ok(max_ec): block_no = "
	.ascii	"%d; ec = %d; \012\000"
.LC135:
	.ascii	"[NE]no free block!!!!\012\000"
	.section	.rodata.get_used_page_num.str1.1,"aMS",%progbits,1
.LC164:
	.ascii	"[NE]get_used_page_num ecc error block:%d page:%d!\012"
	.ascii	"\000"
.LC165:
	.ascii	"[NE]power off ecc error 4!!\012\000"
.LC166:
	.ascii	"[NE]sb@%d sp@%d get_used_page_num used spare data %"
	.ascii	"x %x %x %x %x %x %x %x %x %x %x %x %x %x %x %x\012\000"
	.section	.rodata.get_used_page_num_no_crosstalk.str1.1,"aMS",%progbits,1
.LC167:
	.ascii	"[NE]gupnnc ecc err b:%d p:%d.\012\000"
.LC168:
	.ascii	"[NE]gupnnc power off ecc err.\012\000"
.LC169:
	.ascii	"[NE]cross talk block:%d total_good_num %d good_page"
	.ascii	"_num: %d!\012\000"
	.section	.rodata.hynix16nm_get_otp_param.str1.1,"aMS",%progbits,1
.LC360:
	.ascii	"_vender_get_param_otp_hynix time %d!\012\000"
	.section	.rodata.hynix16nm_get_read_retry_cfg.str1.1,"aMS",%progbits,1
.LC348:
	.ascii	"_get_read_retry_parameters, get rr count failed!\012"
	.ascii	"\000"
.LC349:
	.ascii	"rr cnt: %d\012\000"
.LC350:
	.ascii	"_get_read_retry_parameters, get rr reg count failed"
	.ascii	"!\012\000"
.LC351:
	.ascii	"rr reg cnt: %d\012\000"
.LC352:
	.ascii	"read retry value from otp error: rr_cnt %d rr_reg_c"
	.ascii	"nt %d!\012\000"
.LC353:
	.ascii	"_get_read_retry_parameters, get the %d-th byte of r"
	.ascii	"r table failed!\012\000"
	.section	.rodata.hynix16nm_get_rr_value_otp_hynix.str1.1,"aMS",%progbits,1
.LC357:
	.ascii	"otp_info_hynix_16nm : allocate memory fail\012\000"
.LC358:
	.ascii	"m1 CH %d chip %d get otp info failed!\012\000"
.LC359:
	.ascii	"m1 CH %d chip %d get read retry cfg from otp info f"
	.ascii	"ailed!\012\000"
	.section	.rodata.hynix16nm_get_special_info.str1.1,"aMS",%progbits,1
.LC340:
	.ascii	"get_hynix_special_info start!!\012\000"
.LC341:
	.ascii	"hynix_special_info:can't find uboot head\012\000"
.LC342:
	.ascii	"physic info start_block %d\012\000"
	.section	.rodata.hynix16nm_init_readretry_param.str1.1,"aMS",%progbits,1
.LC363:
	.ascii	"[PHY_GetDefaultParam]:readbuf malloc fail\012\000"
.LC364:
	.ascii	"ch %d, chip %d Read Retry value Table from uboot\012"
	.ascii	"\000"
.LC365:
	.ascii	"0x%x \000"
.LC366:
	.ascii	"[PHY_DBG] ch %d, can't get right otp value from nan"
	.ascii	"d otp blocks, then use otp command\012\000"
.LC367:
	.ascii	"[PHY_DBG] repair ch %d chip %d otp value end\012\000"
	.section	.rodata.hynix16nm_major_check_byte.str1.1,"aMS",%progbits,1
.LC345:
	.ascii	"_major_check_byte, wrong input para, level %d, len "
	.ascii	"%d\012\000"
.LC346:
	.ascii	"%d:  '1'-'0' : %d - %d\012\000"
.LC347:
	.ascii	"get bit %d failed!\012\000"
	.section	.rodata.hynix16nm_read_otp_info_hynix.str1.1,"aMS",%progbits,1
.LC354:
	.ascii	"start get read retry param from: ce %d, rb %d...\012"
	.ascii	"\000"
.LC355:
	.ascii	"invalid buffer for otp info!\012\000"
.LC356:
	.ascii	"hynix OTP RegCount value error: 0x%x, 0x%x \012\000"
	.section	.rodata.hynix16nm_read_page_end.str1.1,"aMS",%progbits,1
.LC338:
	.ascii	"m1 retry!\012\000"
.LC339:
	.ascii	"m1 ReadRetry ok! ch =%d, chip = %d  block = %d, pag"
	.ascii	"e = %d, RetryCount = %d  \012\000"
	.section	.rodata.hynix16nm_readretry_exit.str1.1,"aMS",%progbits,1
.LC369:
	.ascii	"hynix16nm_readretry_exit. \012\000"
	.section	.rodata.hynix16nm_readretry_init.str1.1,"aMS",%progbits,1
.LC368:
	.ascii	"NFC_ReadRetryInit, unknown read retry mode 0x%x\012"
	.ascii	"\000"
	.section	.rodata.hynix16nm_set_default_param.str1.1,"aMS",%progbits,1
.LC361:
	.ascii	"set retry default value: \000"
.LC362:
	.ascii	" %x\000"
	.section	.rodata.hynix16nm_special_exit.str1.1,"aMS",%progbits,1
.LC372:
	.ascii	" hynix16nm_special_exit \012\000"
	.section	.rodata.hynix16nm_special_init.str1.1,"aMS",%progbits,1
.LC370:
	.ascii	" hynix16nm_special_init hynix16nm_read_retry_mode: "
	.ascii	"%d hynix16nm_read_retry_cycle:%d hynix16nm_read_ret"
	.ascii	"ry_reg_num:%d\012\000"
.LC371:
	.ascii	" hynix16nm_special_init error hynix16nm_read_retry_"
	.ascii	"mode: %d hynix16nm_read_retry_cycle:%d hynix16nm_re"
	.ascii	"ad_retry_reg_num:%d\012\000"
	.section	.rodata.hynix16nm_vender_set_param.str1.1,"aMS",%progbits,1
.LC337:
	.ascii	"rr value %x %x %x %x!\012\000"
	.section	.rodata.hynix16nm_write_page_FF.str1.1,"aMS",%progbits,1
.LC343:
	.ascii	"fatal err -0, wrong input parameter, ch: %d  chip: "
	.ascii	"%d/%d  block: %d/%d \012\000"
.LC344:
	.ascii	"m1 write page FF wrong\012\000"
	.section	.rodata.hynix20nm_getotpparam.str1.1,"aMS",%progbits,1
.LC409:
	.ascii	"_vender_get_param_otp_hynix error!\012\000"
	.section	.rodata.hynix20nm_init_readretry_param.str1.1,"aMS",%progbits,1
.LC410:
	.ascii	"hynix20nm get default param error !\012\000"
.LC411:
	.ascii	"ch %d, chip %d Read Retry value Table from uboot:\012"
	.ascii	"\000"
.LC412:
	.ascii	"[PHY_DBG] repair ch %d otp value end\012\000"
	.section	.rodata.hynix20nm_lsb_exit.str1.1,"aMS",%progbits,1
.LC406:
	.ascii	"hynix20nm_lsb_exit\012\000"
	.section	.rodata.hynix20nm_read_page_end.str1.1,"aMS",%progbits,1
.LC403:
	.ascii	"hynix20nm retry!\012\000"
.LC404:
	.ascii	"sdata:0x%x %x %x %x \000"
.LC405:
	.ascii	"hynix20nm ReadRetry ok! ch =%d, chip = %d  block = "
	.ascii	"%d, page = %d, RetryCount = %d  \012\000"
	.section	.rodata.hynix20nm_readretry_exit.str1.1,"aMS",%progbits,1
.LC413:
	.ascii	"hynix20nm_readretry_exit. \012\000"
	.section	.rodata.hynix20nm_set_readretry.str1.1,"aMS",%progbits,1
.LC401:
	.ascii	"retry para:\000"
.LC402:
	.ascii	" %x \000"
	.section	.rodata.hynix20nm_special_exit.str1.1,"aMS",%progbits,1
.LC416:
	.ascii	" hynix20nm_special_exit \012\000"
	.section	.rodata.hynix20nm_special_init.str1.1,"aMS",%progbits,1
.LC414:
	.ascii	" hynix20nm_special_init hynix20nm_read_retry_mode: "
	.ascii	"%d hynix20nm_read_retry_cycle:%d hynix20nm_read_ret"
	.ascii	"ry_reg_num:%d\012\000"
.LC415:
	.ascii	" hynix20nm_special_init error hynix20nm_read_retry_"
	.ascii	"mode: %d hynix20nm_read_retry_cycle:%d hynix20nm_re"
	.ascii	"ad_retry_reg_num:%d\012\000"
	.section	.rodata.hynix20nm_vender_get_param_otp_hynix.str1.1,"aMS",%progbits,1
.LC407:
	.ascii	"otp copy failed!\012\000"
.LC408:
	.ascii	"otp copy %d is ok!\012\000"
	.section	.rodata.hynix26nm_get_default_param.str1.1,"aMS",%progbits,1
.LC421:
	.ascii	"hynix26nm_get_default_param: ch: %d, chip: %d, valu"
	.ascii	"e: 0x%x 0x%x 0x%x 0x%x \012\000"
	.section	.rodata.hynix26nm_lsb_exit.str1.1,"aMS",%progbits,1
.LC420:
	.ascii	"hynix26nm_lsb_exit\012\000"
	.section	.rodata.hynix26nm_read_page_end.str1.1,"aMS",%progbits,1
.LC418:
	.ascii	"m0 retry!\012\000"
.LC419:
	.ascii	"hynix26nm ReadRetry ok! ch =%d, chip = %d  block = "
	.ascii	"%d, page = %d, RetryCount = %d  \012\000"
	.section	.rodata.hynix26nm_readretry_exit.str1.1,"aMS",%progbits,1
.LC422:
	.ascii	"hynix26nm_readretry_exit. \012\000"
	.section	.rodata.hynix26nm_set_readretry.str1.1,"aMS",%progbits,1
.LC417:
	.ascii	"hynix26nm retry param:\000"
	.section	.rodata.hynix26nm_special_exit.str1.1,"aMS",%progbits,1
.LC425:
	.ascii	" hynix26nm_special_exit \012\000"
	.section	.rodata.hynix26nm_special_init.str1.1,"aMS",%progbits,1
.LC423:
	.ascii	" hynix26nm_special_init hynix26nm_read_retry_mode: "
	.ascii	"%d hynix26nm_read_retry_cycle:%d hynix26nm_read_ret"
	.ascii	"ry_reg_num:%d\012\000"
.LC424:
	.ascii	" hynix26nm_special_init error hynix26nm_read_retry_"
	.ascii	"mode: %d hynix26nm_read_retry_cycle:%d hynix26nm_re"
	.ascii	"ad_retry_reg_num:%d\012\000"
	.section	.rodata.init_nrc.str1.1,"aMS",%progbits,1
.LC271:
	.ascii	"%s %d:fail 1\012\000"
.LC272:
	.ascii	"%s %d:fail 2\012\000"
.LC273:
	.ascii	"%s %d:fail 3\012\000"
.LC274:
	.ascii	"%s %d:fail 4\012\000"
	.section	.rodata.init_zone_after_first_scan.str1.1,"aMS",%progbits,1
.LC74:
	.ascii	"[ND]before second %d %d.\012\000"
.LC75:
	.ascii	"[NE]only have blocks:%u,logic cap need blocks:%u th"
	.ascii	"is zone not enough data block!!\012\000"
.LC76:
	.ascii	"[NE]this zone not enough free block %d , %d!!\012\000"
	.section	.rodata.is_no_use_device.str1.1,"aMS",%progbits,1
.LC151:
	.ascii	"[NE]mtd size changed !\012\000"
	.section	.rodata.malloc_logic_page_map.str1.1,"aMS",%progbits,1
.LC262:
	.ascii	"[NE]%s:malloc fail for logic_page_map %d\012\000"
.LC263:
	.ascii	"[NE]%s: malloc fail for logic_page_map %d\012\000"
.LC264:
	.ascii	"[NE]zone_param_init malloc_logic_page_map error %d\012"
	.ascii	"\000"
	.section	.rodata.micron_intel_set_feature.str1.1,"aMS",%progbits,1
.LC329:
	.ascii	"set feature(addr %d) p0: %d readretry Configuration"
	.ascii	" failed!\012\000"
	.section	.rodata.micron_read_page_end.str1.1,"aMS",%progbits,1
.LC330:
	.ascii	"micron retry!\012\000"
.LC331:
	.ascii	"micron ReadRetry ok! ch =%d, chip = %d  block = %d,"
	.ascii	" page = %d, RetryCount = %d  \012\000"
	.section	.rodata.micron_readretry_init.str1.1,"aMS",%progbits,1
.LC332:
	.ascii	"micron read retry cannot support!\012\000"
.LC333:
	.ascii	"micron read retry conut: %d !\012\000"
	.section	.rodata.micron_special_exit.str1.1,"aMS",%progbits,1
.LC336:
	.ascii	" micron_special_exit \012\000"
	.section	.rodata.micron_special_init.str1.1,"aMS",%progbits,1
.LC334:
	.ascii	" micron_special_init micron_read_retry_mode:%d micr"
	.ascii	"on_read_retry_cycle:%d \012\000"
.LC335:
	.ascii	" micron_special_init error micron_read_retry_mode:%"
	.ascii	"d micron_read_retry_cycle:%d \012\000"
	.section	.rodata.mod,"a",%progbits
	.set	.LANCHOR105,. + 0
	.type	mod, %object
	.size	mod, 6
mod:
	.byte	109
	.byte	111
	.byte	100
	.byte	101
	.byte	108
	.byte	0
	.section	.rodata.nand_cache_read.str1.1,"aMS",%progbits,1
.LC45:
	.ascii	"[NI]nand_cache_read error buf is  NULL!\012\000"
.LC46:
	.ascii	"[NE]error1 node %d,%d,%d!\012\000"
	.section	.rodata.nand_cache_write.str1.1,"aMS",%progbits,1
.LC55:
	.ascii	"[NE]error1 bitmap %x!\012\000"
.LC56:
	.ascii	"[NE]ECC_LIMIT happened 12! page:%d!\012\000"
.LC57:
	.ascii	"[NE]error1 flush write cache to nand\012\000"
.LC58:
	.ascii	"[NE]error2 flush write cache to nand\012\000"
.LC59:
	.ascii	"[NI]ECC_LIMIT happened 11! page:%d!\012\000"
	.section	.rodata.nand_check_table.str1.1,"aMS",%progbits,1
.LC483:
	.ascii	"[ND]==========================\012\000"
	.section	.rodata.nand_clean_zone_table2.str1.1,"aMS",%progbits,1
.LC132:
	.ascii	"[ND]zoneNO:%d total_pages: %d\012\000"
.LC133:
	.ascii	"[ND]NAND_Memset bytes: %d\012\000"
	.section	.rodata.nand_crc16_table,"a",%progbits
	.align	1
	.set	.LANCHOR2,. + 0
	.type	nand_crc16_table, %object
	.size	nand_crc16_table, 512
nand_crc16_table:
	.short	0
	.short	-16191
	.short	-15999
	.short	320
	.short	-15615
	.short	960
	.short	640
	.short	-15807
	.short	-14847
	.short	1728
	.short	1920
	.short	-14527
	.short	1280
	.short	-14911
	.short	-15231
	.short	1088
	.short	-13311
	.short	3264
	.short	3456
	.short	-12991
	.short	3840
	.short	-12351
	.short	-12671
	.short	3648
	.short	2560
	.short	-13631
	.short	-13439
	.short	2880
	.short	-14079
	.short	2496
	.short	2176
	.short	-14271
	.short	-10239
	.short	6336
	.short	6528
	.short	-9919
	.short	6912
	.short	-9279
	.short	-9599
	.short	6720
	.short	7680
	.short	-8511
	.short	-8319
	.short	8000
	.short	-8959
	.short	7616
	.short	7296
	.short	-9151
	.short	5120
	.short	-11071
	.short	-10879
	.short	5440
	.short	-10495
	.short	6080
	.short	5760
	.short	-10687
	.short	-11775
	.short	4800
	.short	4992
	.short	-11455
	.short	4352
	.short	-11839
	.short	-12159
	.short	4160
	.short	-4095
	.short	12480
	.short	12672
	.short	-3775
	.short	13056
	.short	-3135
	.short	-3455
	.short	12864
	.short	13824
	.short	-2367
	.short	-2175
	.short	14144
	.short	-2815
	.short	13760
	.short	13440
	.short	-3007
	.short	15360
	.short	-831
	.short	-639
	.short	15680
	.short	-255
	.short	16320
	.short	16000
	.short	-447
	.short	-1535
	.short	15040
	.short	15232
	.short	-1215
	.short	14592
	.short	-1599
	.short	-1919
	.short	14400
	.short	10240
	.short	-5951
	.short	-5759
	.short	10560
	.short	-5375
	.short	11200
	.short	10880
	.short	-5567
	.short	-4607
	.short	11968
	.short	12160
	.short	-4287
	.short	11520
	.short	-4671
	.short	-4991
	.short	11328
	.short	-7167
	.short	9408
	.short	9600
	.short	-6847
	.short	9984
	.short	-6207
	.short	-6527
	.short	9792
	.short	8704
	.short	-7487
	.short	-7295
	.short	9024
	.short	-7935
	.short	8640
	.short	8320
	.short	-8127
	.short	-24575
	.short	24768
	.short	24960
	.short	-24255
	.short	25344
	.short	-23615
	.short	-23935
	.short	25152
	.short	26112
	.short	-22847
	.short	-22655
	.short	26432
	.short	-23295
	.short	26048
	.short	25728
	.short	-23487
	.short	27648
	.short	-21311
	.short	-21119
	.short	27968
	.short	-20735
	.short	28608
	.short	28288
	.short	-20927
	.short	-22015
	.short	27328
	.short	27520
	.short	-21695
	.short	26880
	.short	-22079
	.short	-22399
	.short	26688
	.short	30720
	.short	-18239
	.short	-18047
	.short	31040
	.short	-17663
	.short	31680
	.short	31360
	.short	-17855
	.short	-16895
	.short	32448
	.short	32640
	.short	-16575
	.short	32000
	.short	-16959
	.short	-17279
	.short	31808
	.short	-19455
	.short	29888
	.short	30080
	.short	-19135
	.short	30464
	.short	-18495
	.short	-18815
	.short	30272
	.short	29184
	.short	-19775
	.short	-19583
	.short	29504
	.short	-20223
	.short	29120
	.short	28800
	.short	-20415
	.short	20480
	.short	-28479
	.short	-28287
	.short	20800
	.short	-27903
	.short	21440
	.short	21120
	.short	-28095
	.short	-27135
	.short	22208
	.short	22400
	.short	-26815
	.short	21760
	.short	-27199
	.short	-27519
	.short	21568
	.short	-25599
	.short	23744
	.short	23936
	.short	-25279
	.short	24320
	.short	-24639
	.short	-24959
	.short	24128
	.short	23040
	.short	-25919
	.short	-25727
	.short	23360
	.short	-26367
	.short	22976
	.short	22656
	.short	-26559
	.short	-30719
	.short	18624
	.short	18816
	.short	-30399
	.short	19200
	.short	-29759
	.short	-30079
	.short	19008
	.short	19968
	.short	-28991
	.short	-28799
	.short	20288
	.short	-29439
	.short	19904
	.short	19584
	.short	-29631
	.short	17408
	.short	-31551
	.short	-31359
	.short	17728
	.short	-30975
	.short	18368
	.short	18048
	.short	-31167
	.short	-32255
	.short	17088
	.short	17280
	.short	-31935
	.short	16640
	.short	-32319
	.short	-32639
	.short	16448
	.section	.rodata.nand_dbg_phy_read.str1.1,"aMS",%progbits,1
.LC313:
	.ascii	"[NE]%s:malloc 4096 fail!\012\000"
.LC314:
	.ascii	"[ND]spare: %x %x %x %x %x %x %x %x %x %x %x %x %x %"
	.ascii	"x %x %x\000"
.LC315:
	.ascii	"[ND]buf:%x %x %x %x %x %x %x %x %x %x %x.\012\000"
	.section	.rodata.nand_dbg_zone_phy_write.str1.1,"aMS",%progbits,1
.LC316:
	.ascii	"[NE]%s:malloc 8192 fail!\012\000"
	.section	.rodata.nand_discard.str1.1,"aMS",%progbits,1
.LC62:
	.ascii	"[NE]nand_discard paramter error!\012\000"
	.section	.rodata.nand_find_zone_table.str1.1,"aMS",%progbits,1
.LC479:
	.ascii	"[ND]build_zone_list start\012\000"
.LC480:
	.ascii	"[ND]nftl_cache_init start\012\000"
.LC481:
	.ascii	"[ND]=================================2============="
	.ascii	"==========================\012\000"
.LC482:
	.ascii	"[ND]nand_find_zone_table end\012\000"
	.section	.rodata.nand_op.str1.1,"aMS",%progbits,1
.LC47:
	.ascii	"[NE]paramter error. beyond reality capacity\012\000"
	.section	.rodata.nand_power_off_ecc_error.str1.1,"aMS",%progbits,1
.LC153:
	.ascii	"[NE]exception case bad block\012\000"
.LC154:
	.ascii	"[NE]exception case wbc\012\000"
.LC155:
	.ascii	"[NE]exception case gd\012\000"
.LC156:
	.ascii	"[NE]%s %d, flag = %d\012\000"
.LC157:
	.ascii	"[NE]OOB :\000"
.LC158:
	.ascii	"%.2x %.2x %.2x %.2x %.2x %.2x %.2x %.2x %.2x %.2x %"
	.ascii	".2x %.2x %.2x %.2x %.2x %.2x\012\000"
	.section	.rodata.nand_sector_cache_read.str1.1,"aMS",%progbits,1
.LC65:
	.ascii	"[NE]nand_sector_cache_read 1!\012\000"
	.section	.rodata.nand_sector_cache_write.str1.1,"aMS",%progbits,1
.LC66:
	.ascii	"[NE]nand_sector_cache_write 1!\012\000"
.LC67:
	.ascii	"[NE]nand_sector_cache_write 2!\012\000"
	.section	.rodata.nand_write_data_page.str1.1,"aMS",%progbits,1
.LC221:
	.ascii	"[NE]do after write error1!\012\000"
.LC222:
	.ascii	"[NE]do_before_write error!\012\000"
.LC223:
	.ascii	"[NE]write data to page error!\012\000"
.LC224:
	.ascii	"[NE]do after write error2!\012\000"
	.section	.rodata.new_block_init_for_write.str1.1,"aMS",%progbits,1
.LC136:
	.ascii	"[NE]new_block_init_for_write erase error!\012\000"
	.section	.rodata.nftl_add.str1.1,"aMS",%progbits,1
.LC491:
	.ascii	"[NE]%s:malloc fail for nftl_blk\012\000"
.LC492:
	.ascii	"[NE]nftl_initialize failed\012\000"
.LC493:
	.ascii	"[ND]nftl_add ok\012\000"
	.section	.rodata.nftl_build_all.str1.1,"aMS",%progbits,1
.LC494:
	.ascii	"[NE]nftl_build_all error!\012\000"
	.section	.rodata.nftl_cache_init.str1.1,"aMS",%progbits,1
.LC260:
	.ascii	"[NE]%s:malloc fail for cache_node!\012\000"
.LC261:
	.ascii	"[NE]%s:malloc fail for cache_page_buf!\012\000"
	.section	.rodata.nftl_get_gc_info.str1.1,"aMS",%progbits,1
.LC71:
	.ascii	"%d %d %d %d %d %d/%d %d/%d\012\000"
.LC72:
	.ascii	"%d:%d \000"
	.section	.rodata.nftl_initialize.str1.1,"aMS",%progbits,1
.LC471:
	.ascii	"005\000"
.LC472:
	.ascii	"7\000"
.LC473:
	.ascii	"3\000"
.LC474:
	.ascii	"sunxi nftl version %s.%s.%s  %s-%s\012\000"
.LC475:
	.ascii	"11:11\000"
.LC476:
	.ascii	"2020.03.05\000"
.LC477:
	.ascii	"[NE]%s:malloc fail for nftl_cfg\012\000"
.LC478:
	.ascii	"[ND]max_erase_times = %i\012\000"
	.section	.rodata.nftl_malloc.str1.1,"aMS",%progbits,1
.LC259:
	.ascii	"[NI]malloc size is large %d!\012\000"
	.section	.rodata.nftl_read.str1.1,"aMS",%progbits,1
.LC327:
	.ascii	"[NE]parameter error %d,%d !\012\000"
	.section	.rodata.nftl_read_history.str1.1,"aMS",%progbits,1
.LC328:
	.ascii	"awa1543 nftl_logic_size:%u\012\000"
	.section	.rodata.nftl_sector_cache_init.str1.1,"aMS",%progbits,1
.LC64:
	.ascii	"[NE]%s:malloc fail for cache_buf!\012\000"
	.section	.rodata.nftl_start.str1.1,"aMS",%progbits,1
.LC462:
	.ascii	"[NE]%s: malloc fail for zone\012\000"
.LC463:
	.ascii	"[NE]%s: malloc fail for nand_chip\012\000"
.LC464:
	.ascii	"[NE]%s: malloc fail for nand_block_info\012\000"
.LC465:
	.ascii	"[NE]not enough blocks %d!\012\000"
.LC466:
	.ascii	"[ND]nftl start:%d,%d\012\000"
.LC467:
	.ascii	"[NE]zone_param_init fail!\012\000"
.LC468:
	.ascii	"[NE]build_zone_list_first fail!\012\000"
.LC469:
	.ascii	"[NE]build_zone_list fail!\012\000"
.LC470:
	.ascii	"[NI]try again\012\000"
	.section	.rodata.no_cross_talk_rebuild_current_block.str1.1,"aMS",%progbits,1
.LC285:
	.ascii	"[NI]nctrcb1 %d,%d,%d!\012\000"
.LC286:
	.ascii	"[NE]no_cross_talk_rebuild_current_block fail 2\012\000"
.LC287:
	.ascii	"[NI]nctrcb2 %d,%d,%d,%d,%d,%d!\012\000"
.LC288:
	.ascii	"[NE]no_cross_talk_rebuild_current_block fail 4\012\000"
.LC289:
	.ascii	"[NE]no_cross_talk_rebuild_current_block erase block"
	.ascii	" fail %d!\012\000"
	.section	.rodata.panic_backup_block.str1.1,"aMS",%progbits,1
.LC434:
	.ascii	"[ND] reserved panic block before %d!\012\000"
.LC435:
	.ascii	"[NE] reserved panic block %d!\012\000"
.LC436:
	.ascii	"[NE] no reserved panic block!!! quit!\012\000"
	.section	.rodata.panic_init_part.str1.1,"aMS",%progbits,1
.LC433:
	.ascii	"[ND] panic part %s off %u size %u\012\000"
	.section	.rodata.panic_recover_data.str1.1,"aMS",%progbits,1
.LC484:
	.ascii	"[ND] not find panic data, no need to recovery!\012\000"
.LC485:
	.ascii	"[ND] recovery panic data start!\012\000"
.LC486:
	.ascii	"[NE] %s(%d): malloc failed\012\000"
.LC487:
	.ascii	"[ND] ignore blk %d page %d as dummy page\012\000"
.LC488:
	.ascii	"[ND] exit recovery panic block\012\000"
.LC489:
	.ascii	"[ND] invalid blk %d page %d, finish recovery\012\000"
.LC490:
	.ascii	"[ND] move blk %d page %d to logic addr %d\012\000"
	.section	.rodata.panic_recover_info.str1.1,"aMS",%progbits,1
.LC441:
	.ascii	"[ND] find panic block : %d\012\000"
.LC442:
	.ascii	"[NE] invalid panic block index %d\012\000"
	.section	.rodata.panic_write.str1.1,"aMS",%progbits,1
.LC437:
	.ascii	"[ND] write panic data : logic addr: %d, sectors %d,"
	.ascii	" pages %d, blocks %d\012\000"
.LC438:
	.ascii	"[NE] too much data for panic-write, %d sectors left"
	.ascii	" over\012\000"
.LC439:
	.ascii	"[ND] write panic data block: %d page %d !\012\000"
.LC440:
	.ascii	"[ND] write dummy data block: %d page %d !\012\000"
	.section	.rodata.para0,"a",%progbits
	.align	1
	.set	.LANCHOR94,. + 0
	.type	para0, %object
	.size	para0, 56
para0:
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	6
	.short	10
	.short	6
	.short	0
	.short	-3
	.short	-7
	.short	-8
	.short	0
	.short	-6
	.short	-13
	.short	-15
	.short	0
	.short	-11
	.short	-20
	.short	-23
	.short	0
	.short	0
	.short	-26
	.short	-30
	.short	0
	.short	0
	.short	-32
	.short	-37
	.section	.rodata.para1,"a",%progbits
	.align	1
	.set	.LANCHOR95,. + 0
	.type	para1, %object
	.size	para1, 56
para1:
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	6
	.short	10
	.short	6
	.short	0
	.short	-3
	.short	-7
	.short	-8
	.short	0
	.short	-6
	.short	-13
	.short	-15
	.short	0
	.short	-9
	.short	-20
	.short	-23
	.short	0
	.short	0
	.short	-26
	.short	-30
	.short	0
	.short	0
	.short	-32
	.short	-37
	.section	.rodata.phy_block_from_invalid_page_incr.str1.1,"aMS",%progbits,1
.LC19:
	.ascii	"[ND]invalid_page_count more than pages per blk 0 %d"
	.ascii	" %d!!\012\000"
.LC20:
	.ascii	"[ND]invalid_page_count more than pages per blk 1!!\012"
	.ascii	"\000"
	.section	.rodata.power_on_gc.str1.1,"aMS",%progbits,1
.LC248:
	.ascii	"[ND]not power on gc [%d, %d, %d], [%d %d %d]!\012\000"
.LC249:
	.ascii	"[ND]emergency power on gc %d !\012\000"
.LC250:
	.ascii	"[ND]power on gc %d!\012\000"
	.section	.rodata.print_all_nftl_blk.str1.1,"aMS",%progbits,1
.LC326:
	.ascii	"[ND]cap: 0x%08x.\012\000"
	.section	.rodata.print_block_count_list.str1.1,"aMS",%progbits,1
.LC14:
	.ascii	"[ND]block_used_count list: \012\000"
.LC15:
	.ascii	"[ND]block NO: %d \000"
.LC16:
	.ascii	"[ND]block_used_count: %d \012\000"
	.section	.rodata.print_block_invalid_list.str1.1,"aMS",%progbits,1
.LC12:
	.ascii	"[ND]invalid_page_count list: \012\000"
.LC13:
	.ascii	"[ND]count:%4d; invalid:%3d;\000"
	.section	.rodata.print_free_list.str1.1,"aMS",%progbits,1
.LC8:
	.ascii	"[ND]free list: \012\000"
.LC9:
	.ascii	"[ND]block NO:%4d; erase:%3d; \000"
.LC10:
	.ascii	"[ND]count:%4d; \000"
.LC11:
	.ascii	"[ND]info:0x%x\012\000"
	.section	.rodata.print_logic_page_map.str1.1,"aMS",%progbits,1
.LC186:
	.ascii	"[NI]page_map NULL!!\012\000"
.LC187:
	.ascii	"[ND]%4d:<%4d %3d><%d>\012\000"
	.section	.rodata.print_nftl_zone.str1.1,"aMS",%progbits,1
.LC79:
	.ascii	"[ND]nand3.x \012\000"
.LC80:
	.ascii	"[ND]zone->nand_chip->blk_per_chip: %d \012\000"
.LC81:
	.ascii	"[ND]zone->nand_chip->bytes_per_page: %d \012\000"
.LC82:
	.ascii	"[ND]zone->nand_chip->pages_per_blk: %d \012\000"
.LC83:
	.ascii	"[ND]zone->nand_chip->max_erase_times: %d \012\000"
.LC84:
	.ascii	"[ND]zone->nand_chip->support_read_reclaim: %d \012\000"
.LC85:
	.ascii	"[ND]zone->test: %d \012\000"
.LC86:
	.ascii	"[ND]zone->zone_no: %d \012\000"
.LC87:
	.ascii	"[ND]zone->zone_attr: %d \012\000"
.LC88:
	.ascii	"[ND]zone->blocks: %d \012\000"
.LC89:
	.ascii	"[ND]zone->bad_block: %d \012\000"
.LC90:
	.ascii	"[ND]zone->logic_cap_in_sects: %d \012\000"
.LC91:
	.ascii	"[ND]zone->backup_cap_in_sects: %d \012\000"
.LC92:
	.ascii	"[ND]zone->free_block_num: %d \012\000"
.LC93:
	.ascii	"[ND]zone->gc_strategy.start_gc_free_blocks: %d \012"
	.ascii	"\000"
.LC94:
	.ascii	"[ND]zone->gc_strategy.stop_gc_free_blocks: %d \012\000"
.LC95:
	.ascii	"[ND]zone->gc_strategy.gc_page: %d \012\000"
.LC96:
	.ascii	"[ND]zone->gc_strategy.process: %d \012\000"
.LC97:
	.ascii	"[ND]zone->prio_gc.prio_type : %d \012\000"
.LC98:
	.ascii	"[ND]zone->zone_start_phy_block->phy_block.Block_NO:"
	.ascii	" %d \012\000"
.LC99:
	.ascii	"[ND]zone->zone_end_phy_block->phy_block.Block_NO: %"
	.ascii	"d \012\000"
.LC100:
	.ascii	"[ND]zone->zone_phy_page_map_for_gc: %x \012\000"
.LC101:
	.ascii	"[ND]zone->current_block.user_info: %x \012\000"
.LC102:
	.ascii	"[ND]zone->current_block.block_info: %x \012\000"
.LC103:
	.ascii	"[ND]zone->current_block.block_info->phy_block.Block"
	.ascii	"_NO: %d \012\000"
.LC104:
	.ascii	"[ND]zone->current_block.page_used: %d \012\000"
.LC105:
	.ascii	"[ND]zone->current_block.block_info->block_used_coun"
	.ascii	"t: %d \012\000"
.LC106:
	.ascii	"[ND]zone->recv_free_block: %d %d!!\012\000"
.LC107:
	.ascii	"[ND]zone->assist_block.user_info: %x \012\000"
.LC108:
	.ascii	"[ND]zone->assist_block.block_info: %x \012\000"
.LC109:
	.ascii	"[ND]zone->assist_block.block_info->phy_block.Block_"
	.ascii	"NO: %d \012\000"
.LC110:
	.ascii	"[ND]zone->assist_block.page_used: %d \012\000"
.LC111:
	.ascii	"[ND]zone->assist_block.block_info->block_used_count"
	.ascii	": %d \012\000"
.LC112:
	.ascii	"[ND]zone->read_reclaim_complete: %x \012\000"
.LC113:
	.ascii	"[ND]zone->temp_page_buf: %x \012\000"
.LC114:
	.ascii	"[ND]zone->max_erase_num: %d \012\000"
.LC115:
	.ascii	"[ND]zone->cache.cache_totals: %x \012\000"
.LC116:
	.ascii	"[ND]zone->wl_gc_count: %d \012\000"
.LC117:
	.ascii	"[ND]zone->wl_gc_page_num: %d \012\000"
.LC118:
	.ascii	"[ND]zone->cfg->nftl_dont_use_cache: %x \012\000"
.LC119:
	.ascii	"[ND]zone->cfg->nftl_use_cache_sort: %x \012\000"
.LC120:
	.ascii	"[ND]zone->cfg->nftl_support_gc_read_reclaim: %x \012"
	.ascii	"\000"
.LC121:
	.ascii	"[ND]zone->cfg->nftl_support_wear_leveling: %x \012\000"
.LC122:
	.ascii	"[ND]zone->cfg->nftl_need_erase: %x \012\000"
.LC123:
	.ascii	"[ND]zone->cfg->nftl_min_free_block_num: %x \012\000"
.LC124:
	.ascii	"[ND]zone->cfg->nftl_gc_threshold_free_block_num: %x"
	.ascii	" \012\000"
.LC125:
	.ascii	"[ND]zone->cfg->nftl_min_free_block: %x \012\000"
.LC126:
	.ascii	"[ND]zone->cfg->nftl_gc_threshold_ratio_numerator: %"
	.ascii	"x \012\000"
.LC127:
	.ascii	"[ND]zone->cfg->nftl_gc_threshold_ratio_denominator:"
	.ascii	" %x \012\000"
.LC128:
	.ascii	"[ND]zone->cfg->nftl_max_cache_num: %d \012\000"
.LC129:
	.ascii	"[ND]zone->cfg->nftl_max_cache_write_num: %d \012\000"
.LC130:
	.ascii	"[ND]zone->cfg->nftl_cross_talk: %x \012\000"
.LC131:
	.ascii	"[ND]zone->cfg->nftl_read_claim_interval: %d \012\000"
	.section	.rodata.print_smart.str1.1,"aMS",%progbits,1
.LC21:
	.ascii	"[ND]smart->version:%x;\012\000"
.LC22:
	.ascii	"[ND]smart->total_recv_read_sectors:%lld;\012\000"
.LC23:
	.ascii	"[ND]smart->total_recv_write_sectors:%lld;\012\000"
.LC24:
	.ascii	"[ND]smart->total_real_read_pages:%lld;\012\000"
.LC25:
	.ascii	"[ND]smart->total_real_write_pages:%lld;\012\000"
.LC26:
	.ascii	"[ND]smart->total_recv_discard_sectors:%lld;\012\000"
.LC27:
	.ascii	"[ND]smart->total_real_discard_sectors:%lld;\012\000"
.LC28:
	.ascii	"[ND]smart->total_recv_read_claim_pages:%d;\012\000"
.LC29:
	.ascii	"[ND]smart->total_gc_times:%d;\012\000"
.LC30:
	.ascii	"[ND]smart->total_gc_pages:%d;\012\000"
.LC31:
	.ascii	"[ND]smart->total_wl_times:%d;\012\000"
.LC32:
	.ascii	"[ND]smart->total_wl_gc_times:%d;\012\000"
.LC33:
	.ascii	"[ND]smart->total_real_read_error_pages:%d;\012\000"
.LC34:
	.ascii	"[ND]smart->total_real_write_error_pages:%d;\012\000"
.LC35:
	.ascii	"[ND]smart->total_normal_power_cycles:%x;\012\000"
.LC36:
	.ascii	"[ND]smart->total_unusual_power_cycles:%x;\012\000"
.LC37:
	.ascii	"[ND]smart->max_block_erase_times:%d;\012\000"
.LC38:
	.ascii	"[ND]smart->min_block_erase_times:%d;\012\000"
.LC39:
	.ascii	"[ND]smart->max_block_used_counter:%d;\012\000"
.LC40:
	.ascii	"[ND]smart->min_block_used_counter:%d;\012\000"
.LC41:
	.ascii	"[ND]smart->read_reclaim_utc:%d;\012\000"
.LC42:
	.ascii	"[ND]smart->cross_talk_times:%d;\012\000"
.LC43:
	.ascii	"[ND]smart->read_reclaim_zone_no:%d;\012\000"
.LC44:
	.ascii	"[ND]smart->read_reclaim_page_no:%d;\012\000"
	.section	.rodata.put_phy_block_to_free_list.str1.1,"aMS",%progbits,1
.LC17:
	.ascii	"[ND]free_list error !\012\000"
	.section	.rodata.put_phy_block_to_invalid_page_list.str1.1,"aMS",%progbits,1
.LC18:
	.ascii	"[ND]add invalid_list error !\012\000"
	.section	.rodata.recover_block_phy_page_mapping.str1.1,"aMS",%progbits,1
.LC159:
	.ascii	"[NE]ret:%d read fail %d %d,read one more time!!\012"
	.ascii	"\000"
.LC160:
	.ascii	"[NE]ret:%d read fail %d %d,%d times,don't read more"
	.ascii	"!!\012\000"
.LC161:
	.ascii	"[NE]power off ecc error 3!!\012\000"
.LC162:
	.ascii	"[NE]invalid logic_page block:%d page:%d,logic_page "
	.ascii	"0x%x.\012\000"
.LC163:
	.ascii	"[NE]recover sb@%d sp@%d phy page mapping error.\012"
	.ascii	"\000"
	.section	.rodata.recover_logic_page_mapping.str1.1,"aMS",%progbits,1
.LC188:
	.ascii	"[NI]logic_page_map is NULL\012\000"
.LC189:
	.ascii	"[NE]invalid_page_count more than pages_per_blk :%d\012"
	.ascii	"\000"
.LC190:
	.ascii	"[NE]inv P b:%d p:%d,lp %x\012\000"
.LC191:
	.ascii	"[NE]build invalid_page_count more than pages_per_bl"
	.ascii	"k\012\000"
	.section	.rodata.recover_phy_page_mapping.str1.1,"aMS",%progbits,1
.LC179:
	.ascii	"[NE]sb@%d sp@%d recover_phy_page_mapping no used pa"
	.ascii	"ge\012\000"
.LC180:
	.ascii	"[NE]sb@%d sp@%d power off ecc error1.\012\000"
.LC181:
	.ascii	"[NE]rppm invalid page %d!!\012\000"
.LC182:
	.ascii	"[NI]power_down page %d!!\012\000"
.LC183:
	.ascii	"[NE]recover_phy_page_mapping unkown page data %d!!\012"
	.ascii	"\000"
.LC184:
	.ascii	"[NE]recover_phy_page_mapping ecc error block:%d;pag"
	.ascii	"e:%d.\012\000"
	.section	.rodata.samsung_read_page_end.str1.1,"aMS",%progbits,1
.LC427:
	.ascii	"samsung retry!\012\000"
.LC428:
	.ascii	"samsung ReadRetry ok! ch =%d, chip = %d  block = %d"
	.ascii	", page = %d, RetryCount = %d  \012\000"
	.section	.rodata.samsung_readretry_init.str1.1,"aMS",%progbits,1
.LC429:
	.ascii	"samsung read retry conut: %d !\012\000"
	.section	.rodata.samsung_set_readretry.str1.1,"aMS",%progbits,1
.LC426:
	.ascii	"samsung set readretry error ! %x \012\000"
	.section	.rodata.samsung_special_exit.str1.1,"aMS",%progbits,1
.LC432:
	.ascii	" samsung_special_exit \012\000"
	.section	.rodata.samsung_special_init.str1.1,"aMS",%progbits,1
.LC430:
	.ascii	" samsung_special_init samsung_read_retry_mode:%d sa"
	.ascii	"msung_read_retry_cycle :%d \012\000"
.LC431:
	.ascii	" samsung_special_init error samsung_read_retry_mode"
	.ascii	":%d samsung_read_retry_cycle :%d \012\000"
	.section	.rodata.sandisk_A19_read_page_end.str1.1,"aMS",%progbits,1
.LC385:
	.ascii	"sandisk_A19 retry!\012\000"
.LC386:
	.ascii	"sandisk_A19 set readretry error\012\000"
.LC387:
	.ascii	"retry spare all 0xff! ch =%d, chip = %d  block = %d"
	.ascii	", page = %d, RetryCount = %d  \012\000"
.LC388:
	.ascii	"sandisk_A19 ReadRetry ok! ch =%d, chip = %d  block "
	.ascii	"= %d, page = %d, RetryCount = %d  \012\000"
.LC389:
	.ascii	"sandisk_A19 ReadRetry ok with ecc limit! ch =%d, ch"
	.ascii	"ip = %d  block = %d, page = %d, RetryCount = %d  \012"
	.ascii	"\000"
	.section	.rodata.sandisk_A19_readretry_init.str1.1,"aMS",%progbits,1
.LC383:
	.ascii	"sandisk_A19 retry mode err : %d !\012\000"
.LC384:
	.ascii	"sandisk A19 read retry conut: %d !\012\000"
	.section	.rodata.sandisk_A19_special_exit.str1.1,"aMS",%progbits,1
.LC392:
	.ascii	"%s sandisk toggle vendor specific setting failed!\012"
	.ascii	"\000"
.LC393:
	.ascii	" sandisk_A19_special_exit \012\000"
	.section	.rodata.sandisk_A19_special_init.str1.1,"aMS",%progbits,1
.LC390:
	.ascii	" sandisk_A19_special_init sandisk_A19_read_retry_mo"
	.ascii	"de:%d sandisk_A19_read_retry_cycle :%d sandisk_A19_"
	.ascii	"read_retry_reg_cnt %d \012\000"
.LC391:
	.ascii	" sandisk_A19_special_init error sandisk_A19_read_re"
	.ascii	"try_mode:%d sandisk_A19_read_retry_cycle :%d sandis"
	.ascii	"k_A19_read_retry_reg_cnt %d \012\000"
	.section	.rodata.sandisk_activation_seq.str1.1,"aMS",%progbits,1
.LC394:
	.ascii	"sandisk activation seq fail 0x%x\012\000"
	.section	.rodata.sandisk_read_page_end.str1.1,"aMS",%progbits,1
.LC396:
	.ascii	"sandisk retry!\012\000"
.LC397:
	.ascii	"sandisk ReadRetry ok! ch =%d, chip = %d  block = %d"
	.ascii	", page = %d, RetryCount = %d  \012\000"
	.section	.rodata.sandisk_readretry_init.str1.1,"aMS",%progbits,1
.LC395:
	.ascii	"sandisk read retry conut: %d !\012\000"
	.section	.rodata.sandisk_special_exit.str1.1,"aMS",%progbits,1
.LC400:
	.ascii	" sandisk_special_exit \012\000"
	.section	.rodata.sandisk_special_init.str1.1,"aMS",%progbits,1
.LC398:
	.ascii	" sandisk_special_init sandisk_read_retry_mode:%d sa"
	.ascii	"ndisk_read_retry_cycle :%d sandisk_read_retry_reg_c"
	.ascii	"nt %d \012\000"
.LC399:
	.ascii	" sandisk_special_init error sandisk_read_retry_mode"
	.ascii	":%d sandisk_read_retry_cycle :%d sandisk_read_retry"
	.ascii	"_reg_cnt %d \012\000"
	.section	.rodata.second_scan_all_blocks.str1.1,"aMS",%progbits,1
.LC290:
	.ascii	"[NI]NAND_EVENT: 2 current used block found %d,%d!\012"
	.ascii	"\000"
.LC291:
	.ascii	"[NE]no crosstalk:2 block used count diff %d,%d %d,%"
	.ascii	"d !\012\000"
.LC292:
	.ascii	"[NE]NAND_EVENT: muti current used block found1 %d %"
	.ascii	"d!\012\000"
.LC293:
	.ascii	"[NE]NAND_EVENT: muti current used block found2 %d %"
	.ascii	"d!\012\000"
.LC294:
	.ascii	"[NE]NAND_EVENT: muti current used block found3 %d %"
	.ascii	"d!\012\000"
.LC295:
	.ascii	"[NE]NAND_EVENT: last page spare data %x,%x,%x,%x,%x"
	.ascii	",%x,%x %x %x %x %x %x %x %x %x %x!!\012\000"
.LC296:
	.ascii	"[NI]zone@%d b@%d last page unkown ecc ok.\012\000"
.LC297:
	.ascii	"[NE]zone@%d b@%d last page ecc error.\012\000"
.LC298:
	.ascii	"[NE]something strange %d,%d!!\012\000"
.LC299:
	.ascii	"[NI]all block full!!\012\000"
.LC300:
	.ascii	"[ND]corss talk rebuild 0 %d %d!!\012\000"
.LC301:
	.ascii	"[NE]1st current block:%d 1st current block uc:%d mu"
	.ascii	"ti current used block 1st.\012\000"
.LC302:
	.ascii	"[ND]2nd current block:%d 2nd current block uc:%d mu"
	.ascii	"ti current used block 2nd.\012\000"
.LC303:
	.ascii	"[NE]something is error here 7!\012\000"
.LC304:
	.ascii	"[NE]p_phy_block_info_last %d %d.\012\000"
.LC305:
	.ascii	"[NE]get_current_used_block fail.\012\000"
.LC306:
	.ascii	"[ND]free block nums is %d, aec: %d, iec: %d, a_buc:"
	.ascii	" %d, i_buc: %d!\012\000"
	.section	.rodata.shutdown_on_gc.str1.1,"aMS",%progbits,1
.LC251:
	.ascii	"[ND]%s %p %d %d %d %\012\000"
.LC252:
	.ascii	"[NI]shutdown_on_gc end! [%d %d %d]\012\000"
.LC253:
	.ascii	"[ND]shutdown_on_gc one ok! [%d %d %d]\012\000"
	.section	.rodata.torture_block_and_mark.str1.1,"aMS",%progbits,1
.LC143:
	.ascii	"[NI]torture b@%d.\012\000"
.LC144:
	.ascii	"[NE]%s write b@%d p@%d err\012\000"
.LC145:
	.ascii	"[NE]%s read b@%d p@%d err\012\000"
.LC146:
	.ascii	"[NE]%s b@%d p@%d patt %02x checking main data fail\012"
	.ascii	"\000"
.LC147:
	.ascii	"[NE]%s b@%d p@%d patt %02x checking spare data fail"
	.ascii	"\012\000"
.LC148:
	.ascii	"[NE][NE]erase_block block fail %d!\012\000"
	.section	.rodata.toshiba_read_page_end.str1.1,"aMS",%progbits,1
.LC378:
	.ascii	"toshiba retry!\012\000"
.LC379:
	.ascii	"toshiba ReadRetry ok! ch =%d, chip = %d  block = %d"
	.ascii	", page = %d, RetryCount = %d  \012\000"
	.section	.rodata.toshiba_readretry_init.str1.1,"aMS",%progbits,1
.LC377:
	.ascii	"toshiba read retry conut: %d !\012\000"
	.section	.rodata.toshiba_special_exit.str1.1,"aMS",%progbits,1
.LC382:
	.ascii	" toshiba_special_exit \012\000"
	.section	.rodata.toshiba_special_init.str1.1,"aMS",%progbits,1
.LC380:
	.ascii	" toshiba_special_init toshiba_read_retry_mode :%d t"
	.ascii	"oshiba_read_retry_cycle :%d toshiba_read_retry_reg_"
	.ascii	"cnt :%d \012\000"
.LC381:
	.ascii	" toshiba_special_init error toshiba_read_retry_mode"
	.ascii	" :%d toshiba_read_retry_cycle :%d toshiba_read_retr"
	.ascii	"y_reg_cnt :%d \012\000"
	.section	.rodata.toshiba_vender_pre_condition.str1.1,"aMS",%progbits,1
.LC376:
	.ascii	"toshiba vender_pre_condition error!\012\000"
	.section	.rodata.toshiba_vender_set_param.str1.1,"aMS",%progbits,1
.LC375:
	.ascii	"toshiba rr value 3 %x %x %x %x!\012\000"
	.section	.rodata.write_data_to_nand.str1.1,"aMS",%progbits,1
.LC317:
	.ascii	"[NE][NE]%s:malloc 512 fail!\012\000"
	.section	.rodata.write_data_to_page.str1.1,"aMS",%progbits,1
.LC220:
	.ascii	"[NE]write logic data to current block error\012\000"
	.section	.rodata.write_logic_data_to_current_block.str1.1,"aMS",%progbits,1
.LC215:
	.ascii	"[ND]logic_page_map NULL!!\012\000"
.LC216:
	.ascii	"[ND]invalid_page_count more than pages_per_blk at w"
	.ascii	"rite logic data to current block:%d!!\012\000"
.LC217:
	.ascii	"[NE]write_phy_data_to_current_block error2\012\000"
.LC218:
	.ascii	"[NE]invalid_page_count more than pages_per_blk at w"
	.ascii	"rite logic data to current block:%d!!\012\000"
.LC219:
	.ascii	"[NE]write phy data to current block error2\012\000"
	.section	.rodata.write_phy_data_to_current_block.str1.1,"aMS",%progbits,1
.LC207:
	.ascii	"[ND]last block can not used to logic page %d!!\012\000"
.LC208:
	.ascii	"[ND]last block can not used to power down page %d!!"
	.ascii	"\012\000"
.LC209:
	.ascii	"[ND]write_phy_data_to_current_block write error %d!"
	.ascii	"\012\000"
.LC210:
	.ascii	"[NE]do_write_error error\012\000"
	.section	.rodata.write_phy_page_map_to_current_block.str1.1,"aMS",%progbits,1
.LC211:
	.ascii	"[NE]write_phy_data_to_current_block error1\012\000"
	.section	.rodata.zone_param_init.str1.1,"aMS",%progbits,1
.LC265:
	.ascii	"[NE]%s:malloc fail for temp_page_buf\012\000"
.LC266:
	.ascii	"[NE]%s:malloc fail for logic_page_buf\012\000"
.LC267:
	.ascii	"[NE]zone_param_init error2\012\000"
.LC268:
	.ascii	"[NE]%s:malloc fail for current_block.user_info.buf\012"
	.ascii	"\000"
.LC269:
	.ascii	"[NE]%s:malloc fail for assist_block.user_info.buf\012"
	.ascii	"\000"
.LC270:
	.ascii	"[NE]%s:malloc fail for zone_phy_page_map_for_gc.buf"
	.ascii	"\012\000"
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
	.section	.note.GNU-stack,"",%progbits
