{	
	global.pt_sow_fire = part_type_create();
	var pt2=global.pt_sow_fire;
	
	part_type_sprite(pt2, spr_particle_circle,false,false,false);
	part_type_size(pt2, 0.3, 0.6, -0.03, 0.05);
	part_type_scale(pt2, 1, 1);
	part_type_orientation(pt2, 90, 94, 0, 0, 0);
	part_type_color3(pt2, 16777215, 16777088, 16776960);
	part_type_alpha3(pt2, 1, 1, 1);
	part_type_blend(pt2, 0);
	part_type_life(pt2, 2, 15);
	part_type_speed(pt2, 0.05, 1.50, -0.05, 0.30);
	part_type_direction(pt2, 87, 94, 0, 0);
	part_type_gravity(pt2, 0.01, 90);

}

