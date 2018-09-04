//set all the diferent volumes, this will be done
//by loading a file later on

//read options file if it does exist

if file_exists("saveoptions.ini"){
	show_debug_message("Load from file.");
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
	
	global.key_binds[key_id.right]     = ini_read_real("controls",     "right_key", 0);
	global.key_binds[key_id.left]      = ini_read_real("controls",      "left_key", 0);
	global.key_binds[key_id.down]      = ini_read_real("controls",      "down_key", 0); 
	global.key_binds[key_id.up]        = ini_read_real("controls",        "up_key", 0);
	global.key_binds[key_id.dash]      = ini_read_real("controls",      "dash_key", 0); 
	global.key_binds[key_id.skill_1]   = ini_read_real("controls",    "attack_key", 0); 
	global.key_binds[key_id.skill_2]   = ini_read_real("controls",   "mouse_r_key", 0); 
	global.key_binds[key_id.interact]  = ini_read_real("controls",  "interact_key", 0); 
	global.key_binds[key_id.consume]   = ini_read_real("controls","consumable_key", 0);
	global.key_binds[key_id.utilize]   = ini_read_real("controls",   "utilize_key", 0);
	global.key_binds[key_id.menu]      = ini_read_real("controls",      "menu_key", 0); 
	global.key_binds[key_id.map]       = ini_read_real("controls",      "mmap_key", 0);
	global.key_binds[key_id.inv]       = ini_read_real("controls",       "inv_key", 0);
	global.key_binds[key_id.mmap]      = ini_read_real("controls",   "os_mmap_key", 0); 
	global.key_binds[key_id.m_confirm] = ini_read_real("controls",     "enter_key", 0); 
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
	
	global.key_binds[key_id.right]     = ord("D");
	global.key_binds[key_id.left]      = ord("A");
	global.key_binds[key_id.down]      = ord("S"); 
	global.key_binds[key_id.up]        = ord("W");
	global.key_binds[key_id.dash]      = vk_lshift; 
	global.key_binds[key_id.skill_1]   = mb_left; 
	global.key_binds[key_id.skill_2]   = mb_right; 
	global.key_binds[key_id.interact]  = ord("F"); 
	global.key_binds[key_id.consume]   = ord("E");
	global.key_binds[key_id.utilize]   = vk_space;
	global.key_binds[key_id.menu]      = vk_escape; 
	global.key_binds[key_id.map]       = ord("M");
	global.key_binds[key_id.inv]       = ord("I");
	global.key_binds[key_id.mmap]      = vk_tab; 
	global.key_binds[key_id.m_confirm] = vk_enter; 
	ini_write_real("controls",      "right_key", global.key_binds[key_id.right]);
	ini_write_real("controls",       "left_key", global.key_binds[key_id.left]);
	ini_write_real("controls",       "down_key", global.key_binds[key_id.down]);
	ini_write_real("controls",         "up_key", global.key_binds[key_id.up]);
	ini_write_real("controls",       "dash_key", global.key_binds[key_id.dash]);
	ini_write_real("controls",     "attack_key", global.key_binds[key_id.skill_1]);
	ini_write_real("controls",    "mouse_r_key", global.key_binds[key_id.skill_2]);
	ini_write_real("controls",   "interact_key", global.key_binds[key_id.interact]);
	ini_write_real("controls", "consumable_key", global.key_binds[key_id.consume]);
	ini_write_real("controls",    "utilize_key", global.key_binds[key_id.utilize]);
	ini_write_real("controls",       "menu_key", global.key_binds[key_id.menu]);
	ini_write_real("controls",       "mmap_key", global.key_binds[key_id.map]);
	ini_write_real("controls",        "inv_key", global.key_binds[key_id.inv]);
	ini_write_real("controls",    "os_mmap_key", global.key_binds[key_id.mmap]);
	ini_write_real("controls",      "enter_key", global.key_binds[key_id.m_confirm]);
	ini_close();
}

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



