{
    global.pt_blue_fire=part_type_create();
    var pt=global.pt_blue_fire;
    
    
    part_type_sprite(pt,spr_particle_circle,false,false,false);
    part_type_size(pt,0.6,1.2,-0.02,0);
    part_type_scale(pt,1,1);
    part_type_color3(pt,16777215,13076224,c_navy);
    part_type_alpha1(pt,1);
    part_type_speed(pt,0.5,0.8,0,0);
    part_type_direction(pt,70,110,0,0);
    part_type_gravity(pt,0.03,90);
    part_type_blend(pt,1);
    part_type_life(pt,25,30);
}
