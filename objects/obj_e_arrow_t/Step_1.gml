/// @description Insert description here
// You can write your code in this editor
if not once {
	dir = creator.dir;
	
	phy_rotation = -dir;
	visible = true;
	
	//Get hspd and vspd
	hspd = lengthdir_x(15,dir);
	vspd = lengthdir_y(15,dir);
	
	once = true;
}