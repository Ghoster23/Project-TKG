scr_get_input();
if not global.pause {
	scr_pause_end(1);
	
	if place_meeting(x,y,obj_sword_aoe) and attack_key and not cooldown{
		
		instance_create_layer(x + lengthdir_x(30,obj_body.rotacao),y + lengthdir_y(30,obj_body.rotacao),"IF",obj_sword_projectile);
		cooldown = true;
		alarm[0] = 0.5 * room_speed;
	}
	
}else {
	scr_pause_start(1);
	
}