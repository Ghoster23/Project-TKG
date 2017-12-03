{
	global.pt_boinv = part_type_create();
	var pt2 = global.pt_boinv;
	part_type_sprite(pt2, spr_morpho, 1, 0, 0);
	part_type_size(pt2, 1, 1, -0.12, 0);
	part_type_scale(pt2, 1, 1);
	part_type_orientation(pt2, 0, 358, 10, 0, 1);
	part_type_color3(pt2, 8454143, 4227327, 33023);
	part_type_alpha3(pt2, 1, 1, 1);
	part_type_blend(pt2, 1);
	part_type_life(pt2, 30, 10);
	part_type_speed(pt2, 5, 5, -0.8, 0);
	part_type_direction(pt2, 0, 360, 0, 0);
	part_type_gravity(pt2, 0, 90);

}