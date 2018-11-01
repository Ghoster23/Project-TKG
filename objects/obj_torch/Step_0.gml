if not global.pause {
	if lit{
		part_particles_create(global.ps_if, x + 16, y+3, global.pt_fire, 1);
		if(front_light == noone){
			front_light = scr_create_light(x+16,y+4,true,25,make_color_hsv(30,255,255),0.3);
		}

		if place_meeting(x,y,obj_greatswing){
			instance_destroy(front_light);
			front_light = noone;
			lit = false;
			part_particles_create(global.ps_ps, x + 16, y, global.pt_smoke, 5);
		}
	}
	
	o++;
}