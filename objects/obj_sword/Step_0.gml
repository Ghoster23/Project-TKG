scr_get_input();


if not global.pause {
	scr_pause_end(3);
	
	if thrust==true{
		offs=30;
		image_angle=scr_aproach(image_angle,180,10);
		y=scr_aproach(y,global.body.y-20,5);
		
	}
	else{
		event_inherited();
		image_angle = point_direction(x,y,mouse_x,mouse_y)+off;

		global.thrown=false;

		//atacking
		if (attack_key) and allow = true and swing=="no"{
		    allow = false;
		    alarm[1] = 0.5 * room_speed; 
			
		    //image_xscale = -1*image_xscale;
		    //image_yscale = -1*image_yscale;
			
			
			/*if off==0{
				off=180+30;
				swing="right";
			}
			else if off==180{
				off=-30;
				swing="left";
			}*/
			if off==0{
				swing="right";
			}
			else if off==180{
				swing="left";
			}
			/*
		    instance_create_layer(x, y, "IF",obj_swing); 
			scr_sound(snd_sword_slash);
			*/
		}
		
		if mouse_r_key and global.p_will >= 10 and alarm[2] == -1{
			global.p_will -= 10;
			image_xscale = -1*image_xscale;
		    image_yscale = -1*image_yscale;
			alarm[2] = 0.5 * room_speed;
			
			instance_create_layer(global.body.x + lengthdir_x(30,global.body.rotacao),global.body.y + lengthdir_y(30,global.body.rotacao),"IF",obj_sword_projectile);
			/*thrust=true;
			alarm[2]=room_speed*1;
			image_xscale = 1;
		    image_yscale = 1;
			global.body.spr_side = 1
			obj_head.image_index = 0;
			global.body.rotacao = 270;*/
			
		}
		/*
		if swing=="right"{
			off=scr_aproach(off,180,4);
			if off==180{
				swing="no";
			}
		}
		if swing=="left"{
			off=scr_aproach(off,0,4);
			if off==0{
				swing="no";
			}
		}
		*/
		
		if swing=="right"{
			off=scr_aproach(off,30,4);
			if off==30 and !attack_key{
				instance_create_layer(x, y, "IF",obj_swing); 
				scr_sound(snd_sword_slash);
				off=180;
				swing="no";
			}
		}
		if swing=="left"{
			off=scr_aproach(off,150,4);
			if off==150 and !attack_key{
				instance_create_layer(x, y, "IF",obj_swing); 
				scr_sound(snd_sword_slash);
				off=0;
				swing="no";
				
			}
		}
		
	}	
}else {
	scr_pause_start(3);
}

//show_debug_message(swing);