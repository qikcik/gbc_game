#include <gb/gb.h>
#include "character-tiles.c"
#include "map.c"
#include "backgroundtiles.c"

INT16 playerlocation[2];
INT8 playerspeed[2];
//const INT8 maxhorizontalspeed = 2;
//const UINT8 maxverticalspeed = 255;
INT8 moving = FALSE;
INT8 jumping = FALSE;
INT8 inair = FALSE;
INT8 jumppower = 0;
const INT8 maxjumppower = 64;
INT8 frameindex = 0;
INT8 animationframe = 0;

inline void init()
{
	set_sprite_data(0, 9, charactertiles);
    set_sprite_tile(0, animationframe);

    set_bkg_data(0, 17, backgroundtiles);
	set_bkg_tiles(0, 0, 20, 18, backgroundmap);

    playerlocation[0] = 40;
    playerlocation[1] = 40;


    SHOW_SPRITES;
    SHOW_BKG;
    //SHOW_WIN;
    DISPLAY_ON;
}

inline void checkInput() 
{
	moving = FALSE;
	jumping = FALSE;
	if (joypad() & J_LEFT)
	{
		moving = TRUE;
		playerspeed[0] = -1;
	}
	if (joypad() & J_RIGHT)
	{
		moving = TRUE;
		playerspeed[0] = 1;
	}
	if (joypad() & J_UP && inair == FALSE)
	{
		moving = FALSE;
		jumping = TRUE;
	}
	if (joypad() & J_DOWN)
	{

	}
}


inline void update()
{
	
	if (jumping == TRUE && jumppower < maxjumppower && inair == FALSE)
	{
		jumppower++;
		if (jumppower > 0 && jumppower <= maxjumppower >> 2)
		{
			animationframe = 6;
		} else if (jumppower > maxjumppower >> 2)
		{
			animationframe = 5;
		}
	}
	if ( ((jumping == FALSE && jumppower > 0) || jumppower == maxjumppower) && inair == FALSE )
	{
		
		playerspeed[1] = -(jumppower >> 2);
		jumppower = 0;
		inair = TRUE;

	}


	playerspeed[1]++;
	playerlocation[1] = playerlocation[1] + playerspeed[1];
	if (playerlocation[1] < 4)
	{
		playerlocation[1] = 4;
		playerspeed[1] = 0;
	}
	if (playerlocation[1] > 136)
	{
		playerlocation[1] = 136;
		playerspeed[1] = 0;
		inair = FALSE;
	}

	
	if (jumping == FALSE)
	{
		if (moving)
		{
			playerlocation[0] = playerlocation[0] + playerspeed[0];
			

			if (playerspeed[0] > 0)
			{
				set_sprite_prop(0,0);
			} else if (playerspeed[0] < 0)
			{
				set_sprite_prop(0,S_FLIPX);
			}


			if (playerlocation[0] < 16)
			{
				playerlocation[0] = 16;
				playerspeed[0] = 0;
			}
			if (playerlocation[0] > 152)
			{
				playerlocation[0] = 152;
				playerspeed[0] = 0;
			}
			

			if (frameindex % 2 == 0)
			{
				animationframe++;
			}
			
			if (animationframe > 5)
			{
				animationframe = 0;
			}
		} else 
		{
			playerspeed[0] = 0;
			animationframe = 0;
		}
		
	}
	
	
}

inline void draw()
{
	frameindex++;

	if (inair == TRUE)
	{
		if (playerspeed[1] > 8 || playerspeed[1] < -8)
		{
			animationframe = 8;
		} else if (playerspeed[1] > 4 || playerspeed[1] < -4)
		{
			animationframe = 7;
		}
	}


	set_sprite_tile(0, animationframe);
	move_sprite(0,playerlocation[0],playerlocation[1]);
}


void main()
{
	init();
	while (TRUE)
	{
		checkInput();
		update();
		draw();
		wait_vbl_done();
	}
}