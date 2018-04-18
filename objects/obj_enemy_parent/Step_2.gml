if(e_stats[stats.hp] < prev_e_hp){
	//Activate flash
	flash   = true;
	damaged = true;
		
	//Activate hurt immunity
	alarm[0] = 0.2 * room_speed;
	
	//Activate flash alarm
	alarm[4] = 0.03 * room_speed;
	
	prev_e_hp = e_stats[stats.hp];
}