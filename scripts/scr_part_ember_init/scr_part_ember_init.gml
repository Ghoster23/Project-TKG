{
    global.pt_embers =part_type_create();
    var pt2=global.pt_embers;
    
    part_type_sprite(pt2,spr_particle_circle,false,false,false);
    part_type_size(pt2,0.3,0.6,-0.1,0);
    part_type_scale(pt2,1.1,1.1);
    part_type_color3(pt2,255,4227327,255);
    part_type_alpha1(pt2,1);
    part_type_speed(pt2,1,2,0,0);
    part_type_direction(pt2,70,110,0,0);
    part_type_gravity(pt2,0.06,90);
    part_type_blend(pt2,1);
    part_type_life(pt2,4,6);

}