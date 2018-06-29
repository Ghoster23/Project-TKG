///@description Sprite Control and immunity

//Immunity
event_inherited();

if(not global.pause and not flash and not stun){
	//Decide which direction to care about
	if state == 1 {
	    var d_ = point_direction(x,y,global.body.x,global.body.y);
	}else if state == 0{
	    var d_ = i_dir;
	}else {
	    var d_ = 404;
	}

	//Change sprites
	switch d {
		case 0: //Rigt
		    image_xscale = 1;
		    sprite_index = spr_slime_side;
		break;
		case 1: //Up
			sprite_index = spr_slime_up;
		break;
		case 2: //Left
		    image_xscale = -1;
		    sprite_index = spr_slime_side;
		break;		    
		case 3: //Down
		    sprite_index = spr_slime_down;
		break;
	}
}