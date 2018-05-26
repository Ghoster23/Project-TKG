if(destroyed){
	if(instance_exists(shadow)){
		instance_destroy(shadow);
	}
	
	instance_destroy();
}

x = phy_position_x;
y = phy_position_y;

if(instance_exists(shadow)){
	shadow.x = x - sprite_xoffset + shadow.sprite_xoffset;
	shadow.y = y - sprite_yoffset + shadow.sprite_yoffset + offs;
	
	shadow.phy_rotation = phy_rotation;
}