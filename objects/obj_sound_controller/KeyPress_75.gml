if (global.masterVolume <2){
	global.masterVolume+=0.1;
	audio_master_gain(global.masterVolume);
}