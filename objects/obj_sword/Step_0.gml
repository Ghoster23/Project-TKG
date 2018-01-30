scr_get_input();

if not global.pause {
	scr_pause_end(3);
	
	amount = amount * 0.3;
	
	angle = degtorad(-(image_angle+90));
	
	if global.body.spr_side != 0{
		if(l == 1){
			part_emitter_clear(global.ps,em_);
			
			l = 0;
		}
		
		part_emitter_region(global.ps_if, em, x+ 5 * cos(angle), x+ 5 * cos(angle), y + 10 * sin(angle), y + 10 * sin(angle), ps_shape_ellipse, ps_distr_gaussian);
	
		part_emitter_stream(global.ps_if, em, global.pt_sow_fire, round(amount));
	}else {
		if(l == 0){
			part_emitter_clear(global.ps_if,em);
			
			l = 1;
		}
		
		part_emitter_region(global.ps, em_, x+ 5 * cos(angle), x+ 5 * cos(angle), y + 10 * sin(angle), y + 10 * sin(angle), ps_shape_ellipse, ps_distr_gaussian);
	
		part_emitter_stream(global.ps, em_, global.pt_sow_fire, round(amount));
	}
	
	if(dash_key){
		part_emitter_clear(global.ps,em_);
		part_emitter_clear(global.ps_if,em);
	}
		
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
		if attack_key and allow and swing=="no"{
		    allow = false;
			
			if off==0{
				swing="right";
			}
			else if off==180{
				swing="left";
			}
			
		}
		
		if mouse_r_key and global.p_will >= 10 and alarm[2] == -1 and swing=="no" {
			global.p_will -= 10;
			
			if off==0{
				swing="right_";
			}
			else if off==180{
				swing="left_";
			}
			
			alarm[2] = 0.5 * room_speed;
			
			image_speed = 2.3;
			
			amount = 3;
			
		}
		
		if swing=="right"{
			off=scr_aproach(off,30,4);
			if !attack_key{
				instance_create_layer(x, y, "IF",obj_swing); 
				scr_sound(snd_sword_slash);
				off=180;
				alarm[1] = 0.4 * room_speed; 
				swing="no";
				
			}
		}
		if swing=="left"{
			off=scr_aproach(off,150,4);
			if !attack_key{
				instance_create_layer(x, y, "IF",obj_swing); 
				scr_sound(snd_sword_slash);
				off=0;
				alarm[1] = 0.4 * room_speed; 
				swing="no";
				
			}
		}
		
		if swing=="right_"{
			part_type_gravity(global.pt_sow_fire,0.01,(image_angle+180));
			off=scr_aproach(off,30,4);
			amount = 3;
			if off==30 and !mouse_r_key{
				instance_create_layer(global.body.x + lengthdir_x(30,global.body.rotation),global.body.y + lengthdir_y(30,global.body.rotation),"IF",obj_sword_projectile);
				scr_sound(snd_sword_slash);
				off=180;
				swing="no";
				
			}
		}
		if swing=="left_"{
			part_type_gravity(global.pt_sow_fire,0.01,(image_angle));
			off=scr_aproach(off,150,4);
			amount = 3;
			if off==150 and !mouse_r_key{
				instance_create_layer(global.body.x + lengthdir_x(30,global.body.rotation),global.body.y + lengthdir_y(30,global.body.rotation),"IF",obj_sword_projectile);
				scr_sound(snd_sword_slash);
				off=0;
				swing="no";
				
			}
		}
		
	}	
}else {
	scr_pause_start(3);
	
}