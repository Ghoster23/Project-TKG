//save
ini_open("saveoptions.ini");
ini_write_real("audio", "master", global.masterVolume);
ini_write_real("audio", "music", global.musicVolume);
ini_write_real("audio", "effects", global.effectsVolume);
ini_write_real("audio", "ambient", global.ambientVolume);
ini_write_real("audio", "creatures", global.creatureNoise);
ini_close();