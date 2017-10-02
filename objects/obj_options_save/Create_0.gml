//set all the diferent volumes, this will be done
//by loading a file later on

//read options file if it does exist
if file_exists("saveoptions.ini"){
	show_debug_message("load from file");
	ini_open("saveoptions.ini");
	global.masterVolume=ini_read_real("audio", "master", 0);
	global.musicVolume=ini_read_real("audio", "music", 0);
	global.effectsVolume=ini_read_real("audio", "effects", 0);
	global.ambientVolume=ini_read_real("audio", "ambient", 0);
	global.creatureNoise=ini_read_real("audio", "creatures", 0);
	global.fullscreen=ini_read_string("video", "fullscreen", 0);
	global.screenshake=ini_read_string("video", "screenshake", 0);
	global.textscroll=ini_read_string("video", "textscroll", 0);
	global.particles=ini_read_string("video", "particles", 0);
	ini_close();
}
//create new file if it doesn't
else{
	show_debug_message("create file");
	ini_open("saveoptions.ini");
	global.masterVolume=1;
	global.musicVolume=1;
	global.effectsVolume=1;
	global.ambientVolume=1;
	global.creatureNoise=1;
	global.fullscreen="ON"
	global.screenshake="normal"
	global.textscroll="normal"
	global.particles="normal"
	ini_write_real("audio", "master", global.masterVolume);
	ini_write_real("audio", "music", global.musicVolume);
	ini_write_real("audio", "effects", global.effectsVolume);
	ini_write_real("audio", "ambient", global.ambientVolume);
	ini_write_real("audio", "creatures", global.creatureNoise);
	ini_write_string("video", "fullscreen", global.fullscreen);
	ini_write_string("video", "screenshake", global.screenshake);
	ini_write_string("video", "textscroll", global.textscroll);
	ini_write_string("video", "particles", global.particles);
	ini_close();
}

if global.fullscreen=="OFF"{
	window_set_size(global.MonitorW,global.MonitorW);
	window_set_position(0, 0);
	window_center();
	window_set_fullscreen(false);
}

show_debug_message("sound create code ran");
//set master volume gain
audio_master_gain(global.masterVolume);
audio_group_set_gain(ag_ambient,global.musicVolume,0);
audio_group_set_gain(ag_ambient,global.effectsVolume,0);
audio_group_set_gain(ag_ambient,global.ambientVolume,0);
audio_group_set_gain(ag_ambient,global.creatureNoise,0);

//load various audio groups
audio_group_load(ag_music);
audio_group_load(ag_ambient);
audio_group_load(ag_soundfx);
audio_group_load(ag_creatures);

