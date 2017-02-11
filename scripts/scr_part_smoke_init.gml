{
    global.pt_smoke=part_type_create();
    var pt=global.pt_smoke
    
    part_type_sprite(pt,spr_smoke,1,1,0);
    part_type_size(pt,1,1,0,0);
    part_type_scale(pt,1,1);
    part_type_alpha2(pt,1,0.3);
    part_type_speed(pt,0.5,0.6,-0.01,0);
    part_type_direction(pt,0,359,0,0);
    part_type_orientation(pt,0,0,0,0,1);
    part_type_life(pt,30,40);

}
