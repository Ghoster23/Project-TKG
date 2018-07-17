if global.pause == false{
	
	t+=0.07;
	skullrot+=rotinc;
	rotinc= phy_speed;

	//Calculate the z
	///this is the bit when the the item connects with the ground and decides the bouncin

	z = (zzero + (speedzero*t) + (0.5*a*(t*t)));
	//show_debug_message(string(z));
	
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
	
}