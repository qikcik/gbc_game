;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.7 #12016 (MINGW64)
;--------------------------------------------------------
	.module banks
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _print_var
	.globl _bank_fixed
	.globl b_bank_3
	.globl _bank_3
	.globl b_bank_2
	.globl _bank_2
	.globl b_bank_1
	.globl _bank_1
	.globl _puts
	.globl _printf
	.globl _var_internal
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_var_internal::
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
;banks.c:17: void bank_fixed(void) NONBANKED
;	---------------------------------
; Function bank_fixed
; ---------------------------------
_bank_fixed::
;banks.c:19: puts("I'm in fixed ROM");
	ld	hl, #___str_0
	push	hl
	call	_puts
	add	sp, #2
;banks.c:20: }
	ret
___str_0:
	.ascii "I'm in fixed ROM"
	.db 0x00
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;banks.c:22: void print_var(UBYTE bank)
;	---------------------------------
; Function print_var
; ---------------------------------
_print_var::
;banks.c:24: SWITCH_RAM_MBC1(bank);
	ld	de, #0x4000
	ldhl	sp,	#2
	ld	a, (hl)
	ld	(de), a
;banks.c:25: printf("Var_%u is %u\n");
	ld	hl, #___str_1
	push	hl
	call	_printf
	add	sp, #2
;banks.c:26: }
	ret
___str_1:
	.ascii "Var_%u is %u"
	.db 0x0a
	.db 0x00
;banks.c:28: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
;banks.c:30: puts("Program Start...");
	ld	hl, #___str_2
	push	hl
	call	_puts
	add	sp, #2
;banks.c:32: ENABLE_RAM_MBC1;
	ld	hl, #0x0000
	ld	(hl), #0x0a
;banks.c:33: SWITCH_4_32_MODE_MBC1;
	ld	h, #0x60
	ld	(hl), #0x01
;banks.c:35: var_internal = 1;
	ld	hl, #_var_internal
	ld	a, #0x01
	ld	(hl+), a
	ld	(hl), #0x00
;banks.c:36: SWITCH_RAM_MBC1(0);
	ld	hl, #0x4000
	ld	(hl), #0x00
;banks.c:37: var_0 = 2;
	ld	hl, #_var_0
	ld	a, #0x02
	ld	(hl+), a
	ld	(hl), #0x00
;banks.c:38: SWITCH_RAM_MBC1(1);
	ld	hl, #0x4000
	ld	(hl), #0x01
;banks.c:39: var_1 = 3;
	ld	hl, #_var_1
	ld	a, #0x03
	ld	(hl+), a
	ld	(hl), #0x00
;banks.c:40: SWITCH_RAM_MBC1(2);
	ld	hl, #0x4000
	ld	(hl), #0x02
;banks.c:41: var_2 = 4;
	ld	hl, #_var_2
	ld	a, #0x04
	ld	(hl+), a
	ld	(hl), #0x00
;banks.c:42: SWITCH_RAM_MBC1(3);
	ld	hl, #0x4000
	ld	(hl), #0x03
;banks.c:43: var_3 = 5;
	ld	hl, #_var_3
	ld	a, #0x05
	ld	(hl+), a
	ld	(hl), #0x00
;banks.c:45: bank_fixed();
	call	_bank_fixed
;banks.c:46: bank_1();
	ld	e, #b_bank_1
	ld	hl, #_bank_1
	call	___sdcc_bcall_ehl
;banks.c:47: bank_2();
	ld	e, #b_bank_2
	ld	hl, #_bank_2
	call	___sdcc_bcall_ehl
;banks.c:48: bank_3();
	ld	e, #b_bank_3
	ld	hl, #_bank_3
	call	___sdcc_bcall_ehl
;banks.c:50: printf("Var is %u\n", var_internal);
	ld	hl, #_var_internal
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ld	hl, #___str_3
	push	hl
	call	_printf
	add	sp, #4
;banks.c:51: SWITCH_RAM_MBC1(0);
	ld	hl, #0x4000
	ld	(hl), #0x00
;banks.c:52: printf("Var_0 is %u\n", var_0);
	ld	hl, #_var_0
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ld	hl, #___str_4
	push	hl
	call	_printf
	add	sp, #4
;banks.c:53: SWITCH_RAM_MBC1(1);
	ld	hl, #0x4000
	ld	(hl), #0x01
;banks.c:54: printf("Var_1 is %u\n", var_1);
	ld	hl, #_var_1
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ld	hl, #___str_5
	push	hl
	call	_printf
	add	sp, #4
;banks.c:55: SWITCH_RAM_MBC1(2);
	ld	hl, #0x4000
	ld	(hl), #0x02
;banks.c:56: printf("Var_2 is %u\n", var_2);
	ld	hl, #_var_2
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ld	hl, #___str_6
	push	hl
	call	_printf
	add	sp, #4
;banks.c:57: SWITCH_RAM_MBC1(3);
	ld	hl, #0x4000
	ld	(hl), #0x03
;banks.c:58: printf("Var_3 is %u\n", var_3);
	ld	hl, #_var_3
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	push	hl
	ld	hl, #___str_7
	push	hl
	call	_printf
	add	sp, #4
;banks.c:60: puts("The End...");
	ld	hl, #___str_8
	push	hl
	call	_puts
	add	sp, #2
;banks.c:61: }
	ret
___str_2:
	.ascii "Program Start..."
	.db 0x00
___str_3:
	.ascii "Var is %u"
	.db 0x0a
	.db 0x00
___str_4:
	.ascii "Var_0 is %u"
	.db 0x0a
	.db 0x00
___str_5:
	.ascii "Var_1 is %u"
	.db 0x0a
	.db 0x00
___str_6:
	.ascii "Var_2 is %u"
	.db 0x0a
	.db 0x00
___str_7:
	.ascii "Var_3 is %u"
	.db 0x0a
	.db 0x00
___str_8:
	.ascii "The End..."
	.db 0x00
	.area _CODE
	.area _CABS (ABS)
