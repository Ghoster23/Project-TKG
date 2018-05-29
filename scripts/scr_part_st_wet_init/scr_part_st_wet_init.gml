{
	global.pt_st_wet = part_type_create();
	var pt2 = global.pt_st_wet;
	part_type_sprite(pt2, spr_part_st_wet, 0, 0, 1);
	part_type_size(pt2, 0.55, 0.65, -0.005, 0.0);
	part_type_scale(pt2, 1, 1);
	part_type_orientation(pt2, 0, 0, 0, 0, 0);
	part_type_color3(pt2, 16743168, 8327936, 10058752);
	part_type_alpha3(pt2, 1, 0.7, 0);
	part_type_blend(pt2, 1);
	part_type_life(pt2, 10, 12);
	part_type_speed(pt2, 0, 0, 0, 0);
	part_type_direction(pt2, 0, 360, 0, 0);
	part_type_gravity(pt2, 0.1, 270);
}