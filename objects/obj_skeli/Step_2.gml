/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

event_inherited();

if(state == "go2head"){
	if(skullt != noone){
		var d_ = point_direction(x,y,skullt.x,skullt.y);
	}
}else{
	var d_ = point_direction(x,y,global.body.x,global.body.y);
}


if(state == "go2head" or state == "chase" or state = "aim" or state = "wait") {

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

if(state == "go2head" or state == "chase" or state =="wait"){

	if flash == false and not global.pause{
		image_speed=0.8;
		switch d {
		    case 0:
		        break;
			case -4: //Up and Left
		    case 2: //Left and Down
		    case -1: //Left
		        image_xscale = -1;
			    sprite_index = skeli_right_walk;
		        break;
	  
			case -3: //Up
		        sprite_index = skeli_up_walk;
		        break;
			
			case -2: //Up and Right
		    case 1: //Right
			case 4: //Down and Right
		        image_xscale = 1;
		        sprite_index = skeli_right_walk;
		        break;
		
		    case 3: //Down
		        sprite_index = skeli_down_walk;
		        break;
		}
	}
}

if(state == "wait"){
	image_speed= 0;
}

if (state == "aim") {
	
	if flash == false and not global.pause{
	
		image_speed=0;
		sprite_index = skeli_aim;
		switch d {
		    case 0:
		        break;
			case -4: //Up and Left
		    case 2: //Left and Down
		    case -1: //Left
		        image_xscale = 1;
			    image_index = 0;
		        break;
	  
			case -3: //Up
				image_xscale = 1;
		        image_index = 3;
		        break;
			
			case -2: //Up and Right
		    case 1: //Right
			case 4: //Down and Right
		        image_xscale = 1;
		        image_index = 2;
		        break;
		
		    case 3: //Down
				image_xscale = 1;
		        image_index = 1;
		        break;
		}
	}
}

if state == "pophead"{
	
	if flash == false and not global.pause{
		image_speed=0.6;
	    sprite_index = skeli_pophead;
	}
}

if state == "pickup"{
	
	if flash == false and not global.pause{
		image_speed=0.6;
	    sprite_index = skeli_pickup;
	}
}




