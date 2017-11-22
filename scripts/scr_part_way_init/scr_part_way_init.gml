{
	global.pt_way = part_type_create();
	var pt2 = global.pt_way;
	part_type_sprite(pt2, spr_morpho, 1, 0, 0);
	part_type_size(pt2, 0.5, 0.5, -0.02, 0);
	part_type_scale(pt2, 1, 1);
	part_type_orientation(pt2, 0, 360, 0, 10, 1);
	part_type_color3(pt2, 16768449, 16777215, 16777215);
	part_type_alpha3(pt2, 0.50, 0.74, 0.30);
	part_type_blend(pt2, 1);
	part_type_life(pt2, 100, 100);
	part_type_speed(pt2, 0.50, 0.80, -0.01, 0);
	part_type_direction(pt2, 0, 360, 0, 0);
	part_type_gravity(pt2, 0, 90);
}