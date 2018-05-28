/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

event_inherited();

if(state == "magego2fire"){
	if(pair != noone){
		var d_ = point_direction(x,y,pair.x,pair.y);
	}
	else{
		var d_ = point_direction(x,y,global.body.x,global.body.y);
	}
}

if(state == "ghostfollow"){
	  var d_ = point_direction(x,y,global.body.x,global.body.y);
}

if(state == "magego2fire" or state == "ghostfollow") {

	//sides
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
}

if(state == "magego2fire"){

	image_speed=0.6;

	if flash == false and not global.pause{
	switch d {
	    case 0:
	        break;
	    case -1: //Left
	        image_xscale = -1;
		    sprite_index = mage_right_follow;
	        break;
	    case -2: //Up and Right
		case -3: //Up
		case -4: //Up and Left
	        sprite_index = mage_up_follow;
	        break;
	    case 1: //Right
	        image_xscale = 1;
	        sprite_index = mage_right_follow;
	        break;
	    case 2: //Left and Down
	    case 3: //Down
	    case 4: //Down and Right
	        sprite_index = mage_down_follow;
	        break;
		}
	}
}

if (state == "ghostfollow" or state == "attackwait") {
	
	image_speed=0.6;
	
	if flash == false and not global.pause{
	switch d {
	    case 0:
	        break;
	    case -1: //Left
	    case -2: //Up and Right
		case -3: //Up
		case -4: //Up and Left
	        sprite_index = ghost_follow;
			image_xscale = -1;
	        break;
	    case 1: //Right
	    case 2: //Left and Down
	    case 3: //Down
	    case 4: //Down and Right
	        sprite_index = ghost_follow;
			image_xscale = 1;
	        break;
		}
	}
}



if state == "lightfire" or state == "wait"{
	
	image_speed=0.6;
	
	if flash == false and not global.pause{
	    sprite_index = mage_stand_still;
		image_xscale = 1;
	}
		
}



