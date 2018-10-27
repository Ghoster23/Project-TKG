if die==false{
	flash=false;
}
else{
	//boom destroyed
	part_type_direction(global.pt_bbits,explosiondir,explosiondir,0,0);
	part_emitter_burst(global.ps_if,sm,global.pt_smoke,10)
	part_emitter_burst(global.ps,em,global.pt_bbits,5)
	part_emitter_destroy(global.ps, em);
	part_emitter_destroy(global.ps_if, sm);
	//sounds
	scr_sound(snd_wood_bits1,snd_wood_bits2,snd_wood_bits3);
	mp_grid_clear_cell(mp_grid,x div 32, y div 32);
	
	instance_destroy();
}