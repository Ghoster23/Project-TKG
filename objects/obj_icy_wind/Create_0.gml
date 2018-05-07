event_inherited();

values[0] = 0;
values[1] = 3;
values[2] = 2;
values[3] = 3;

once = false;

image_alpha = 0.5;
on = true;

alarm[0] = 1.5 * room_speed;

dir = degtorad(-point_direction(global.body.phy_position_x,global.body.phy_position_y,
								phy_position_x,phy_position_y));

physics_apply_impulse(phy_position_x, phy_position_y,
					  100*cos(dir),     100*sin(dir));
					  
em = part_emitter_create(global.ps_if);