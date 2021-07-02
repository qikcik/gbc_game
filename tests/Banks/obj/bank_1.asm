;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.7 #12016 (MINGW64)
;--------------------------------------------------------
	.module bank_1
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _wait_vbl_done
	.globl _joypad
	.globl _frameIndex
	.globl _player
	.globl b_bank1_gameloop
	.globl _bank1_gameloop
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA_1
_player::
	.ds 4
_frameIndex::
	.ds 1
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
;./src/bank_1.c:84: UINT8 frameIndex = 0;
	ld	hl, #_frameIndex
	ld	(hl), #0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;./src/bank_1.c:85: void bank1_gameloop() BANKED
;	---------------------------------
; Function bank1_gameloop
; ---------------------------------
	b_bank1_gameloop	= 0
_bank1_gameloop::
	add	sp, #-2
;D:/projekty/gbc_game/!toolchain/gbdk_win/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x00
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x02
;D:/projekty/gbc_game/!toolchain/gbdk_win/include/gb/gb.h:1050: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 0x0003)
	ld	(hl), #0x00
	ld	hl, #(_shadow_OAM + 0x0007)
	ld	(hl), #0x00
;./src/bank_1.c:37: player.position.x = 8;
	ld	hl, #(_player + 0x0002)
	ld	(hl), #0x08
;./src/bank_1.c:38: player.position.y = 0;
	ld	hl, #(_player + 0x0003)
	ld	(hl), #0x00
;./src/bank_1.c:40: player.processedAction = 0;
	ld	hl, #_player
	ld	(hl), #0x00
;./src/bank_1.c:41: player.actionTransition = 0;
	ld	hl, #(_player + 0x0001)
	ld	(hl), #0x00
;./src/bank_1.c:89: while(TRUE)
00102$:
;./src/bank_1.c:91: frameIndex++;
	ld	hl, #_frameIndex
	inc	(hl)
;./src/bank_1.c:47: if(!player.processedAction)
	ld	a, (#_player + 0)
	or	a, a
	jr	NZ, 00113$
;./src/bank_1.c:49: player.processedAction = joypad();
	call	_joypad
	ld	a, e
	ld	(#_player),a
;./src/bank_1.c:50: if(player.processedAction)
	or	a, a
	jr	Z, 00113$
;./src/bank_1.c:52: player.actionTransition = PLAYER_TRANSITION_MAX;
	ld	hl, #(_player + 0x0001)
	ld	(hl), #0x08
00113$:
;./src/bank_1.c:55: if(player.actionTransition != 0)
	ld	a, (#(_player + 0x0001) + 0)
	or	a, a
	jr	Z, 00130$
;./src/bank_1.c:57: switch(player.processedAction)
	ld	a, (#_player + 0)
	cp	a, #0x01
	jr	Z, 00122$
	cp	a, #0x02
	jr	Z, 00116$
	cp	a, #0x04
	jr	Z, 00115$
	sub	a, #0x08
	jr	NZ, 00128$
;./src/bank_1.c:60: player.position.y += PLAYER_SINGLE_MOVE / PLAYER_TRANSITION_MAX ;
	ld	a, (#(_player + 0x0003) + 0)
	add	a, #0x02
	ld	(#(_player + 0x0003)),a
;./src/bank_1.c:61: break;
	jr	00128$
;./src/bank_1.c:62: case J_UP:
00115$:
;./src/bank_1.c:63: player.position.y -= PLAYER_SINGLE_MOVE / PLAYER_TRANSITION_MAX ;
	ld	a, (#(_player + 0x0003) + 0)
	dec	a
	dec	a
	ld	(#(_player + 0x0003)),a
;./src/bank_1.c:64: break;
	jr	00128$
;./src/bank_1.c:65: case J_LEFT:
00116$:
;./src/bank_1.c:66: player.position.x -= PLAYER_SINGLE_MOVE / PLAYER_TRANSITION_MAX ;
	ld	a, (#(_player + 0x0002) + 0)
	dec	a
	dec	a
	ld	(#(_player + 0x0002)),a
;D:/projekty/gbc_game/!toolchain/gbdk_win/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x00
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x02
;D:/projekty/gbc_game/!toolchain/gbdk_win/include/gb/gb.h:1050: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 0x0003)
	ld	(hl), #0x00
	ld	hl, #(_shadow_OAM + 0x0007)
	ld	(hl), #0x00
;./src/bank_1.c:68: break;
	jr	00128$
;./src/bank_1.c:69: case J_RIGHT: 
00122$:
;./src/bank_1.c:70: player.position.x += PLAYER_SINGLE_MOVE / PLAYER_TRANSITION_MAX ;
	ld	a, (#(_player + 0x0002) + 0)
	add	a, #0x02
	ld	(#(_player + 0x0002)),a
;D:/projekty/gbc_game/!toolchain/gbdk_win/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x02
	ld	hl, #(_shadow_OAM + 0x0006)
	ld	(hl), #0x00
;D:/projekty/gbc_game/!toolchain/gbdk_win/include/gb/gb.h:1050: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 0x0003)
	ld	(hl), #0x20
	ld	hl, #(_shadow_OAM + 0x0007)
	ld	(hl), #0x20
;./src/bank_1.c:73: }
00128$:
;./src/bank_1.c:74: player.actionTransition--;
	ld	a, (#(_player + 0x0001) + 0)
	dec	a
	ld	(#(_player + 0x0001)),a
	jr	00131$
00130$:
;./src/bank_1.c:76: else player.processedAction = FALSE;
	ld	hl, #_player
	ld	(hl), #0x00
00131$:
;./src/bank_1.c:79: move_sprite(0,player.position.x,player.position.y);
	ld	hl, #(_player + 0x0003)
	ld	c, (hl)
	ld	hl, #(_player + 0x0002)
	ld	b, (hl)
;D:/projekty/gbc_game/!toolchain/gbdk_win/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;D:/projekty/gbc_game/!toolchain/gbdk_win/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
;./src/bank_1.c:80: move_sprite(1,player.position.x+8,player.position.y);
	ld	a, (#(_player + 0x0003) + 0)
	ldhl	sp,	#0
	ld	(hl), a
	ld	a, (#(_player + 0x0002) + 0)
	add	a, #0x08
	ldhl	sp,	#1
	ld	(hl), a
;D:/projekty/gbc_game/!toolchain/gbdk_win/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
;D:/projekty/gbc_game/!toolchain/gbdk_win/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ld	de, #(_shadow_OAM + 0x0004)
	dec	hl
	ld	a, (hl)
	ld	(de), a
	ld	de, #(_shadow_OAM + 0x0005)
	inc	hl
	ld	a, (hl)
	ld	(de), a
;./src/bank_1.c:95: wait_vbl_done();
	call	_wait_vbl_done
	jp	00102$
;./src/bank_1.c:97: }
	add	sp, #2
	ret
	.area _CODE
	.area _CABS (ABS)
