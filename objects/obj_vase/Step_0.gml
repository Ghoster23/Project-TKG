if (broken){
    alarm[0]=0.04*room_speed;
	//sound
	scr_sound(snd_hit_vase);
	scr_sound(snd_vase_bits1,snd_vase_bits2,snd_vase_bits3);
		
	//shader for damage
	flash = true;
		
    scr_drops();
}

