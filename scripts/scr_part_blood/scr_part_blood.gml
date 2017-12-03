{
    global.pt_blood=part_type_create();
    var pt1=global.pt_blood
    
    part_type_sprite(pt1,spr_particle_circle,0,0,0);
	part_type_color_rgb(pt1,144,150,0,0,0,0);
    part_type_size(pt1,0.1,0.5,-0.001,0);
    part_type_scale(pt1,1,1);
    part_type_alpha3(pt1,1,1,0);
    part_type_speed(pt1,6,8,-0.4,0);
    part_type_direction(pt1,140,220,0,0);
    part_type_orientation(pt1,0,0,0,0,0);
    part_type_life(pt1,200,200);
	part_type_gravity(pt1,0.02,270);
}
