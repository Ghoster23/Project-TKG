if not global.pause {
	scr_pause_end(1);
	
	if place_meeting(x,y,obj_sword_aoe) and
	global.key_active[key_id.skill_1] and
	not cooldown{
		
		instance_create_layer(global.body.x + lengthdir_x(30,global.body.rotation),global.body.y + lengthdir_y(30,global.body.rotation),"IF",obj_sword_projectile);
		cooldown = true;
		alarm[0] = 0.5 * room_speed;
	}
	
}else {
	scr_pause_start(1);
	
}