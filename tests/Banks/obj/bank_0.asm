;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.7 #12016 (MINGW64)
;--------------------------------------------------------
	.module bank_0
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _set_sprite_data
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _spriteTiles
	.globl _backgroundMap
	.globl _backgroundTiles
	.globl b_bank0_loadData
	.globl _bank0_loadData
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA_0
_backgroundTiles::
	.ds 128
_backgroundMap::
	.ds 360
_spriteTiles::
	.ds 288
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
;./src/../data/backgroundTiles.c:26: unsigned char backgroundTiles[] =
	ld	hl, #_backgroundTiles
	ld	(hl), #0xff
	ld	hl, #(_backgroundTiles + 0x0001)
	ld	(hl), #0x00
	ld	hl, #(_backgroundTiles + 0x0002)
	ld	(hl), #0x80
	ld	hl, #(_backgroundTiles + 0x0003)
	ld	(hl), #0x7f
	ld	hl, #(_backgroundTiles + 0x0004)
	ld	(hl), #0x80
	ld	hl, #(_backgroundTiles + 0x0005)
	ld	(hl), #0x7f
	ld	hl, #(_backgroundTiles + 0x0006)
	ld	(hl), #0x80
	ld	hl, #(_backgroundTiles + 0x0007)
	ld	(hl), #0x7f
	ld	hl, #(_backgroundTiles + 0x0008)
	ld	(hl), #0x80
	ld	hl, #(_backgroundTiles + 0x0009)
	ld	(hl), #0x7f
	ld	hl, #(_backgroundTiles + 0x000a)
	ld	(hl), #0x80
	ld	hl, #(_backgroundTiles + 0x000b)
	ld	(hl), #0x7f
	ld	hl, #(_backgroundTiles + 0x000c)
	ld	(hl), #0x80
	ld	hl, #(_backgroundTiles + 0x000d)
	ld	(hl), #0x7f
	ld	hl, #(_backgroundTiles + 0x000e)
	ld	(hl), #0x80
	ld	hl, #(_backgroundTiles + 0x000f)
	ld	(hl), #0x7f
	ld	hl, #(_backgroundTiles + 0x0010)
	ld	(hl), #0xff
	ld	hl, #(_backgroundTiles + 0x0011)
	ld	(hl), #0x00
	ld	hl, #(_backgroundTiles + 0x0012)
	ld	(hl), #0x01
	ld	hl, #(_backgroundTiles + 0x0013)
	ld	(hl), #0xfe
	ld	hl, #(_backgroundTiles + 0x0014)
	ld	(hl), #0x01
	ld	hl, #(_backgroundTiles + 0x0015)
	ld	(hl), #0xfe
	ld	hl, #(_backgroundTiles + 0x0016)
	ld	(hl), #0x01
	ld	hl, #(_backgroundTiles + 0x0017)
	ld	(hl), #0xfe
	ld	hl, #(_backgroundTiles + 0x0018)
	ld	(hl), #0x01
	ld	hl, #(_backgroundTiles + 0x0019)
	ld	(hl), #0xfe
	ld	hl, #(_backgroundTiles + 0x001a)
	ld	(hl), #0x01
	ld	hl, #(_backgroundTiles + 0x001b)
	ld	(hl), #0xfe
	ld	hl, #(_backgroundTiles + 0x001c)
	ld	(hl), #0x01
	ld	hl, #(_backgroundTiles + 0x001d)
	ld	(hl), #0xfe
	ld	hl, #(_backgroundTiles + 0x001e)
	ld	(hl), #0x01
	ld	hl, #(_backgroundTiles + 0x001f)
	ld	(hl), #0xfe
	ld	hl, #(_backgroundTiles + 0x0020)
	ld	(hl), #0x01
	ld	hl, #(_backgroundTiles + 0x0021)
	ld	(hl), #0xfe
	ld	hl, #(_backgroundTiles + 0x0022)
	ld	(hl), #0x01
	ld	hl, #(_backgroundTiles + 0x0023)
	ld	(hl), #0xfe
	ld	hl, #(_backgroundTiles + 0x0024)
	ld	(hl), #0x01
	ld	hl, #(_backgroundTiles + 0x0025)
	ld	(hl), #0xfe
	ld	hl, #(_backgroundTiles + 0x0026)
	ld	(hl), #0x01
	ld	hl, #(_backgroundTiles + 0x0027)
	ld	(hl), #0xfe
	ld	hl, #(_backgroundTiles + 0x0028)
	ld	(hl), #0x01
	ld	hl, #(_backgroundTiles + 0x0029)
	ld	(hl), #0xfe
	ld	hl, #(_backgroundTiles + 0x002a)
	ld	(hl), #0x01
	ld	hl, #(_backgroundTiles + 0x002b)
	ld	(hl), #0xfe
	ld	hl, #(_backgroundTiles + 0x002c)
	ld	(hl), #0x01
	ld	hl, #(_backgroundTiles + 0x002d)
	ld	(hl), #0xfe
	ld	hl, #(_backgroundTiles + 0x002e)
	ld	(hl), #0xff
	ld	hl, #(_backgroundTiles + 0x002f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundTiles + 0x0030)
	ld	(hl), #0x80
	ld	hl, #(_backgroundTiles + 0x0031)
	ld	(hl), #0x7f
	ld	hl, #(_backgroundTiles + 0x0032)
	ld	(hl), #0x80
	ld	hl, #(_backgroundTiles + 0x0033)
	ld	(hl), #0x7f
	ld	hl, #(_backgroundTiles + 0x0034)
	ld	(hl), #0x80
	ld	hl, #(_backgroundTiles + 0x0035)
	ld	(hl), #0x7f
	ld	hl, #(_backgroundTiles + 0x0036)
	ld	(hl), #0x80
	ld	hl, #(_backgroundTiles + 0x0037)
	ld	(hl), #0x7f
	ld	hl, #(_backgroundTiles + 0x0038)
	ld	(hl), #0x80
	ld	hl, #(_backgroundTiles + 0x0039)
	ld	(hl), #0x7f
	ld	hl, #(_backgroundTiles + 0x003a)
	ld	(hl), #0x80
	ld	hl, #(_backgroundTiles + 0x003b)
	ld	(hl), #0x7f
	ld	hl, #(_backgroundTiles + 0x003c)
	ld	(hl), #0x80
	ld	hl, #(_backgroundTiles + 0x003d)
	ld	(hl), #0x7f
	ld	hl, #(_backgroundTiles + 0x003e)
	ld	(hl), #0xff
	ld	hl, #(_backgroundTiles + 0x003f)
	ld	(hl), #0x00
	ld	hl, #(_backgroundTiles + 0x0040)
	ld	(hl), #0x00
	ld	hl, #(_backgroundTiles + 0x0041)
	ld	(hl), #0xff
	ld	hl, #(_backgroundTiles + 0x0042)
	ld	(hl), #0x7f
	ld	hl, #(_backgroundTiles + 0x0043)
	ld	(hl), #0x80
	ld	hl, #(_backgroundTiles + 0x0044)
	ld	(hl), #0x7f
	ld	hl, #(_backgroundTiles + 0x0045)
	ld	(hl), #0x80
	ld	hl, #(_backgroundTiles + 0x0046)
	ld	(hl), #0x7f
	ld	hl, #(_backgroundTiles + 0x0047)
	ld	(hl), #0x80
	ld	hl, #(_backgroundTiles + 0x0048)
	ld	(hl), #0x7f
	ld	hl, #(_backgroundTiles + 0x0049)
	ld	(hl), #0x80
	ld	hl, #(_backgroundTiles + 0x004a)
	ld	(hl), #0x7f
	ld	hl, #(_backgroundTiles + 0x004b)
	ld	(hl), #0x80
	ld	hl, #(_backgroundTiles + 0x004c)
	ld	(hl), #0x7f
	ld	hl, #(_backgroundTiles + 0x004d)
	ld	(hl), #0x80
	ld	hl, #(_backgroundTiles + 0x004e)
	ld	(hl), #0x7f
	ld	hl, #(_backgroundTiles + 0x004f)
	ld	(hl), #0x80
	ld	hl, #(_backgroundTiles + 0x0050)
	ld	(hl), #0x00
	ld	hl, #(_backgroundTiles + 0x0051)
	ld	(hl), #0xff
	ld	hl, #(_backgroundTiles + 0x0052)
	ld	(hl), #0xfe
	ld	hl, #(_backgroundTiles + 0x0053)
	ld	(hl), #0x01
	ld	hl, #(_backgroundTiles + 0x0054)
	ld	(hl), #0xfe
	ld	hl, #(_backgroundTiles + 0x0055)
	ld	(hl), #0x01
	ld	hl, #(_backgroundTiles + 0x0056)
	ld	(hl), #0xfe
	ld	hl, #(_backgroundTiles + 0x0057)
	ld	(hl), #0x01
	ld	hl, #(_backgroundTiles + 0x0058)
	ld	(hl), #0xfe
	ld	hl, #(_backgroundTiles + 0x0059)
	ld	(hl), #0x01
	ld	hl, #(_backgroundTiles + 0x005a)
	ld	(hl), #0xfe
	ld	hl, #(_backgroundTiles + 0x005b)
	ld	(hl), #0x01
	ld	hl, #(_backgroundTiles + 0x005c)
	ld	(hl), #0xfe
	ld	hl, #(_backgroundTiles + 0x005d)
	ld	(hl), #0x01
	ld	hl, #(_backgroundTiles + 0x005e)
	ld	(hl), #0xfe
	ld	hl, #(_backgroundTiles + 0x005f)
	ld	(hl), #0x01
	ld	hl, #(_backgroundTiles + 0x0060)
	ld	(hl), #0xfe
	ld	hl, #(_backgroundTiles + 0x0061)
	ld	(hl), #0x01
	ld	hl, #(_backgroundTiles + 0x0062)
	ld	(hl), #0xfe
	ld	hl, #(_backgroundTiles + 0x0063)
	ld	(hl), #0x01
	ld	hl, #(_backgroundTiles + 0x0064)
	ld	(hl), #0xfe
	ld	hl, #(_backgroundTiles + 0x0065)
	ld	(hl), #0x01
	ld	hl, #(_backgroundTiles + 0x0066)
	ld	(hl), #0xfe
	ld	hl, #(_backgroundTiles + 0x0067)
	ld	(hl), #0x01
	ld	hl, #(_backgroundTiles + 0x0068)
	ld	(hl), #0xfe
	ld	hl, #(_backgroundTiles + 0x0069)
	ld	(hl), #0x01
	ld	hl, #(_backgroundTiles + 0x006a)
	ld	(hl), #0xfe
	ld	hl, #(_backgroundTiles + 0x006b)
	ld	(hl), #0x01
	ld	hl, #(_backgroundTiles + 0x006c)
	ld	(hl), #0xfe
	ld	hl, #(_backgroundTiles + 0x006d)
	ld	(hl), #0x01
	ld	hl, #(_backgroundTiles + 0x006e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundTiles + 0x006f)
	ld	(hl), #0xff
	ld	hl, #(_backgroundTiles + 0x0070)
	ld	(hl), #0x7f
	ld	hl, #(_backgroundTiles + 0x0071)
	ld	(hl), #0x80
	ld	hl, #(_backgroundTiles + 0x0072)
	ld	(hl), #0x7f
	ld	hl, #(_backgroundTiles + 0x0073)
	ld	(hl), #0x80
	ld	hl, #(_backgroundTiles + 0x0074)
	ld	(hl), #0x7f
	ld	hl, #(_backgroundTiles + 0x0075)
	ld	(hl), #0x80
	ld	hl, #(_backgroundTiles + 0x0076)
	ld	(hl), #0x7f
	ld	hl, #(_backgroundTiles + 0x0077)
	ld	(hl), #0x80
	ld	hl, #(_backgroundTiles + 0x0078)
	ld	(hl), #0x7f
	ld	hl, #(_backgroundTiles + 0x0079)
	ld	(hl), #0x80
	ld	hl, #(_backgroundTiles + 0x007a)
	ld	(hl), #0x7f
	ld	hl, #(_backgroundTiles + 0x007b)
	ld	(hl), #0x80
	ld	hl, #(_backgroundTiles + 0x007c)
	ld	(hl), #0x7f
	ld	hl, #(_backgroundTiles + 0x007d)
	ld	(hl), #0x80
	ld	hl, #(_backgroundTiles + 0x007e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundTiles + 0x007f)
	ld	(hl), #0xff
;./src/../data/backgroundMap.c:25: unsigned char backgroundMap[] =
	ld	hl, #_backgroundMap
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x0001)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x0002)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x0003)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x0004)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x0005)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x0006)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x0007)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x0008)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x0009)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x000a)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x000b)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x000c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x000d)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x000e)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x000f)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x0010)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x0011)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x0012)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x0013)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x0014)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x0015)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x0016)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x0017)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x0018)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x0019)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x001a)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x001b)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x001c)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x001d)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x001e)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x001f)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x0020)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x0021)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x0022)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x0023)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x0024)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x0025)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x0026)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x0027)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x0028)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x0029)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x002a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x002b)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x002c)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x002d)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x002e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x002f)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x0030)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x0031)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x0032)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x0033)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x0034)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x0035)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x0036)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x0037)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x0038)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x0039)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x003a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x003b)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x003c)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x003d)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x003e)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x003f)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x0040)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x0041)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x0042)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x0043)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x0044)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x0045)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x0046)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x0047)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x0048)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x0049)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x004a)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x004b)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x004c)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x004d)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x004e)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x004f)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x0050)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x0051)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x0052)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x0053)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x0054)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x0055)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x0056)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x0057)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x0058)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x0059)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x005a)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x005b)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x005c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x005d)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x005e)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x005f)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x0060)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x0061)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x0062)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x0063)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x0064)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x0065)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x0066)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x0067)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x0068)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x0069)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x006a)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x006b)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x006c)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x006d)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x006e)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x006f)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x0070)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x0071)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x0072)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x0073)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x0074)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x0075)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x0076)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x0077)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x0078)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x0079)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x007a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x007b)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x007c)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x007d)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x007e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x007f)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x0080)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x0081)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x0082)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x0083)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x0084)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x0085)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x0086)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x0087)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x0088)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x0089)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x008a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x008b)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x008c)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x008d)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x008e)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x008f)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x0090)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x0091)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x0092)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x0093)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x0094)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x0095)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x0096)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x0097)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x0098)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x0099)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x009a)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x009b)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x009c)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x009d)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x009e)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x009f)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x00a0)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x00a1)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x00a2)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x00a3)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x00a4)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x00a5)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x00a6)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x00a7)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x00a8)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x00a9)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x00aa)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x00ab)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x00ac)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x00ad)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x00ae)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x00af)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x00b0)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x00b1)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x00b2)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x00b3)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x00b4)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x00b5)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x00b6)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x00b7)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x00b8)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x00b9)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x00ba)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x00bb)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x00bc)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x00bd)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x00be)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x00bf)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x00c0)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x00c1)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x00c2)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x00c3)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x00c4)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x00c5)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x00c6)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x00c7)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x00c8)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x00c9)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x00ca)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x00cb)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x00cc)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x00cd)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x00ce)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x00cf)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x00d0)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x00d1)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x00d2)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x00d3)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x00d4)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x00d5)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x00d6)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x00d7)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x00d8)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x00d9)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x00da)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x00db)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x00dc)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x00dd)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x00de)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x00df)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x00e0)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x00e1)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x00e2)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x00e3)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x00e4)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x00e5)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x00e6)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x00e7)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x00e8)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x00e9)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x00ea)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x00eb)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x00ec)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x00ed)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x00ee)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x00ef)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x00f0)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x00f1)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x00f2)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x00f3)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x00f4)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x00f5)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x00f6)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x00f7)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x00f8)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x00f9)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x00fa)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x00fb)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x00fc)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x00fd)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x00fe)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x00ff)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x0100)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x0101)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x0102)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x0103)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x0104)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x0105)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x0106)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x0107)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x0108)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x0109)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x010a)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x010b)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x010c)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x010d)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x010e)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x010f)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x0110)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x0111)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x0112)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x0113)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x0114)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x0115)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x0116)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x0117)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x0118)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x0119)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x011a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x011b)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x011c)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x011d)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x011e)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x011f)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x0120)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x0121)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x0122)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x0123)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x0124)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x0125)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x0126)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x0127)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x0128)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x0129)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x012a)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x012b)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x012c)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x012d)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x012e)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x012f)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x0130)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x0131)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x0132)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x0133)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x0134)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x0135)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x0136)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x0137)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x0138)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x0139)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x013a)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x013b)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x013c)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x013d)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x013e)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x013f)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x0140)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x0141)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x0142)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x0143)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x0144)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x0145)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x0146)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x0147)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x0148)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x0149)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x014a)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x014b)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x014c)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x014d)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x014e)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x014f)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x0150)
	ld	(hl), #0x00
	ld	hl, #(_backgroundMap + 0x0151)
	ld	(hl), #0x01
	ld	hl, #(_backgroundMap + 0x0152)
	ld	(hl), #0x04
	ld	hl, #(_backgroundMap + 0x0153)
	ld	(hl), #0x05
	ld	hl, #(_backgroundMap + 0x0154)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x0155)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x0156)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x0157)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x0158)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x0159)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x015a)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x015b)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x015c)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x015d)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x015e)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x015f)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x0160)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x0161)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x0162)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x0163)
	ld	(hl), #0x06
	ld	hl, #(_backgroundMap + 0x0164)
	ld	(hl), #0x03
	ld	hl, #(_backgroundMap + 0x0165)
	ld	(hl), #0x02
	ld	hl, #(_backgroundMap + 0x0166)
	ld	(hl), #0x07
	ld	hl, #(_backgroundMap + 0x0167)
	ld	(hl), #0x06
;./src/../data/spriteTiles.c:26: unsigned char spriteTiles[] =
	ld	hl, #_spriteTiles
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0001)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0002)
	ld	(hl), #0x03
	ld	hl, #(_spriteTiles + 0x0003)
	ld	(hl), #0x03
	ld	hl, #(_spriteTiles + 0x0004)
	ld	(hl), #0x51
	ld	hl, #(_spriteTiles + 0x0005)
	ld	(hl), #0x53
	ld	hl, #(_spriteTiles + 0x0006)
	ld	(hl), #0x73
	ld	hl, #(_spriteTiles + 0x0007)
	ld	(hl), #0x73
	ld	hl, #(_spriteTiles + 0x0008)
	ld	(hl), #0x21
	ld	hl, #(_spriteTiles + 0x0009)
	ld	(hl), #0x21
	ld	hl, #(_spriteTiles + 0x000a)
	ld	(hl), #0x2f
	ld	hl, #(_spriteTiles + 0x000b)
	ld	(hl), #0x20
	ld	hl, #(_spriteTiles + 0x000c)
	ld	(hl), #0x3f
	ld	hl, #(_spriteTiles + 0x000d)
	ld	(hl), #0x30
	ld	hl, #(_spriteTiles + 0x000e)
	ld	(hl), #0x27
	ld	hl, #(_spriteTiles + 0x000f)
	ld	(hl), #0x20
	ld	hl, #(_spriteTiles + 0x0010)
	ld	(hl), #0x27
	ld	hl, #(_spriteTiles + 0x0011)
	ld	(hl), #0x20
	ld	hl, #(_spriteTiles + 0x0012)
	ld	(hl), #0x27
	ld	hl, #(_spriteTiles + 0x0013)
	ld	(hl), #0x20
	ld	hl, #(_spriteTiles + 0x0014)
	ld	(hl), #0x27
	ld	hl, #(_spriteTiles + 0x0015)
	ld	(hl), #0x20
	ld	hl, #(_spriteTiles + 0x0016)
	ld	(hl), #0x20
	ld	hl, #(_spriteTiles + 0x0017)
	ld	(hl), #0x27
	ld	hl, #(_spriteTiles + 0x0018)
	ld	(hl), #0x20
	ld	hl, #(_spriteTiles + 0x0019)
	ld	(hl), #0x27
	ld	hl, #(_spriteTiles + 0x001a)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x001b)
	ld	(hl), #0x07
	ld	hl, #(_spriteTiles + 0x001c)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x001d)
	ld	(hl), #0x04
	ld	hl, #(_spriteTiles + 0x001e)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x001f)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0020)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0021)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0022)
	ld	(hl), #0xc0
	ld	hl, #(_spriteTiles + 0x0023)
	ld	(hl), #0xc0
	ld	hl, #(_spriteTiles + 0x0024)
	ld	(hl), #0x80
	ld	hl, #(_spriteTiles + 0x0025)
	ld	(hl), #0xc0
	ld	hl, #(_spriteTiles + 0x0026)
	ld	(hl), #0xd2
	ld	hl, #(_spriteTiles + 0x0027)
	ld	(hl), #0xd2
	ld	hl, #(_spriteTiles + 0x0028)
	ld	(hl), #0x9e
	ld	hl, #(_spriteTiles + 0x0029)
	ld	(hl), #0x9e
	ld	hl, #(_spriteTiles + 0x002a)
	ld	(hl), #0xfe
	ld	hl, #(_spriteTiles + 0x002b)
	ld	(hl), #0x1e
	ld	hl, #(_spriteTiles + 0x002c)
	ld	(hl), #0xfe
	ld	hl, #(_spriteTiles + 0x002d)
	ld	(hl), #0x1e
	ld	hl, #(_spriteTiles + 0x002e)
	ld	(hl), #0xfe
	ld	hl, #(_spriteTiles + 0x002f)
	ld	(hl), #0x1e
	ld	hl, #(_spriteTiles + 0x0030)
	ld	(hl), #0xfe
	ld	hl, #(_spriteTiles + 0x0031)
	ld	(hl), #0x1e
	ld	hl, #(_spriteTiles + 0x0032)
	ld	(hl), #0xfe
	ld	hl, #(_spriteTiles + 0x0033)
	ld	(hl), #0x1e
	ld	hl, #(_spriteTiles + 0x0034)
	ld	(hl), #0xfe
	ld	hl, #(_spriteTiles + 0x0035)
	ld	(hl), #0x1e
	ld	hl, #(_spriteTiles + 0x0036)
	ld	(hl), #0x1e
	ld	hl, #(_spriteTiles + 0x0037)
	ld	(hl), #0xfe
	ld	hl, #(_spriteTiles + 0x0038)
	ld	(hl), #0x1e
	ld	hl, #(_spriteTiles + 0x0039)
	ld	(hl), #0xfe
	ld	hl, #(_spriteTiles + 0x003a)
	ld	(hl), #0x0c
	ld	hl, #(_spriteTiles + 0x003b)
	ld	(hl), #0xec
	ld	hl, #(_spriteTiles + 0x003c)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x003d)
	ld	(hl), #0x20
	ld	hl, #(_spriteTiles + 0x003e)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x003f)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0040)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0041)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0042)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0043)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0044)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0045)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0046)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0047)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0048)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0049)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x004a)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x004b)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x004c)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x004d)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x004e)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x004f)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0050)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0051)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0052)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0053)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0054)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0055)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0056)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0057)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0058)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0059)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x005a)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x005b)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x005c)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x005d)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x005e)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x005f)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0060)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0061)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0062)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0063)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0064)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0065)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0066)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0067)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0068)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0069)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x006a)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x006b)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x006c)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x006d)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x006e)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x006f)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0070)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0071)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0072)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0073)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0074)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0075)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0076)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0077)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0078)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0079)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x007a)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x007b)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x007c)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x007d)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x007e)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x007f)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0080)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0081)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0082)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0083)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0084)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0085)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0086)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0087)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0088)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0089)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x008a)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x008b)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x008c)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x008d)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x008e)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x008f)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0090)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0091)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0092)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0093)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0094)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0095)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0096)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0097)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0098)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0099)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x009a)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x009b)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x009c)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x009d)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x009e)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x009f)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00a0)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00a1)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00a2)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00a3)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00a4)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00a5)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00a6)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00a7)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00a8)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00a9)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00aa)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00ab)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00ac)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00ad)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00ae)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00af)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00b0)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00b1)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00b2)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00b3)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00b4)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00b5)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00b6)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00b7)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00b8)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00b9)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00ba)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00bb)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00bc)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00bd)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00be)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00bf)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00c0)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00c1)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00c2)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00c3)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00c4)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00c5)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00c6)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00c7)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00c8)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00c9)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00ca)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00cb)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00cc)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00cd)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00ce)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00cf)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00d0)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00d1)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00d2)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00d3)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00d4)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00d5)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00d6)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00d7)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00d8)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00d9)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00da)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00db)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00dc)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00dd)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00de)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00df)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00e0)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00e1)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00e2)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00e3)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00e4)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00e5)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00e6)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00e7)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00e8)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00e9)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00ea)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00eb)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00ec)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00ed)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00ee)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00ef)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00f0)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00f1)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00f2)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00f3)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00f4)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00f5)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00f6)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00f7)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00f8)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00f9)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00fa)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00fb)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00fc)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00fd)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00fe)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x00ff)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0100)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0101)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0102)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0103)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0104)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0105)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0106)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0107)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0108)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0109)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x010a)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x010b)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x010c)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x010d)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x010e)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x010f)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0110)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0111)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0112)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0113)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0114)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0115)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0116)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0117)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0118)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x0119)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x011a)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x011b)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x011c)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x011d)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x011e)
	ld	(hl), #0x00
	ld	hl, #(_spriteTiles + 0x011f)
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
;./src/bank_0.c:9: void bank0_loadData() BANKED
;	---------------------------------
; Function bank0_loadData
; ---------------------------------
	b_bank0_loadData	= 0
_bank0_loadData::
;./src/bank_0.c:11: set_sprite_data(0,8,spriteTiles);
	ld	hl, #_spriteTiles
	push	hl
	ld	a, #0x08
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_sprite_data
	add	sp, #4
;./src/bank_0.c:13: set_bkg_data(0,8,backgroundTiles);
	ld	hl, #_backgroundTiles
	push	hl
	ld	a, #0x08
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_bkg_data
	add	sp, #4
;./src/bank_0.c:14: set_bkg_tiles(0,0,20,18,backgroundMap);
	ld	hl, #_backgroundMap
	push	hl
	ld	de, #0x1214
	push	de
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_bkg_tiles
	add	sp, #6
;./src/bank_0.c:15: }
	ret
	.area _CODE
	.area _CABS (ABS)
