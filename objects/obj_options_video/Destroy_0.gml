/// @description Insert description here
// You can write your code in this editor
ini_open("saveoptions.ini");
ini_write_string("video",  "fullscreen", global.fullscreen);
ini_write_string("video", "screenshake", global.screenshake);
ini_write_string("video",  "textscroll", global.textscroll);
ini_write_string("video",   "particles", global.particles);
ini_close();