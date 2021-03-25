#include <gb/gb.h>
#include <gb/cgb.h>

#include "../data/spriteTiles.h"
#include "../data/spriteTiles.c"

#include "../data/backgroundTiles.h"
#include "../data/backgroundTiles.c"
#include "../data/backgroundMap.c"

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

struct {
    UINT8 processedAction; 
    UINT8 actionTransition;

    struct {
        UINT8 x;
        UINT8 y;
    } position;
} player;

#define PLAYER_TRANSITION_MAX 8 /* 16,8,4,3,2,1*/
#define PLAYER_SINGLE_MOVE 16


inline void player_flip_normal()
{
    set_sprite_tile(0,0);
    set_sprite_tile(1,2);
    set_sprite_prop(0, 0);
    set_sprite_prop(1, 0);
}

inline void player_flip_fliped()
{
    set_sprite_tile(0,2);
    set_sprite_tile(1,0);
    set_sprite_prop(0, 0|S_FLIPX);
    set_sprite_prop(1, 0|S_FLIPX);
}

inline void player_init()
{
    player_flip_normal();

    player.position.x = 8;
    player.position.y = 0;

    player.processedAction = 0;
    player.actionTransition = 0;
}


inline void player_tick()
{
    if(!player.processedAction)
    {
        player.processedAction = joypad();
        if(player.processedAction)
        {
            player.actionTransition = PLAYER_TRANSITION_MAX;
        }
    }
    if(player.actionTransition != 0)
    {
        switch(player.processedAction)
        {
            case J_DOWN:
                player.position.y += PLAYER_SINGLE_MOVE / PLAYER_TRANSITION_MAX ;
                break;
            case J_UP:
                player.position.y -= PLAYER_SINGLE_MOVE / PLAYER_TRANSITION_MAX ;
                break;
            case J_LEFT:
                player.position.x -= PLAYER_SINGLE_MOVE / PLAYER_TRANSITION_MAX ;
                player_flip_normal();
                break;
            case J_RIGHT: 
                player.position.x += PLAYER_SINGLE_MOVE / PLAYER_TRANSITION_MAX ;
                player_flip_fliped();
                break;
        }
        player.actionTransition--;
    }
    else player.processedAction = FALSE;

    
    move_sprite(0,player.position.x,player.position.y);
    move_sprite(1,player.position.x+8,player.position.y);
    
}

UINT8 frameIndex = 0;
void init()
{
    set_bkg_palette(0,1,&backgroundpalette[0]);
    set_sprite_palette(0,3,&spritepalette[0]);

    SPRITES_8x16;

    set_sprite_data(0,8,spriteTiles);

    set_bkg_data(0,8,backgroundTiles);
    set_bkg_tiles(0,0,20,18,backgroundMap);



    SHOW_BKG;
    SHOW_SPRITES;
    DISPLAY_ON;
}


void main()
{
    init();
    player_init();

    while(TRUE)
    {
        frameIndex++;
        
        player_tick();

        wait_vbl_done();
    }
}