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
spr_side = ((dir + 45) div 90) mod 4;

scr_entity_sprite_control(sprs,dir,0);

if(not flash and not stun and not global.pause){
	switch(spr_side){
	    case 2://Left
			head.facing = "left";
	    break;
	    case 1: //Up
			head.facing = "up";
	    break;
	    case 0: //Right
			head.facing = "right";
	    break;
	    case 3: //Down
			head.facing = "down";
	    break;
	}
}