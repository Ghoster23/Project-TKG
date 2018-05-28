if state == 0 {
	state = 1;
	triggered = true;
	
}else {
	state = 0;
	triggered = false;
	
}

alarm[0] = 2 * room_speed;