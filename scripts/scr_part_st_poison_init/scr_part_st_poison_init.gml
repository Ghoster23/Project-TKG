{
	global.pt_st_poison = part_type_create();
	var pt2 = global.pt_st_poison;
	part_type_sprite(pt2, spr_part_st_poison, 1, 0, 0);
	part_type_size(pt2, 0.35, 0.45, -0.005, 0.0);
	part_type_scale(pt2, 1, 1);
	part_type_orientation(pt2, 0, 0, 0, 0, 0);
	part_type_color3(pt2, 1222502, 622662, 3490561);
	part_type_alpha3(pt2, 1, 1, 1);
	part_type_blend(pt2, 1);
	part_type_life(pt2, 6, 8);
	part_type_speed(pt2, 0, 0.2, -0.01, 0);
	part_type_direction(pt2, 0, 360, 0, 0);
	part_type_gravity(pt2, 0.05, 90);
}