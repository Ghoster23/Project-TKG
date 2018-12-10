{
	//grass_blades
    global.pt_grass_blades3 = part_type_create();
	
	part_type_sprite(global.pt_grass_blades3, spr_pt_grassblades3,true,true,false);
	part_type_size(global.pt_grass_blades3, 0.3, 1, 0, 0);
	part_type_scale(global.pt_grass_blades3, 1, 1);
	part_type_orientation(global.pt_grass_blades3, 0, 0, 0, 0, true);
	part_type_alpha3(global.pt_grass_blades3, 1, 1, 0);
	part_type_life(global.pt_grass_blades3, 30, 35);
	part_type_speed(global.pt_grass_blades3, 6, 8, -0.3, 0);
	part_type_direction(global.pt_grass_blades3, 30, 140, 0, 0);
	part_type_gravity(global.pt_grass_blades3, 0.40, 270);
}



