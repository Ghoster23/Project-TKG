///@description Sprite Control and immunity

//Immunity
event_inherited();

if(not global.pause and not flash and not stun){
	//Decide which direction to care about
	switch state {
		case 0:
			scr_entity_sprite_control(sprs,i_dir,0);
		break;
		case 1:
			scr_entity_sprite_control(sprs,point_direction(x,y,global.body.x,global.body.y),0);
		break;
	}	
}