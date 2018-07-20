/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(not global.pause and not flash and not stun){
	//Decide which direction to care about
	switch state {
		case "magego2fire":
			image_speed = 0.6;
			
			if(pair != noone){
				scr_entity_sprite_control(sprs,point_direction(x,y,pair.x,pair.y),0);
			}else {
				scr_entity_sprite_control(sprs,point_direction(x,y,global.body.x,global.body.y),0);
			}
		break;
		
		case "ghostfollow":
		case "attackwait":
			image_speed = 0.6;
			
			scr_entity_sprite_control(ghost_follow,point_direction(x,y,global.body.x,global.body.y),1);
		break;
		
		case "lightfire":
		case "wait":
			image_speed  = 0.6;
			sprite_index = mage_stand_still;
			image_xscale = 1;
		break;
	}	
}