///@description Sprite handling and immunity

//Immunity
event_inherited();

//Sprites
switch(state){
	case 0:
		dir = i_dir;
	break;
	default:
	break;
}

wep_dir  = dir;
spr_side = (dir div 90) mod 4;

if(flash == false and not global.pause){
	switch(spr_side){
	    case 2://Left
	        image_xscale = -1;
		    sprite_index = bodys_sprite;
			head.facing = "left";
	    break;
	    case 1: //Up
	        sprite_index = bodyb_sprite;
			head.facing = "up";
	    break;
	    case 0: //Right
	        image_xscale = 1;
	        sprite_index = bodys_sprite;
			head.facing = "right";
	    break;
	    case 3: //Down
	        sprite_index = bodyf_sprite;
			head.facing = "down";
	    break;
	}
}