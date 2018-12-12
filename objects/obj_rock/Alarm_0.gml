//sounds
scr_sound(snd_rock_bits1,snd_rock_bits2,snd_rock_bits3);

mp_grid_clear_rectangle(mp_grid, x, y, x + 4, y + 4);

scr_physics_particle(5,spr_flnrbits,0,360);

part_particles_create(global.ps,x,y+16,global.pt_smoke,8);

instance_destroy();