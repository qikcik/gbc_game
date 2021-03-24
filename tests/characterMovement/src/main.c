#include <gb/gb.h>
#include <gb/cgb.h>

#include "../data/spriteTiles.h"
#include "../data/spriteTiles.c"

#include "../data/backgroundTiles.c"
#include "../data/backgroundMap.c"

const UWORD spritepalette[] = {
    RGB_RED,
    RGB_RED,
    RGB_RED,
    RGB_RED,

    RGB_RED,
    RGB_RED,
    RGB_RED,
    RGB_RED,

    RGB_RED,
    RGB_RED,
    RGB_RED,
    RGB_RED,
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
    set_sprite_prop(0, 1|S_FLIPX);
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
    SPRITES_8x16;

    set_sprite_data(0,8,spriteTiles);

    set_bkg_data(0,8,backgroundTiles);
    set_bkg_tiles(0,0,20,18,backgroundMap);

    set_sprite_palette(0,3,&spritepalette[0]);



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