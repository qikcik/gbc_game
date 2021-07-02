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
	.globl _bank_fixed
	.globl b_some_4
	.globl _some_4
	.globl b_func_3
	.globl _func_3
	.globl b_func_2
	.globl _func_2
	.globl b_func_1
	.globl _func_1
	.globl _puts
	.globl _printf
	.globl _wait_vbl_done
	.globl _some_const_var_0
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
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
;banks.c:26: void bank_fixed(void) NONBANKED
;	---------------------------------
; Function bank_fixed
; ---------------------------------
_bank_fixed::
;banks.c:28: puts("I'm in fixed ROM");
	ld	hl, #___str_0
	push	hl
	call	_puts
	add	sp, #2
;banks.c:29: }
	ret
_some_const_var_0:
	.db #0x00	; 0
___str_0:
	.ascii "I'm in fixed ROM"
	.db 0x00
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;banks.c:31: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
;banks.c:33: printf("Program Start...\n\n");
	ld	hl, #___str_2
	push	hl
	call	_puts
	add	sp, #2
;banks.c:36: bank_fixed();
	call	_bank_fixed
;banks.c:39: func_1();
	ld	e, #b_func_1
	ld	hl, #_func_1
	call	___sdcc_bcall_ehl
;banks.c:40: func_2();
	ld	e, #b_func_2
	ld	hl, #_func_2
	call	___sdcc_bcall_ehl
;banks.c:41: func_3();
	ld	e, #b_func_3
	ld	hl, #_func_3
	call	___sdcc_bcall_ehl
;banks.c:42: some_4();
	ld	e, #b_some_4
	ld	hl, #_some_4
	call	___sdcc_bcall_ehl
;banks.c:44: printf("\n");
	ld	hl, #___str_4
	push	hl
	call	_puts
	add	sp, #2
;banks.c:47: printf("Var0 = %u is unbanked", some_const_var_0);
	ld	hl, #_some_const_var_0
	ld	c, (hl)
	ld	b, #0x00
	push	bc
	ld	hl, #___str_5
	push	hl
	call	_printf
	add	sp, #4
;banks.c:49: SWITCH_ROM_MBC1( (UINT8)&__bank_srcfile1 );
	ld	bc, #___bank_srcfile1+0
	ld	a, c
	ldh	(__current_bank+0),a
	ld	a, #<(___bank_srcfile1)
	ld	(#0x2000),a
;banks.c:50: printf("Var1 = %u in bank %u\n", some_const_var_1, &(__bank_srcfile1));
	ld	hl, #_some_const_var_1
	ld	e, (hl)
	ld	d, #0x00
	push	bc
	push	de
	ld	hl, #___str_6
	push	hl
	call	_printf
	add	sp, #6
;banks.c:51: SWITCH_ROM_MBC1( (UINT8)&__bank_srcfile2 );
	ld	bc, #___bank_srcfile2+0
	ld	a, c
	ldh	(__current_bank+0),a
	ld	a, #<(___bank_srcfile2)
	ld	(#0x2000),a
;banks.c:52: printf("Var2 = %u in bank %u\n", some_const_var_2, &(__bank_srcfile2));
	ld	hl, #_some_const_var_2
	ld	e, (hl)
	ld	d, #0x00
	push	bc
	push	de
	ld	hl, #___str_7
	push	hl
	call	_printf
	add	sp, #6
;banks.c:53: SWITCH_ROM_MBC1( (UINT8)&__bank_srcfile3 );
	ld	bc, #___bank_srcfile3+0
	ld	a, c
	ldh	(__current_bank+0),a
	ld	a, #<(___bank_srcfile3)
	ld	(#0x2000),a
;banks.c:54: printf("Var3 = %u in bank %u\n", some_const_var_3, &(__bank_srcfile3));
	ld	hl, #_some_const_var_3
	ld	e, (hl)
	ld	d, #0x00
	push	bc
	push	de
	ld	hl, #___str_8
	push	hl
	call	_printf
	add	sp, #6
;banks.c:55: SWITCH_ROM_MBC1( (UINT8)&__bank_srcfile4 );
	ld	bc, #___bank_srcfile4+0
	ld	a, c
	ldh	(__current_bank+0),a
	ld	a, #<(___bank_srcfile4)
	ld	(#0x2000),a
;banks.c:56: printf("Var4 = %u in bank %u\n", some_const_var_4, &(__bank_srcfile4));
	ld	hl, #_some_const_var_4
	ld	e, (hl)
	ld	d, #0x00
	push	bc
	push	de
	ld	hl, #___str_9
	push	hl
	call	_printf
	add	sp, #6
;banks.c:59: puts("The End...");
	ld	hl, #___str_12
	push	hl
	call	_puts
	add	sp, #2
;banks.c:62: while(1) {
00102$:
;banks.c:64: wait_vbl_done();
	call	_wait_vbl_done
;banks.c:66: }
	jr	00102$
___str_2:
	.ascii "Program Start..."
	.db 0x0a
	.db 0x00
___str_4:
	.db 0x00
___str_5:
	.ascii "Var0 = %u is unbanked"
	.db 0x00
___str_6:
	.ascii "Var1 = %u in bank %u"
	.db 0x0a
	.db 0x00
___str_7:
	.ascii "Var2 = %u in bank %u"
	.db 0x0a
	.db 0x00
___str_8:
	.ascii "Var3 = %u in bank %u"
	.db 0x0a
	.db 0x00
___str_9:
	.ascii "Var4 = %u in bank %u"
	.db 0x0a
	.db 0x00
___str_12:
	.db 0x0a
	.ascii "The End..."
	.db 0x00
	.area _CODE
	.area _CABS (ABS)
