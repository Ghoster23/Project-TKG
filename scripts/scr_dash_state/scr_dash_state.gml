/// @description scr_dash_state
visible      = false;
head.visible = false;

if instance_exists(global.weapon) {
	with (global.weapon){
		instance_destroy();
	}
}


len = global.spd*3;

//get the hspd and vspd
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

// move
phy_position_x += hspd;
phy_position_y += vspd;

global.p_inv = true;