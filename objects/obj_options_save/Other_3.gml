//save
ini_open("saveoptions.ini");
ini_write_real("audio", "master", global.masterVolume);
ini_write_real("audio", "music", global.musicVolume);
ini_write_real("audio", "effects", global.effectsVolume);
ini_write_real("audio", "ambient", global.ambientVolume);
ini_write_real("audio", "creatures", global.creatureNoise);
ini_write_string("video", "fullscreen", global.fullscreen);
ini_write_string("video", "screenshake", global.screenshake);
ini_write_string("video", "textscroll", global.textscroll);
ini_write_string("video", "particles", global.particles);
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

