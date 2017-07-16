if lit{
	part_particles_create(global.ps_if, x + 16, y+3, global.pt_fire, 1);

	if place_meeting(x,y,obj_swing){
		lit = false;
		part_particles_create(global.ps_if, x + 16, y, global.pt_smoke, 5);
	}
}

o++;