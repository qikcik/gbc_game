;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.7 #12016 (MINGW64)
;--------------------------------------------------------
	.module banks_new
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _set_RAM_bank2
	.globl _set_RAM_bank1
	.globl _set_ROM_bank2
	.globl _set_ROM_bank1
	.globl _puts
	.globl _printf
	.globl _putchar
	.globl _hello1
	.globl _hello2
	.globl _addendum1_ram
	.globl _hello1_ram
	.globl _addendum_ptr
	.globl _addendum3_ram
	.globl _addendum2_ram
	.globl _hello2_ram
	.globl _addendum0
	.globl _data
	.globl _hello0
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
___current_ram_bank	=	0x00fc
___current_rom_bank	=	0x00fd
___dummy_variable	=	0x00fe
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_data::
	.ds 20
_addendum0::
	.ds 2
;--------------------------------------------------------
; DATA_2 ram data
;--------------------------------------------------------
	.area _DATA_2
_hello2_ram::
	.ds 20
_addendum2_ram::
	.ds 2
_addendum3_ram::
	.ds 2
_addendum_ptr::
	.ds 4
;--------------------------------------------------------
; DATA_1 ram data
;--------------------------------------------------------
	.area _DATA_1
_hello1_ram::
	.ds 20
_addendum1_ram::
	.ds 2
;--------------------------------------------------------
; CODE_2 rom data
;--------------------------------------------------------
	.area _CODE_2
_hello2:
	.ascii "hello from CODE_2"
	.db 0x0a
	.db 0x00
;--------------------------------------------------------
; CODE_1 rom data
;--------------------------------------------------------
	.area _CODE_1
_hello1:
	.ascii "hello from CODE_1"
	.db 0x0a
	.db 0x00
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
;banks_new.c:25: char data[20] = "DATA";
	ld	hl, #_data
	ld	(hl), #0x44
	ld	hl, #(_data + 0x0001)
	ld	(hl), #0x41
	ld	hl, #(_data + 0x0002)
	ld	(hl), #0x54
	ld	hl, #(_data + 0x0003)
	ld	(hl), #0x41
	ld	hl, #(_data + 0x0004)
	ld	(hl), #0x00
	ld	hl, #(_data + 0x0005)
	ld	(hl), #0x00
	ld	hl, #(_data + 0x0006)
	ld	(hl), #0x00
	ld	hl, #(_data + 0x0007)
	ld	(hl), #0x00
	ld	hl, #(_data + 0x0008)
	ld	(hl), #0x00
	ld	hl, #(_data + 0x0009)
	ld	(hl), #0x00
	ld	hl, #(_data + 0x000a)
	ld	(hl), #0x00
	ld	hl, #(_data + 0x000b)
	ld	(hl), #0x00
	ld	hl, #(_data + 0x000c)
	ld	(hl), #0x00
	ld	hl, #(_data + 0x000d)
	ld	(hl), #0x00
	ld	hl, #(_data + 0x000e)
	ld	(hl), #0x00
	ld	hl, #(_data + 0x000f)
	ld	(hl), #0x00
	ld	hl, #(_data + 0x0010)
	ld	(hl), #0x00
	ld	hl, #(_data + 0x0011)
	ld	(hl), #0x00
	ld	hl, #(_data + 0x0012)
	ld	(hl), #0x00
	ld	hl, #(_data + 0x0013)
	ld	(hl), #0x00
;banks_new.c:26: int  addendum0 = 1;
	ld	hl, #_addendum0
	ld	(hl), #0x01
	inc	hl
	ld	(hl), #0x00
;banks_new.c:50: DATA_2 int  addendum2_ram = 4;
	call	_set_RAM_bank2
	ld	hl, #_addendum2_ram
	ld	(hl), #0x04
	inc	hl
	ld	(hl), #0x00
;banks_new.c:51: DATA_2 int  addendum3_ram = 8;
	call	_set_RAM_bank2
	ld	hl, #_addendum3_ram
	ld	(hl), #0x08
	inc	hl
	ld	(hl), #0x00
;banks_new.c:56: DATA_2 int * DATA_2 addendum_ptr[2] = {&addendum2_ram, &addendum3_ram};
	call	_set_RAM_bank2
	ld	hl, #_addendum_ptr
	ld	(hl), #<(_addendum2_ram)
	inc	hl
	ld	(hl), #>(_addendum2_ram)
	ld	hl, #(_addendum_ptr + 0x0002)
	ld	(hl), #<(_addendum3_ram)
	inc	hl
	ld	(hl), #>(_addendum3_ram)
;banks_new.c:48: DATA_1 int  addendum1_ram = 2;
	call	_set_RAM_bank1
	ld	hl, #_addendum1_ram
	ld	(hl), #0x02
	inc	hl
	ld	(hl), #0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
;banks_new.c:30: void set_ROM_bank1(void) NONBANKED __preserves_regs(b, c, d, e) { SET_ROM_BANK(1); }
;	---------------------------------
; Function set_ROM_bank1
; ---------------------------------
_set_ROM_bank1::
	ld	a, #0x01
	ldh	(___current_rom_bank+0),a
	ld	a, #0x01
	ldh	(__current_bank+0),a
	ld	hl, #0x2000
	ld	(hl), #0x01
	ret
_hello0:
	.ascii "hello from CODE"
	.db 0x0a
	.db 0x00
;banks_new.c:31: void set_ROM_bank2(void) NONBANKED __preserves_regs(b, c, d, e) { SET_ROM_BANK(2); }
;	---------------------------------
; Function set_ROM_bank2
; ---------------------------------
_set_ROM_bank2::
	ld	a, #0x02
	ldh	(___current_rom_bank+0),a
	ld	a, #0x02
	ldh	(__current_bank+0),a
	ld	hl, #0x2000
	ld	(hl), #0x02
	ret
;banks_new.c:41: void set_RAM_bank1(void) NONBANKED __preserves_regs(b, c, d, e) { SET_RAM_BANK(1); }
;	---------------------------------
; Function set_RAM_bank1
; ---------------------------------
_set_RAM_bank1::
	ld	a, #0x01
	ldh	(___current_ram_bank+0),a
	ld	hl, #0x4000
	ld	(hl), #0x01
	ret
;banks_new.c:42: void set_RAM_bank2(void) NONBANKED __preserves_regs(b, c, d, e) { SET_RAM_BANK(2); }
;	---------------------------------
; Function set_RAM_bank2
; ---------------------------------
_set_RAM_bank2::
	ld	a, #0x02
	ldh	(___current_ram_bank+0),a
	ld	hl, #0x4000
	ld	(hl), #0x02
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;banks_new.c:58: void main() {
;	---------------------------------
; Function main
; ---------------------------------
_main::
	add	sp, #-2
;banks_new.c:62: SET_BANKS(1, 1);
	ld	a, #0x01
	ldh	(___current_rom_bank+0),a
	ld	a, #0x01
	ldh	(__current_bank+0),a
	ld	hl, #0x2000
	ld	(hl), #0x01
	ld	a, #0x01
	ldh	(___current_ram_bank+0),a
	ld	h, #0x40
	ld	(hl), #0x01
;banks_new.c:65: for (INT8 i = 0; (hello0[i]); i++) putchar(hello0[i]);  
	ld	b, #0x00
00119$:
	ld	a, b
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	ld	hl, #_hello0
	add	hl, de
	ld	a, (hl)
	or	a, a
	jr	Z, 00101$
	push	bc
	push	af
	inc	sp
	call	_putchar
	inc	sp
	pop	bc
	inc	b
	jr	00119$
00101$:
;banks_new.c:66: for (INT8 i = 0; (hello1[i]); i++) putchar(hello1[i]);
	ld	c, #0x00
00122$:
	ld	a, c
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	call	_set_ROM_bank1
	ld	hl, #_hello1
	add	hl, de
	ld	a, (hl)
	or	a, a
	jr	Z, 00102$
	push	bc
	push	af
	inc	sp
	call	_putchar
	inc	sp
	pop	bc
	inc	c
	jr	00122$
00102$:
;banks_new.c:67: for (INT8 i = 0; (hello2[i]); i++) putchar(hello2[i]);
	ld	c, #0x00
00125$:
	ld	a, c
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	call	_set_ROM_bank2
	ld	hl, #_hello2
	add	hl, de
	ld	b, (hl)
	call	_set_RAM_bank1
	ld	a, b
	or	a, a
	jr	Z, 00103$
	push	bc
	push	bc
	inc	sp
	call	_putchar
	inc	sp
	pop	bc
	inc	c
	jr	00125$
00103$:
;banks_new.c:70: for (INT8 i = 0; (i < sizeof(hello1)); i++) hello1_ram[i] = hello1[i];
	ld	c, #0x00
00128$:
	ld	a, c
	xor	a, #0x80
	sub	a, #0x93
	jr	NC, 00104$
	ld	a, c
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	push	de
;c
	ld	hl, #_hello1_ram
	add	hl, de
	pop	de
	inc	sp
	inc	sp
	push	hl
	ld	hl, #_hello1
	add	hl, de
	ld	e, l
	ld	d, h
	call	_set_ROM_bank1
	ld	a, (de)
	ld	b, a
	call	_set_RAM_bank1
	pop	hl
	push	hl
	ld	(hl), b
	inc	c
	jr	00128$
00104$:
;banks_new.c:71: for (INT8 i = 0; (i < 4); i++) hello1_ram[i + 11] = data[i];
	ld	c, #0x00
00131$:
	ld	a, c
	xor	a, #0x80
	sub	a, #0x84
	jr	NC, 00105$
	ld	a, c
	add	a, #0x0b
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	ld	hl, #_hello1_ram
	add	hl, de
	ld	a, c
	push	af
	rla
	sbc	a, a
	ld	b, a
	pop	af
	add	a, #<(_data)
	ld	e, a
	ld	a, b
	adc	a, #>(_data)
	ld	d, a
	ld	a, (de)
	ld	(hl), a
	inc	c
	jr	00131$
00105$:
;banks_new.c:72: for (INT8 i = 0; (hello1_ram[i]); i++) putchar(hello1_ram[i]);
	ld	c, #0x00
00134$:
	ld	a, c
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	ld	hl, #_hello1_ram
	add	hl, de
	ld	b, (hl)
	call	_set_RAM_bank2
	ld	a, b
	or	a, a
	jr	Z, 00106$
	push	bc
	push	bc
	inc	sp
	call	_putchar
	inc	sp
	pop	bc
	call	_set_RAM_bank1
	inc	c
	jr	00134$
00106$:
;banks_new.c:75: for (INT8 i = 0; (i < sizeof(hello2)); i++) hello2_ram[i] = hello2[i];
	ld	c, #0x00
00137$:
	ld	a, c
	xor	a, #0x80
	sub	a, #0x93
	jr	NC, 00107$
	ld	a, c
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	push	de
;c
	ld	hl, #_hello2_ram
	add	hl, de
	pop	de
	inc	sp
	inc	sp
	push	hl
	ld	hl, #_hello2
	add	hl, de
	ld	e, l
	ld	d, h
	call	_set_ROM_bank2
	ld	a, (de)
	ld	b, a
	call	_set_RAM_bank2
	pop	hl
	push	hl
	ld	(hl), b
	inc	c
	jr	00137$
00107$:
;banks_new.c:76: for (INT8 i = 0; (i < 4); i++) hello2_ram[i + 11] = data[i];
	ld	c, #0x00
00140$:
	ld	a, c
	xor	a, #0x80
	sub	a, #0x84
	jr	NC, 00108$
	ld	a, c
	add	a, #0x0b
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	ld	hl, #_hello2_ram
	add	hl, de
	ld	a, c
	push	af
	rla
	sbc	a, a
	ld	b, a
	pop	af
	add	a, #<(_data)
	ld	e, a
	ld	a, b
	adc	a, #>(_data)
	ld	d, a
	ld	a, (de)
	ld	(hl), a
	inc	c
	jr	00140$
00108$:
;banks_new.c:77: for (INT8 i = 0; (hello2_ram[i]); i++) putchar(hello2_ram[i]);
	ld	c, #0x00
00143$:
	ld	a, c
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	ld	hl, #_hello2_ram
	add	hl, de
	ld	a, (hl)
	or	a, a
	jr	Z, 00109$
	push	bc
	push	af
	inc	sp
	call	_putchar
	inc	sp
	pop	bc
	call	_set_RAM_bank2
	inc	c
	jr	00143$
00109$:
;banks_new.c:79: printf("once more...\n");
	ld	hl, #___str_2
	push	hl
	call	_puts
	add	sp, #2
;banks_new.c:81: for (INT8 i = 0; (hello0[i]); i++) putchar(hello0[i]);  
	ld	c, #0x00
00146$:
	ld	a, c
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	ld	hl, #_hello0
	add	hl, de
	ld	a, (hl)
	or	a, a
	jr	Z, 00110$
	push	bc
	push	af
	inc	sp
	call	_putchar
	inc	sp
	pop	bc
	inc	c
	jr	00146$
00110$:
;banks_new.c:82: for (INT8 i = 0; (hello1[i]); i++) putchar(hello1[i]);
	ld	c, #0x00
00149$:
	ld	a, c
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	call	_set_ROM_bank1
	ld	hl, #_hello1
	add	hl, de
	ld	a, (hl)
	or	a, a
	jr	Z, 00111$
	push	bc
	push	af
	inc	sp
	call	_putchar
	inc	sp
	pop	bc
	inc	c
	jr	00149$
00111$:
;banks_new.c:83: for (INT8 i = 0; (hello2[i]); i++) putchar(hello2[i]);
	ld	c, #0x00
00152$:
	ld	a, c
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	call	_set_ROM_bank2
	ld	hl, #_hello2
	add	hl, de
	ld	a, (hl)
	or	a, a
	jr	Z, 00112$
	push	bc
	push	af
	inc	sp
	call	_putchar
	inc	sp
	pop	bc
	inc	c
	jr	00152$
00112$:
;banks_new.c:84: for (INT8 i = 0; (hello1_ram[i]); i++) putchar(hello1_ram[i]);
	ld	c, #0x00
00155$:
	ld	a, c
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	call	_set_RAM_bank1
	ld	hl, #_hello1_ram
	add	hl, de
	ld	a, (hl)
	or	a, a
	jr	Z, 00113$
	push	bc
	push	af
	inc	sp
	call	_putchar
	inc	sp
	pop	bc
	inc	c
	jr	00155$
00113$:
;banks_new.c:85: for (INT8 i = 0; (hello2_ram[i]); i++) putchar(hello2_ram[i]);
	ld	c, #0x00
00158$:
	ld	a, c
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	call	_set_RAM_bank2
	ld	hl, #_hello2_ram
	add	hl, de
	ld	a, (hl)
	or	a, a
	jr	Z, 00114$
	push	bc
	push	af
	inc	sp
	call	_putchar
	inc	sp
	pop	bc
	inc	c
	jr	00158$
00114$:
;banks_new.c:87: printf("once more...\n");
	ld	hl, #___str_2
	push	hl
	call	_puts
	add	sp, #2
;banks_new.c:89: printf("%s", hello0);
	ld	hl, #_hello0
	push	hl
	ld	hl, #___str_4
	push	hl
	call	_printf
	add	sp, #4
;banks_new.c:90: printf("%s", switch_to(hello1));    
	call	_set_ROM_bank1
	ld	a, (#_hello1 + 0)
	ldh	(___dummy_variable+0),a
	ld	hl, #_hello1
	push	hl
	ld	hl, #___str_4
	push	hl
	call	_printf
	add	sp, #4
;banks_new.c:91: printf("%s", switch_to(hello2));
	call	_set_ROM_bank2
	ld	a, (#_hello2 + 0)
	ldh	(___dummy_variable+0),a
	ld	hl, #_hello2
	push	hl
	ld	hl, #___str_4
	push	hl
	call	_printf
	add	sp, #4
;banks_new.c:92: printf("%s", switch_to(hello1_ram));
	call	_set_RAM_bank1
	ld	a, (#_hello1_ram + 0)
	ldh	(___dummy_variable+0),a
	ld	hl, #_hello1_ram
	push	hl
	ld	hl, #___str_4
	push	hl
	call	_printf
	add	sp, #4
;banks_new.c:93: printf("%s", switch_to(hello2_ram));
	call	_set_RAM_bank2
	ld	a, (#_hello2_ram + 0)
	ldh	(___dummy_variable+0),a
	ld	hl, #_hello2_ram
	push	hl
	ld	hl, #___str_4
	push	hl
	call	_printf
	add	sp, #4
;banks_new.c:95: printf("1+2+4+8=0x%x", (int)(addendum0 + addendum1_ram + (*addendum_ptr[0]) + (*addendum_ptr[1])));
	call	_set_RAM_bank1
	ld	a, (#_addendum0)
	ld	hl, #_addendum1_ram
	add	a, (hl)
	ld	c, a
	ld	a, (#_addendum0 + 1)
	ld	hl, #_addendum1_ram + 1
	adc	a, (hl)
	ld	b, a
	call	_set_RAM_bank2
	ld	hl, #_addendum_ptr
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, (hl+)
	ld	l, (hl)
	add	a, c
	ld	c, a
	ld	a, l
	adc	a, b
	ld	b, a
	ld	hl, #(_addendum_ptr + 0x0002)
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, (hl+)
	ld	l, (hl)
	add	a, c
	ld	c, a
	ld	a, l
	adc	a, b
	ld	b, a
	push	bc
	ld	hl, #___str_5
	push	hl
	call	_printf
;banks_new.c:98: while(1);
00116$:
	jr	00116$
;banks_new.c:99: }
	add	sp, #2
	ret
___str_2:
	.ascii "once more..."
	.db 0x00
___str_4:
	.ascii "%s"
	.db 0x00
___str_5:
	.ascii "1+2+4+8=0x%x"
	.db 0x00
	.area _CODE
	.area _CABS (ABS)
