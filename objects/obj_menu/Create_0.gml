global.options=false;

posx1=mouse_x
posy1=mouse_y

var file_l;
file_l = file_text_open_read(working_directory + "\\file_l.txt");
global.language = file_text_read_real(file_l);
file_text_readln(file_l);
global.mvolume = file_text_read_real(file_l);
file_text_readln(file_l);
global.sfxvolume = file_text_read_real(file_l);
file_text_close(file_l);