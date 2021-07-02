#include "./bank_0.h"

#include "../data/backgroundTiles.c"
#include "../data/backgroundMap.c"

#include "../data/spriteTiles.c"


void bank0_loadData() BANKED
{
    set_sprite_data(0,8,spriteTiles);

    set_bkg_data(0,8,backgroundTiles);
    set_bkg_tiles(0,0,20,18,backgroundMap);
}