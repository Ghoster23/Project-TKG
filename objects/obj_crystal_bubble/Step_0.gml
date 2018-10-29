/// @description Insert description here
// You can write your code in this editor
/*if not global.pause {
	if global.n_room {
		state = 0;
		//FIX ME
	}
	
	if state == 0{
		global.p_inv = true;
	
	}
	
	image_index = state;
}*/

if instance_exists(global.body) {
	phy_position_x = global.body.phy_position_x;
	phy_position_y = global.body.phy_position_y;
}