{
    global.pt_danger = part_type_create();
    var pt2 = global.pt_danger;
    
	part_type_sprite(pt2,spr_sm_lightning, 1, 0, 0);
	part_type_size(pt2, 0.6, 0.9, -0.01, 0);
	part_type_scale(pt2, 1, 0.40);
	part_type_orientation(pt2, 0, 0, 0, 0, 1);
	part_type_color3(pt2, 8421631, 128, 255);
	part_type_alpha3(pt2, 1, 1, 1);
	part_type_blend(pt2, 1);
	part_type_life(pt2, 5, 10);
	part_type_speed(pt2, 3, 3, -0.30, 0);
	part_type_direction(pt2, 0, 360, 0, 1);
	part_type_gravity(pt2, 0, 0);

}