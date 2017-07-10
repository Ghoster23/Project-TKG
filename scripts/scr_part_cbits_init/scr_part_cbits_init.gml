{
    global.pt_cbits=part_type_create();
    var pt1=global.pt_cbits
    
    part_type_sprite(pt1,spr_cbits,0,0,1);
    part_type_size(pt1,1,1,0,0);
    part_type_scale(pt1,1,1);
    part_type_alpha3(pt1,1,1,0);
    part_type_speed(pt1,4,6,-0.3,0);
    part_type_direction(pt1,140,220,0,0);
    part_type_orientation(pt1,0,0,0,0,0);
    part_type_life(pt1,200,200);
}
