if global.menu2_state = 0 && ultimate_back=false{
    if point_in_rectangle(mouse_x,mouse_y,279,271,370,293) {
        alarm[0]=7;
        global.byebyeswords = true;
        ultimate_back=true;
    }
} else if (global.menu2_state = 1 || global.menu2_state = 3) {
    if point_in_rectangle(mouse_x,mouse_y,279,271,370,293) {
        global.menu2_state = 0;
        instance_create_layer(0,0,layer,obj_menu2_state0);
    }
} else if global.menu2_state = 2 {
    if point_in_rectangle(mouse_x,mouse_y,279,271,370,293){   
        ///open file for storing variables
        var file_l;
        file_l = file_text_open_write(working_directory + "\\file_l.txt");
        file_text_write_real(file_l,global.language);
        file_text_writeln(file_l);
        file_text_write_real(file_l,global.mvolume);
        file_text_writeln(file_l);
        file_text_write_real(file_l,global.sfxvolume);
        file_text_close(file_l);
        
        global.menu2_state = 0;
        instance_create_layer(0,0,layer,obj_menu2_state0);
    }
}


