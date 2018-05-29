{
	global.pt_st_frost = part_type_create();
	var pt2 = global.pt_st_frost;
	part_type_sprite(pt2, spr_haze, 0, 0, 1);
	part_type_size(pt2, 0.55, 0.65, -0.005, 0.0);
	part_type_scale(pt2, 1, 1);
	part_type_orientation(pt2, 0, 0, 0, 0, 0);
	part_type_color3(pt2, 15662013, 15462615, 14411698);
	part_type_alpha3(pt2, 0.1, 0.4, 0);
	part_type_blend(pt2, 1);
	part_type_life(pt2, 10, 12);
	part_type_speed(pt2, 0, 0.3, -0.01, 0);
	part_type_direction(pt2, 0, 360, 0, 0);
	part_type_gravity(pt2, 0.0, 0);
}