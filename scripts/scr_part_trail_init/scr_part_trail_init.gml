{
    global.pt_trail=part_type_create();
    var pt2=global.pt_trail
    
    part_type_shape(pt2,pt_shape_disk);
    part_type_size(pt2,0.5,0.6,-0.06,0);
    part_type_scale(pt2,0.4,0.4);
    part_type_color1(pt2,c_red);
    part_type_alpha2(pt2,1,0.5);
    part_type_speed(pt2,1,2.4,0,0);
    part_type_direction(pt2,70,110,0,0);
    //part_type_gravity(pt2,0.03,90);
    part_type_life(pt2,5,7);

}
