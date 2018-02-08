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
ini_write_real("controls", "right_key", global.right_key_bind);
ini_write_real("controls", "left_key", global.left_key_bind);
ini_write_real("controls", "down_key", global.down_key_bind);
ini_write_real("controls", "up_key", global.up_key_bind);
ini_write_real("controls", "dash_key", global.dash_key_bind);
ini_write_real("controls", "attack_key", global.attack_key_bind);
ini_write_real("controls", "mouse_r_key", global.mouse_r_key_bind);
ini_write_real("controls", "interact_key", global.interact_key_bind);
ini_write_real("controls", "consumable_key", global.consumable_key_bind);
ini_write_real("controls", "menu_key", global.menu_key_bind);
ini_write_real("controls", "mmap_key", global.mmap_key_bind);
ini_write_real("controls", "os_mmap_key", global.os_mmap_key_bind);
ini_write_real("controls", "enter_key", global.enter_key_bind);
ini_close();

