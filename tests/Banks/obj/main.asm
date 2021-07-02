;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.7 #12016 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl b_bank1_gameloop
	.globl _bank1_gameloop
	.globl b_bank0_loadData
	.globl _bank0_loadData
	.globl _set_sprite_palette
	.globl _set_bkg_palette
	.globl _spritepalette
	.globl _backgroundpalette
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
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;./src/main.c:42: void main()
;	---------------------------------
; Function main
; ---------------------------------
_main::
;./src/./utils/bank.h:5: ENABLE_RAM_MBC1;
	ld	hl, #0x0000
	ld	(hl), #0x0a
;./src/./utils/bank.h:6: SWITCH_4_32_MODE_MBC1;
	ld	h, #0x60
	ld	(hl), #0x01
;./src/main.c:46: set_bkg_palette(0,1,&backgroundpalette[0]);
	ld	hl, #_backgroundpalette
	push	hl
	ld	a, #0x01
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_bkg_palette
	add	sp, #4
;./src/main.c:47: set_sprite_palette(0,3,&spritepalette[0]);
	ld	hl, #_spritepalette
	push	hl
	ld	a, #0x03
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_sprite_palette
	add	sp, #4
;./src/main.c:49: SPRITES_8x16;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x04
	ldh	(_LCDC_REG+0),a
;./src/main.c:51: bank0_loadData();
	ld	e, #b_bank0_loadData
	ld	hl, #_bank0_loadData
	call	___sdcc_bcall_ehl
;./src/main.c:54: SHOW_BKG;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x01
	ldh	(_LCDC_REG+0),a
;./src/main.c:55: SHOW_SPRITES;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x02
	ldh	(_LCDC_REG+0),a
;./src/main.c:56: DISPLAY_ON;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x80
	ldh	(_LCDC_REG+0),a
;./src/main.c:58: bank1_gameloop();
	ld	e, #b_bank1_gameloop
	ld	hl, #_bank1_gameloop
;./src/main.c:59: }
	jp  ___sdcc_bcall_ehl
_backgroundpalette:
	.dw #0x17bc
	.dw #0x22e7
	.dw #0x19c4
	.dw #0x14e0
	.dw #0x17bc
	.dw #0x22e7
	.dw #0x19c4
	.dw #0x14e0
	.dw #0x17bc
	.dw #0x22e7
	.dw #0x19c4
	.dw #0x14e0
	.dw #0x17bc
	.dw #0x22e7
	.dw #0x19c4
	.dw #0x14e0
_spritepalette:
	.dw #0x17bc
	.dw #0x0114
	.dw #0x6a40
	.dw #0x0c63
	.dw #0x17bc
	.dw #0x22e7
	.dw #0x19c4
	.dw #0x14e0
	.dw #0x17bc
	.dw #0x22e7
	.dw #0x19c4
	.dw #0x14e0
	.area _CODE
	.area _CABS (ABS)
