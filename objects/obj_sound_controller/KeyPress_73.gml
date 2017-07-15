if (global.effectsVolume <2){
	global.effectsVolume+=0.1;
	audio_group_set_gain(ag_soundfx,global.effectsVolume,0);
}