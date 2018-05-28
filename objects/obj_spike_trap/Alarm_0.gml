if state == 0{
	state = 1;
	phy_active = true;
	triggered = true;
	
}else {
	state = 0;
	phy_active = false;
	triggered = false;
}