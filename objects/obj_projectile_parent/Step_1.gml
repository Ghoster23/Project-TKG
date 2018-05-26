if(not once){
	once = true;
	
	abs_cos = abs(cos(dir));
	
	with(shadow){
		physics_apply_impulse(phy_position_x,phy_position_y,other.spd*cos(other.dir),
		other.spd*sin(other.dir));
		phy_rotation = radtodeg(other.shadow_rot);
	}
	
	physics_apply_impulse(phy_position_x,phy_position_y,spd*cos(dir),spd*sin(dir));
	phy_rotation = radtodeg(dir);
	phy_fixed_rotation = false;
	visible = true;
	
	show_debug_message(phy_rotation);
	spd = phy_speed;
	
	alarm[0] = life_time;
}