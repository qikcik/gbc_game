#include <gb/gb.h>
#include <gb/cgb.h>
#include <stdio.h>
#include <stdlib.h>

#include "./utils/bank.h"

#include "../data/spriteTiles.h"
#include "../data/backgroundTiles.h"


#include "./bank_0.h"
#include "./bank_1.h"

const UWORD backgroundpalette[] = {
    backgroundTilesCGBPal0c0,backgroundTilesCGBPal0c1,backgroundTilesCGBPal0c2,backgroundTilesCGBPal0c3,
    backgroundTilesCGBPal1c0,backgroundTilesCGBPal1c1,backgroundTilesCGBPal1c2,backgroundTilesCGBPal1c3,
    backgroundTilesCGBPal2c0,backgroundTilesCGBPal2c1,backgroundTilesCGBPal2c2,backgroundTilesCGBPal2c3,
    backgroundTilesCGBPal3c0,backgroundTilesCGBPal3c1,backgroundTilesCGBPal3c2,backgroundTilesCGBPal3c3,
};

const UWORD spritepalette[] = {
    spriteTilesCGBPal0c0,
    spriteTilesCGBPal0c1,
    spriteTilesCGBPal0c2,
    spriteTilesCGBPal0c3,

    spriteTilesCGBPal1c0,
    spriteTilesCGBPal1c1,
    spriteTilesCGBPal1c2,
    spriteTilesCGBPal1c3,

    spriteTilesCGBPal2c0,
    spriteTilesCGBPal2c1,
    spriteTilesCGBPal2c2,
    spriteTilesCGBPal2c3,

};



void main()
{
    bank_init();

    set_bkg_palette(0,1,&backgroundpalette[0]);
    set_sprite_palette(0,3,&spritepalette[0]);
    
    SPRITES_8x16;

    bank0_loadData();


    SHOW_BKG;
    SHOW_SPRITES;
    DISPLAY_ON;

    bank1_gameloop();
}