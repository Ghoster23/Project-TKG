/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(not global.pause and not flash and not stun){
	switch state {
		case "go2head":
			image_speed = 0.8;
			
			if(skullt != noone){
				scr_entity_sprite_control(sprs,point_direction(x,y,skullt.x,skullt.y),0);
			}else {
				scr_entity_sprite_control(sprs,point_direction(x,y,global.body.x,global.body.y),0);
			}
		break;
		
		case "chase":
			image_speed = 0.8;
			scr_entity_sprite_control(sprs,point_direction(x,y,global.body.x,global.body.y),0);
		break;
		
		case "wait":
			image_speed = 0;
			scr_entity_sprite_control(sprs,point_direction(x,y,global.body.x,global.body.y),0);
		break;
		
		case "aim":
			image_speed = 0;
			scr_entity_sprite_control(skeli_aim,point_direction(x,y,global.body.x,global.body.y),1);
		break;
		
		case "pophead":
			image_speed  = 0.6;
			sprite_index = spr_skeli_pophead;
		break;
		
		case "pickup":
			image_speed  = 0.6;
			sprite_index = spr_skeli_pickup;
		break;
	}	
}