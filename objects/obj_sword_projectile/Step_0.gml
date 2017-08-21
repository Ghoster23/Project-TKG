if not global.pause {
	image_speed = 0.6;
	
	if place_meeting(x,y+vspd,obj_wall_down) or
	   place_meeting(x,y,obj_wall_left) or
	   place_meeting(x,y,obj_wall_up) or
	   place_meeting(x+8,y,obj_wall_right) or
	   place_meeting(x,y,obj_solid_parent) or
	   place_meeting(x,y,obj_enemy_parent){
   
	   imp = instance_create_layer(phy_position_x,phy_position_y,layer,obj_sword_projectile_impact);
	   imp.phy_rotation = phy_rotation;
   
	   instance_destroy();
	}

	//Move
	phy_position_x += hspd;
	phy_position_y += vspd;
	
} else {
	image_speed = 0;
	
}