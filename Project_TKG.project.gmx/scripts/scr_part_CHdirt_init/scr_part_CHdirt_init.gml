{
    global.pt_CHdirt=part_type_create();
    var pt=global.pt_CHdirt
    
    part_type_shape(pt,pt_shape_square);
    part_type_size(pt,0,0.4,-0.02,0);
    part_type_scale(pt,0.3,0.3);
    part_type_color_rgb(pt,90,90,59,59,47,47);
    part_type_speed(pt,4,9,-0.9,0);
    part_type_direction(pt,70,106,0,0);
	part_type_orientation(pt,0,182,0,0,0);
    part_type_gravity(pt,0.8,270);
    part_type_life(pt,25,30);
}

