if(instance_exists(shadow)){
	var x_ = alarm[0]/life_time;
	
	var scale = 0.2*ln(x_) + 1;
	image_xscale = scale;
	image_yscale = scale;
	
	with(shadow){
		image_xscale = scale;
		image_yscale = scale;
	}
}

event_inherited();

if(collided){
	part_particles_create(global.ps_if,x,y,global.pt_icebits,5);
	instance_destroy(shadow);
	instance_destroy();
}