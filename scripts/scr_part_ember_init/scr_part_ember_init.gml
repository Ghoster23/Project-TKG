{
    global.pt_embers =part_type_create();
    var pt2=global.pt_embers;
    
    pt2 = part_type_create();
	part_type_shape(pt2, pt_shape_pixel);
	part_type_size(pt2, 1, 1, 0, 0);
	part_type_scale(pt2, 1, 1);
	part_type_orientation(pt2, 0, 0, 0, 0, 0);
	part_type_color3(pt2, 4227327, 128, 0);
	part_type_alpha3(pt2, 1, 1, 1);
	part_type_blend(pt2, 0);
	part_type_life(pt2, 10, 60);
	part_type_speed(pt2, 0.60, 1, 0, 0);
	part_type_direction(pt2, -13, 201, 0, 0);
}