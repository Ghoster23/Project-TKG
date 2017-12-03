{
	global.pt_willowisp = part_type_create();
	var pt2 = global.pt_willowisp;
	part_type_sprite(pt2, spr_particle_circle, 0, 0, 0);
	part_type_size(pt2, 0.2, 1, -0.15, 0.50);
	part_type_scale(pt2, 1, 1);
	part_type_orientation(pt2, 0, 0, 0, 0, 1);
	part_type_color3(pt2, 16777088, 16711680, 12615808);
	part_type_alpha3(pt2, 1, 1, 1);
	part_type_blend(pt2, 1);
	part_type_life(pt2, 5, 8);
	part_type_speed(pt2, 1, 2, -0.1, 0);
	part_type_direction(pt2, 0, 360, 0, 0);
	part_type_gravity(pt2, 0.1, 90);
}