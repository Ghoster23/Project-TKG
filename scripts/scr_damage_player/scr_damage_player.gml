{
if(instance_exists(obj_crystal_bubble) &&
	obj_crystal_bubble.state == 0){
	
	with(obj_crystal_bubble){
		state++;
		state = state mod 2;
	}
	
	global.p_hurt = true;
}

if(not global.p_hurt      and  //Player not recently hurt
   not global.p_inv       and  //Player not invulnerable
   not global.status[statuses.immune,0] and
   global.p_stats[stats.hp] > 0){             //Player alive
	
	global.p_stats[stats.hp] -= ceil(other.damage * other.stat[other.mult] div global.p_stats[other.divi]);
	
}

var kb = other.kb_amount;

if(kb > 0){
	var dir = point_direction(other.x,other.y,phy_position_x,phy_position_y);
	physics_apply_impulse(phy_position_x,phy_position_y,kb * cos(dir),kb * sin(dir));	
}

if(global.p_stats[stats.hp] <= 0 and  //Player Dead
   global.killer == 0){  //Killer not determined
	global.killer = object_get_name(other.object_index);
}
}