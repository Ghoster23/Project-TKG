if not global.pause{
	
	if state == 0{
	    //Get hspd and vspd
	    hspd = lengthdir_x(15,dir);
	    vspd = lengthdir_y(15,dir);
   
	    //Move
	    phy_position_x += hspd;
	    phy_position_y += vspd;
		
		phy_rotation = -point_direction(x,y,x + hspd,y + vspd) + 90;
		phy_fixed_rotation = true;
	}else {
		image_alpha = alarm[0] / 150;
	
	}
	
	if place_meeting(phy_position_x,phy_position_y,obj_solid_parent) and des{
		/*stuck = instance_create_layer(phy_position_x,phy_position_y,layer,obj_stuck_projectile);

		with stuck {
			visible = false;
			sprite_index = spr_e_arrow_stuck;
			phy_rotation = other.phy_rotation;
			phy_fixed_rotation = true;
			visible = true;
		}

		instance_destroy();*/
		
		state = 1;
		layer = layer_get_id("BH");
		alarm[0] = 5 * room_speed;
	}
	
	if state != 1 and place_meeting(x,y,global.body){
		scr_damage_player(0,10,global.p_def);

		instance_destroy();
	}

}