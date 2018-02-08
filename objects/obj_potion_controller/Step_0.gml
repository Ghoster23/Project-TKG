scr_get_input();

if(consumable_key and global.potion[1] != c_white){
	
	
	global.potion[1] = c_white;
}

if(!instance_exists(obj_willowisp) and global.status[3,0]){
	instance_create_layer(global.body.phy_position_x,global.body.phy_position_y,"Instances",obj_willowisp);
}