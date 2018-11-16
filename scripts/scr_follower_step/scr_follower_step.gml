{
if(instance_exists(follr_targ)){ //Target exists
	if(follr_phy){
		var xx = follr_targ.phy_position_x;
		var yy = follr_targ.phy_position_y;
	}else {
		var xx = follr_targ.x;
		var yy = follr_targ.y;
	}
	
	x = scr_approach(x,xx,(xx-x)*follr_spd);
	y = scr_approach(y,yy,(yy-y)*follr_spd);
	
	x += follr_x_offs;
	y += follr_y_offs;
}
}