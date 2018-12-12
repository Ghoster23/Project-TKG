/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//sprite_controll

spr_side  = scr_orientate_entity(point_direction(x_prev,y_prev,x,y));
if(spr_side == 0){
	image_xscale = 1;
}
else if(spr_side == 2){
	image_xscale = -1;
}

x_prev = x;
y_prev = y;


if go and not global.pause{

	switch(state){
	    case "chase": 
			sprite_index = ghost_chase_sprite;
			image_speed = 0.8;
	    break;
		
		case "attack": 
			sprite_index = ghost_attack_sprite;
			image_speed = 0;
		break;
		
		case "break": 
			sprite_index = ghost_hit_sprite;
			image_speed = 0;
		break;
		
		case "run_away":
			sprite_index = ghost_run_away_sprite;
			image_speed = 0.8;
		break;
		
		case "reconstruct": 
			sprite_index = ghost_reconstruct_sprite;
			image_speed = 0.3;
		break;
		
		case "dead":
			image_speed = 0;
		break;
	}
	
}

if(state = "reconstruct"){
	spear.image_alpha = scr_approach(spear.image_alpha,1,0.05);
	armor.image_alpha = scr_approach(armor.image_alpha,1,0.05);
}