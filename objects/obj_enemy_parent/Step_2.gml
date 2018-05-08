if(stat[stats.hp] < prev_e_hp){
	//Activate flash
	damaged = true;
	flash   = true;
		
	//Activate hurt immunity
	alarm[0] = 0.2 * room_speed;
	
	//Activate flash alarm
	alarm[2] = 0.03 * room_speed;
	
	prev_e_hp = stat[stats.hp];
}