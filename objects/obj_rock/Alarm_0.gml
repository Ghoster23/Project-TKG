//sounds
scr_sound(snd_rock_bits1,snd_rock_bits2,snd_rock_bits3);

mp_grid_clear_rectangle(mp_grid, x, y, x + 4, y + 4);

repeat(5){
	instance_create_layer(x,y,layer,obj_rockbits);
}
part_particles_create(global.ps,x,y+16,global.pt_smoke,8);

instance_destroy();