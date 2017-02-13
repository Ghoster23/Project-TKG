{
    global.pt_sflame=part_type_create();
    var pt2=global.pt_sflame
    
    part_type_shape(pt2,pt_shape_disk);
    part_type_size(pt2,0.50,0.60,-0.02,0);
    part_type_scale(pt2,0.35,0.35);
    part_type_color3(pt2,c_white,c_red,c_red);
    part_type_alpha2(pt2,0.6,0.1);
    part_type_speed(pt2,0.5,0.8,0,0);
    part_type_direction(pt2,70,110,0,0);
    part_type_gravity(pt2,0.03,90);
    part_type_blend(pt2,1);
    part_type_life(pt2,3,6);

}

