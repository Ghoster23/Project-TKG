{
	global.pt_willowisp = part_type_create();
	var pt2 = global.pt_willowisp;
	part_type_sprite(pt2, spr_particle_circle, 0, 0, 0);
	part_type_size(pt2, 0.50, 1.20, -0.01, 0.10);
	part_type_scale(pt2, 1, 1);
	part_type_orientation(pt2, 0, 0, 0, 0, 0);
	part_type_color3(pt2, 16777215, 16711680, 8388608);
	part_type_alpha3(pt2, 0, 0.50, 0.30);
	part_type_blend(pt2, 1);
	part_type_life(pt2, 6, 6);
	part_type_speed(pt2, 1, 1, -0.10, 0.30);
	part_type_direction(pt2, 0, 360, 0, 0);
	part_type_gravity(pt2, 0.15, 90);

}