{
    global.pt_shine = part_type_create();
    var pt2 = global.pt_shine;
    
	part_type_sprite(pt2, spr_pixel,false,false,false);
	part_type_size(pt2, 0.5, 1, -0.01, 2);
	part_type_scale(pt2, 1, 1);
	part_type_orientation(pt2, 45, 45, 0, 0, 0);
	part_type_color3(pt2, 16777215, 11970646, 2960916);
	part_type_alpha3(pt2, 0.50, 0.90, 1);
	part_type_blend(pt2, 1);
	part_type_life(pt2, 50, 50);
	part_type_speed(pt2, 0.10, 1, -0.90, 1);
	part_type_direction(pt2, 70, 110, 0, 0);
	part_type_gravity(pt2, 0, 90);

}