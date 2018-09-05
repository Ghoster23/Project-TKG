if(on == true){
	
	if(!instance_exists(front_light)){
		front_light = scr_create_light(x+16,y+16,true,40,make_color_hsv(150,255,200),0.5);
		back_light = scr_create_light(x+16,y+16,false,65,make_color_hsv(130,255,150),0.5);
	}
	
	flameoff = irandom_range(-6,6);
	part_particles_create(global.ps_if,x+16+flameoff,y+16,global.pt_blue_fire,2);
}
