if (global.masterVolume >0){
	global.masterVolume-=0.1;
	audio_master_gain(global.masterVolume);
}