if not global.pause{
	if alarm_0 != -1{
		alarm[0] = alarm_0;
		alarm_0 = -1;
	}
	
    //Get hspd and vspd
    hspd = lengthdir_x(15,dir);
    vspd = lengthdir_y(15,dir);
   
    //Move
    phy_position_x += hspd;
    phy_position_y += vspd;
    
    phy_rotation = -point_direction(x,y,x + hspd,y + vspd) + 90;
	phy_fixed_rotation = true;
	
	if (place_meeting(phy_position_x+hspd,phy_position_y+vspd,obj_barrel) or place_meeting(phy_position_x+hspd,phy_position_y+vspd,obj_crate)) and des{
		stuck = instance_create_layer(phy_position_x,phy_position_y,layer,obj_stuck_projectile);

		with stuck {
			visible = false;
			sprite_index = spr_e_arrow_stuck;
			phy_rotation = other.phy_rotation;
			phy_fixed_rotation = true;
			visible = true;
		}

		instance_destroy();
	}
	
	if place_meeting(phy_position_x+hspd,phy_position_y+vspd,obj_rock) and des{
		instance_destroy();
	}

}else {
	if alarm[0] != -1 {
		alarm_0 = alarm[0];
		alarm[0] = -1;
	}
}