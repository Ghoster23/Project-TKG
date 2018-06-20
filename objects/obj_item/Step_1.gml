x = phy_position_x;
y = phy_position_y;

frame += image_speed;

if(!booted and jump){
	booted = true;
	
	if(dir == -1){
		dir = random_range(0,360);
	}else if(dir == -2){
		dir = point_direction(global.body.phy_position_x,global.body.phy_position_y,mouse_x,mouse_y);
	}
	
	physics_apply_impulse(x, y, lengthdir_x(10, dir ),lengthdir_y(10,dir));

	z         =     0;
	zzero     =     0;
	speedzero =    50;
	t         =     0;
	a         =   -20;
	stop      = false;
	bounce    = false;
	zmax      = zzero + ((speedzero*speedzero)/(2*-a));
	phy_linear_damping=0.5;

	modulator   = 1;
	draw_script = scr_item_jump;
}