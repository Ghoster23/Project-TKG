///@description Sprite control
//Decide which direction to care about
if state == 1 {
    var d_ = dir;
}else if state == 0{
    var d_ = i_dir;
}else {
    var d_ = 404;
}

//Determine which way we are facing
if (d_ >= 0 and d_ <= 45) or (d_ >= 315 and d_ <= 360){
    d = 1;
}else if d_ > 45 and d_ < 135{
    d = -3;
}else if d_ >= 135 and d_ <= 225{
    d = -1;
}else if d_ > 225 and d_ < 315{
    d = 3;
}else {
    d = 0;
}

//If not flashing decide sprite
if flash == false{
	switch d {
	    case 0:
	    break;
	    case -1: //Left
	        image_xscale = -1;
	        sprite_index = spr_bat;
	    break;
	    case -2: //Up and Right
			image_xscale = 1;
	        sprite_index = spr_bat;
	    break;
	    case -3: //Up
			image_xscale = 1;
	        sprite_index = spr_bat;
	    break;
	    case -4: //Up and Left
	        sprite_index = spr_bat;
			image_xscale = -1;
	    break;
	    case 1: //Rigt
	        image_xscale = 1;
	        sprite_index = spr_bat;
	    break;
	    case 2: //Left and Down
			image_xscale = -1;	
	        sprite_index = spr_bat;
	    break;
	    case 3: //Down
			image_xscale = -1;
	        sprite_index = spr_bat;
	    break;
	    case 4: //Down and Right
			image_xscale = 1;
	        sprite_index = spr_bat;
	    break;
	}
}

///Go to death state
if e_hp <= 0 {
	state = 3;
		
}