if global.language = 2 {
    if point_in_rectangle(mouse_x,mouse_y,258,183,357,198) {
        global.language = 1;
        ///experimental
        var file_l;
		
        file_l = file_text_open_write(working_directory + "\\file_l.txt");
        file_text_write_real(file_l,1);
        file_text_writeln(file_l);
        file_text_write_real(file_l,global.mvolume);
        file_text_close(file_l);
		
    }
}
else if global.language = 1 {
    if point_in_rectangle(mouse_x,mouse_y,258,183,357,198) {
        global.language = 2;
        var file_l;
		
        file_l = file_text_open_write(working_directory + "\\file_l.txt");
        file_text_write_real(file_l,2);
        file_text_writeln(file_l);
        file_text_write_real(file_l,global.mvolume);
        file_text_close(file_l);
		
    }
}

