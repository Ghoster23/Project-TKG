if(not global.pause){	
	if(instance_exists(other.id) and not is_descended(other.id.object_index,obj_projectile_parent) and other.kb_amount != 0){
		speed = 0;
		if(dir != 404){
			dir = (dir + point_direction(other.phy_position_x, other.phy_position_y, x, y));
		}else {
			dir = point_direction(other.phy_position_x, other.phy_position_y, x, y);
		}
		flash = true;
		alarm[2] = room_speed * 0.06;
	}
}