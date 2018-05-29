///@description Get everything in place
if(prev_hp != stat[stats.hp]){
	if(prev_hp > stat[stats.hp]){
		damaged = true;
		
		//Flash timer
		alarm[2] = 0.5 * room_speed;
		
		
		if(stat[stats.hp] <= 0){
			dead = true;
			if(voice!=noone){
				audio_stop_sound(voice);
			}
		}
	}

	prev_hp = stat[stats.hp];
}

if(not global.pause){
	//Flash red
	if(damaged){
		image_blend = scr_toggle(image_blend,c_white,c_red);
		
		switch(id.object_index){
			case obj_luna_body:
				voice=scr_voice("luna");	
			break;
			
			case obj_body:
				voice=scr_voice("jason");
			break;
		}
		
	}else {
		image_blend = c_white;
		if(voice!=noone){
			audio_stop_sound(voice);
		}
		
	}
}

switch state{
	case 0: //Free
		image_xscale = 1;
		
		if(len != 0){
			sprite_index = body_sprs[spr_side];
			image_speed  = is * len;
			
		}else {
			sprite_index = body_still_sprs[spr_side];
			image_speed  = 0.4;
			
		}
		
		hands.visible = hs;

		if(hands.visible){
			hands.image_index = spr_side;
			hands.image_xscale = image_xscale;
		}
	break;
	case 1: //Stuck
	break;
	case 2: //Dash						
		image_speed  = is * len * 0.5;
		
		//Orientation
		if(dir > 315 or dir < 45){ //Right    
			spr_side = 1;
		}
			
		else if(dir < 135){ //Up
			spr_side = 0; 
		}
			
		else if(dir < 225){ //Left
			spr_side = 3;     
		}
			
		else if(dir < 315){ //Down
			spr_side = 2;        
		}
			
		sprite_index = roll_sprs[spr_side];
			
		inv = true;
	break;
	case 3: //Dead
		if(voice!=noone){
			audio_stop_sound(voice);
		}
	break;
	case 4: //Idle
		image_speed   = 0.4;
		sprite_index  = body_idle;
		hands.visible = true;
	break;
}

x = phy_position_x;
y = phy_position_y;

hands.x = x;
hands.y = y;

if(part_emitter_exists(global.ps_if,global.body_em)){
	part_emitter_region(global.ps_if,global.body_em,phy_position_x,phy_position_x,phy_position_y,phy_position_y,pt_shape_circle,ps_distr_gaussian);
}else {
	global.body_em = part_emitter_create(global.ps_if);
}