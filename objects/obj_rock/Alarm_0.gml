//sounds
scr_sound(snd_rock_bits1,snd_rock_bits2,snd_rock_bits3);

repeat(5){
	instance_create_layer(x,y,layer,obj_rockbits);
}
part_particles_create(global.ps,x,y+16,global.pt_smoke,8);

instance_destroy();