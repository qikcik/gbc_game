#include "./bank_1.h"

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
void bank1_gameloop() BANKED
{
    player_init();

    while(TRUE)
    {
        frameIndex++;
        
        player_tick();

        wait_vbl_done();
    }
}