//Angle to draw at
image_angle = angle + ang_off;

if(90 < image_angle && image_angle < 270){
	image_yscale = -1;
}else {
	image_yscale =  1;
}

x = owner.phy_position_x + offx;
y = owner.phy_position_y + offy;

if(amount != -1){
	scr_inv_set_pos(type,item,amount,obj_inventory_controller.tool_slot);
}

if(amount == 0 and player_owned){
	scr_tw_unequip();
}