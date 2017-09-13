/// @description Insert description here
// You can write your code in this editor
if not global.pause and instance_exists(global.body){
	n = scr_circle_movement(global.body.phy_position_x + global.body.hspd,global.body.phy_position_y + global.body.vspd, 48, n, 6);
	phy_position_x = x;
	phy_position_y = y;
}