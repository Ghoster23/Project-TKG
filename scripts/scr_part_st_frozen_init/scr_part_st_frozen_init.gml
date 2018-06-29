{
	global.pt_st_frozen = part_type_create();
	var pt2 = global.pt_st_frozen;
	part_type_sprite(pt2, spr_ice_chunks, 0, 0, 1);
	part_type_size(pt2, 0.5, 1, -0.005, 0.0);
	part_type_scale(pt2, 1, 1);
	part_type_orientation(pt2, 0, 0, 0, 0, 0);
	part_type_alpha3(pt2, 1, 1, 1);
	part_type_blend(pt2, 0);
	part_type_life(pt2, 70, 90);
	part_type_speed(pt2, 0, 0, 0, 0);
	part_type_direction(pt2, 0, 360, 0, 0);
	part_type_gravity(pt2, 0, 0);
}