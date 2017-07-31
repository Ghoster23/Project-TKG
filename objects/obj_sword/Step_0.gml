scr_get_input();


if not global.pause {
	if thrust==true{
		offs=30;
		image_angle=scr_aproach(image_angle,180,10);
		y=scr_aproach(y,obj_body.y-20,5);
	
	}
	else{
		event_inherited();
		image_angle = point_direction(x,y,mouse_x,mouse_y);

		global.thrown=false;

		//atacking
		if (attack_key) and allow = true {
		    allow = false;
		    alarm[1] = 0.4 * room_speed; 
		    image_xscale = -1*image_xscale;
		    image_yscale = -1*image_yscale;
		    instance_create_layer(x, y, "IF",obj_swing); 
			scr_sound(snd_sword_slash);
		}
		if throw_key {
			thrust=true;
			alarm[2]=room_speed*1;
			image_xscale = 1;
		    image_yscale = 1;
		}
	}	
}