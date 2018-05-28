if global.pause==true{
	image_speed=0;
}
if global.pause==false{
	image_speed=1;
}
if(instance_exists(owner)){
	phy_position_x = owner.x + posoffx;
	phy_position_y = owner.y + posoffy;

	image_xscale = owner.image_xscale;
}
