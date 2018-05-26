if(!booted and jump){
	booted = true;
	
	fix1 = physics_fixture_create();
	physics_fixture_set_circle_shape(fix1,6);
	physics_fixture_set_density(fix1,0.5);
	physics_fixture_set_restitution(fix1,0.5);
	physics_fixture_set_linear_damping(fix1,1);
	physics_fixture_set_collision_group(fix1,1);
	my_fix=physics_fixture_bind_ext(fix1, self,-16,-16);
	
	if(dir){
		dir = random_range(0,360);
	}else {
		dir = point_direction(global.body.phy_position_x,global.body.phy_position_y,mouse_x,mouse_y);
	}
	
	phy_fixed_rotation = true;
	physics_apply_impulse(x, y, lengthdir_x(10, dir ),lengthdir_y(10,dir));

	z         = 0;
	zzero     = 0;
	speedzero = 50;
	t         = 0;
	a         = -20;
	stop      = false;
	bounce    = false;
	zmax=zzero + ((speedzero*speedzero)/(2*-a));
	phy_linear_damping=0.5;

	modulator=1;
	draw_script = scr_item_jump;
}