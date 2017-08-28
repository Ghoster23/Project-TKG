scr_get_input();


if not global.pause {
	if thrust==true{
		offs=30;
		image_angle=scr_aproach(image_angle,180,10);
		y=scr_aproach(y,global.body.y-20,5);
		
	}
	else{
		event_inherited();
		image_angle = point_direction(x,y,mouse_x,mouse_y);

		global.thrown=false;

		//atacking
		if (attack_key) and allow = true {
		    allow = false;
		    alarm[1] = 0.5 * room_speed; 
		    image_xscale = -1*image_xscale;
		    image_yscale = -1*image_yscale;
		    instance_create_layer(x, y, "IF",obj_swing); 
			scr_sound(snd_sword_slash);
		}
		
		if mouse_r_key and not global.st_stuck{
			thrust=true;
			alarm[2]=room_speed*1;
			image_xscale = 1;
		    image_yscale = 1;
			global.body.spr_side = 1
			obj_head.image_index = 0;
			global.body.rotacao = 270;
			global.st_stuck = true;
		}
	}	
}