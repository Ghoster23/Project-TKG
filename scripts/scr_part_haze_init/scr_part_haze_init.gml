{
	global.pt_haze = part_type_create();
	part_type_sprite(global.pt_haze, spr_haze, 0, 0, 1);
	part_type_size(global.pt_haze, 1, 1, -0.03, 0);
	part_type_scale(global.pt_haze, 1, 1);
	part_type_orientation(global.pt_haze, 0, 0, 0, 0, 0);
	part_type_color3(global.pt_haze, 16777215, 16777215, 16777215);
	part_type_alpha3(global.pt_haze, 0.20, 0.40, 0);
	part_type_blend(global.pt_haze, 1);
	part_type_life(global.pt_haze, 20, 30);
	part_type_speed(global.pt_haze, 0.20, 0.40, -0.02, 0);
	part_type_direction(global.pt_haze, 0, 360, 0, 0);
	part_type_gravity(global.pt_haze, 0, 0);
}
