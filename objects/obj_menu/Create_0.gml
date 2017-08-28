//shhhhh this shouldnt be here but its our little secret ;)
global.lvl_room_type=0;
global.lvl_room_number=0;

state="play";

posx1=mouse_x
posy1=mouse_y

var file_l;

file_l = file_text_open_read(working_directory + "\\file_l.txt");
global.language = file_text_read_real(file_l);
file_text_close(file_l);
