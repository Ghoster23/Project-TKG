//set all the diferent volumes, this will be done
//by loading a file later on

//read options file if it does exist

if file_exists("saveoptions.ini"){
	show_debug_message("load from file");
	ini_open("saveoptions.ini");
	global.masterVolume      =ini_read_real("audio",    "master", 0);
	global.musicVolume       =ini_read_real("audio",     "music", 0);
	global.effectsVolume     =ini_read_real("audio",   "effects", 0);
	global.ambientVolume     =ini_read_real("audio",   "ambient", 0);
	global.creatureNoise     =ini_read_real("audio", "creatures", 0);
	
	global.fullscreen        =ini_read_string("video",  "fullscreen", 0);
	global.screenshake       =ini_read_string("video", "screenshake", 0);
	global.textscroll        =ini_read_string("video",  "textscroll", 0);
	global.particles         =ini_read_string("video",   "particles", 0);
	
	global.right_key_bind    =ini_read_real("controls",    "right_key", 0);
	global.left_key_bind     =ini_read_real("controls",     "left_key", 0);
	global.down_key_bind     =ini_read_real("controls",     "down_key", 0); 
	global.up_key_bind       =ini_read_real("controls",       "up_key", 0);
	global.dash_key_bind     =ini_read_real("controls",     "dash_key", 0); 
	global.attack_key_bind   =ini_read_real("controls",   "attack_key", 0); 
	global.mouse_r_key_bind  =ini_read_real("controls",  "mouse_r_key", 0); 
	global.interact_key_bind =ini_read_real("controls", "interact_key", 0); 
	global.consumable_key_bind   =ini_read_real("controls",   "consumable_key", 0); 
	global.menu_key_bind     =ini_read_real("controls",     "menu_key", 0); 
	global.mmap_key_bind     =ini_read_real("controls",     "mmap_key", 0); 
	global.os_mmap_key_bind  =ini_read_real("controls",  "os_mmap_key", 0); 
	global.enter_key_bind    =ini_read_real("controls",    "enter_key", 0); 
	ini_close();
	ini_close();
}
//create new file if it doesn't
else{
	show_debug_message("create file");
	ini_open("saveoptions.ini");
	global.masterVolume  = 1;
	global.musicVolume   = 1;
	global.effectsVolume = 1;
	global.ambientVolume = 1;
	global.creatureNoise = 1;
	ini_write_real("audio",    "master", global.masterVolume);
	ini_write_real("audio",     "music", global.musicVolume);
	ini_write_real("audio",   "effects", global.effectsVolume);
	ini_write_real("audio",   "ambient", global.ambientVolume);
	ini_write_real("audio", "creatures", global.creatureNoise);
	
	global.fullscreen  =     "ON";
	global.screenshake = "normal";
	global.textscroll  = "normal";
	global.particles   = "normal";
	ini_write_string("video",  "fullscreen", global.fullscreen);
	ini_write_string("video", "screenshake", global.screenshake);
	ini_write_string("video",  "textscroll", global.textscroll);
	ini_write_string("video",   "particles", global.particles);
	
	global.right_key_bind    =  ord("D");
	global.left_key_bind     =  ord("A");
	global.down_key_bind     =  ord("S");
	global.up_key_bind       =  ord("W");
	global.dash_key_bind     =  vk_shift;
	global.attack_key_bind   =   mb_left;
	global.mouse_r_key_bind  =  mb_right;
	global.interact_key_bind =  ord("F");
	global.consumable_key_bind   =  ord("E");
	global.menu_key_bind     = vk_escape;
	global.mmap_key_bind     =  ord("M");
	global.os_mmap_key_bind  =    vk_tab;
	global.enter_key_bind    =  vk_enter;
	ini_write_real("controls",    "right_key",    global.right_key_bind);
	ini_write_real("controls",     "left_key",     global.left_key_bind);
	ini_write_real("controls",     "down_key",     global.down_key_bind);
	ini_write_real("controls",       "up_key",       global.up_key_bind);
	ini_write_real("controls",     "dash_key",     global.dash_key_bind);
	ini_write_real("controls",   "attack_key",   global.attack_key_bind);
	ini_write_real("controls",  "mouse_r_key",  global.mouse_r_key_bind);
	ini_write_real("controls", "interact_key", global.interact_key_bind);
	ini_write_real("controls",   "consumable_key",   global.consumable_key_bind);
	ini_write_real("controls",     "menu_key",     global.menu_key_bind);
	ini_write_real("controls",     "mmap_key",     global.mmap_key_bind);
	ini_write_real("controls",  "os_mmap_key",  global.os_mmap_key_bind);
	ini_write_real("controls",    "enter_key",    global.enter_key_bind);
	ini_close();
}

/*if global.fullscreen == "OFF"{
	window_set_size(global.MonitorW,global.MonitorH);
	window_set_position(0, 0);
	window_center();
	window_set_fullscreen(false);
}*/


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



