//sounds
scr_sound(snd_rock_bits1,snd_rock_bits2,snd_rock_bits3);

scr_physics_particle(5,spr_ice_chunks,0,360);

part_particles_create(global.ps,x,y+16,global.pt_haze,8);

mp_grid_clear_rectangle(mp_grid, x, y, x + 4, y + 4);

instance_create_layer(x,y,layer,obj_fluid_tile);

instance_destroy();