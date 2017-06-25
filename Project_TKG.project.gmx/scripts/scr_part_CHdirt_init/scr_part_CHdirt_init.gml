{
    global.pt_CHdirt=part_type_create();
    var pt=global.pt_CHdirt
    
    part_type_shape(pt,pt_shape_square);
    part_type_size(pt,0,0.4,-0.02,0);
    part_type_scale(pt,1,1);
    part_type_color_rgb(pt,34,61,23,40,17,22);
    part_type_speed(pt,5,13,-0.5,0);
    part_type_direction(pt,70,106,0,0);
	part_type_orientation(pt,0,182,0,0,0);
    part_type_gravity(pt,0.8,270);
    part_type_life(pt,20,40);
}

