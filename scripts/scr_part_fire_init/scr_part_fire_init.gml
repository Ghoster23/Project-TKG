{
    global.pt_fire=part_type_create();
    var pt=global.pt_fire;
    
    
    part_type_shape(pt,pt_shape_disk);
    part_type_size(pt,0.50,0.60,-0.02,0);
    part_type_scale(pt,0.4,0.4);
    part_type_color3(pt,255,4227327,255);
    part_type_alpha1(pt,1);
    part_type_speed(pt,0.5,0.8,0,0);
    part_type_direction(pt,70,110,0,0);
    part_type_gravity(pt,0.03,90);
    part_type_blend(pt,1);
    part_type_life(pt,25,30);
}
