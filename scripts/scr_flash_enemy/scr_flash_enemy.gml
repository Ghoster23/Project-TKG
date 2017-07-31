if e_hp > 0 and damaged and not global.pause{
	if alarm[4] == -1{
		alarm[4] = 0.03 * room_speed;
		flash = true;
	}
	
	if alarm[0] == -1{
		alarm[0] = 0.2 * room_speed;
	}
}