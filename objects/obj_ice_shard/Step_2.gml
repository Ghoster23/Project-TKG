if(destroyed){
	part_particles_create(global.ps_if,x,y,global.pt_icebits,5);
}

event_inherited();

if(collided){
	part_particles_create(global.ps_if,x,y,global.pt_icebits,5);
	instance_destroy(shadow);
	instance_destroy();
}