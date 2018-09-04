if(owner != noone and instance_exists(owner)){
	x = owner.phy_position_x;
	y = owner.phy_position_y + owner.sprite_height - owner.sprite_yoffset + owner.offs;
	
	visible = owner.visible;
}else {
	instance_destroy();
}