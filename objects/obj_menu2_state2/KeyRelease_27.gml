/// @description open file for storing variables
var file_l;
file_l = file_text_open_write(working_directory + "\\file_l.txt");
file_text_write_real(file_l,global.language);
file_text_writeln(file_l);
file_text_write_real(file_l,global.mvolume);
file_text_writeln(file_l);
file_text_write_real(file_l,global.sfxvolume);
file_text_close(file_l);

global.menu2_state = 0;
instance_create_layer(0,0,obj_menu2_state2.layer,obj_menu2_state0);

