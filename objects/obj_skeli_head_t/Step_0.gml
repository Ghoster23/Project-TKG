if global.pause == false{
	scr_pause_end(1);
	
	t+=0.07;
	skullrot+=rotinc;
	rotinc= phy_speed;

	//Calculate the z
	///this is the bit when the the item connects with the ground and decides the bouncin

	z = (zzero + (speedzero*t) + (0.5*a*(t*t)));
	
	//show_debug_message(string(z));
	//obj_console.console_text += "skull offs - " + string(y + offs) + "\n";
	if(z<=2){
		impact = true;
		t=0.001;
		zzero = 0;
		speedzero=phy_speed*((zmax*5)/30);
		zmax=zzero + ((speedzero*speedzero)/(2*-a));
	}
	
	if(impact == true){
		damage = 0;
	}
	
	x = phy_position_x;
	y = phy_position_y;
	
}else {
	scr_pause_start(1);
}