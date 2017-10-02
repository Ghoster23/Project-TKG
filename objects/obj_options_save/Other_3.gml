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
ini_close();

