{
    global.pt_flnrbits=part_type_create();
    var pt3=global.pt_flnrbits
    
    part_type_sprite(pt3,spr_flnrbits,0,0,1);
    part_type_size(pt3,0.8,1.2,0,0);
    part_type_scale(pt3,1,1);
    part_type_alpha3(pt3,1,1,0);
    part_type_speed(pt3,2,4,-0.3,0);
    part_type_direction(pt3,0,360,0,0);
    part_type_orientation(pt3,0,0,0,0,0);
    part_type_life(pt3,200,200);
}
