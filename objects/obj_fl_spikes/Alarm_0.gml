if state == 0 {
	state = 1;
	triggered = true;
	phy_active = true;
	
}else {
	state = 0;
	triggered = false;
	phy_active = false;
}

alarm[0] = 2 * room_speed;