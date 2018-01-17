/// @description fire
arrow = instance_create_layer(x+15,y+15,"IF",obj_e_arrow_t);
part_particles_create(global.ps,x+32,y+16,global.pt_smoke,5);
arrow.creator = self;