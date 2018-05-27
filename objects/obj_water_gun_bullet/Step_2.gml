if(destroyed){
	if(instance_exists(shadow)){
		instance_destroy(shadow);
	}
	
	instance_destroy();
}

x = phy_position_x;
y = phy_position_y;

if(instance_exists(shadow)){
	shadow.phy_position_x = x - sprite_xoffset + shadow.sprite_xoffset;
	shadow.phy_position_y = y - sprite_yoffset + shadow.sprite_yoffset + offs;
}