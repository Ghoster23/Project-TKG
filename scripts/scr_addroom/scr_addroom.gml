var roomtype=global.lvl_room_type;
var numrooms=global.lvl_numrooms+1;

//open the correct file to read
global.room_file_read=file_text_open_read(working_directory + "roomtype"+string(roomtype)+".csv");
file_text_readln(global.room_file_read);

//first lets copy the entire file after the first line to file_string_1
var file_string_1="";
while !file_text_eof(global.room_file_read){
	file_string_1 += file_text_read_string(global.room_file_read) + "\n";
	file_text_readln(global.room_file_read);
}

//close the file
file_text_close(global.room_file_read);

//open the correct file to write
global.room_file_write=file_text_open_write(working_directory + "roomtype"+string(roomtype)+".csv");

//re-write the number of rooms
file_text_write_string(global.room_file_write,string(numrooms)+",,,,,,,,,,,,,,,,,,");

//write the rest of the file
file_text_writeln(global.room_file_write);
file_text_write_string(global.room_file_write,file_string_1);

//and now we add a new empty room
file_text_write_string(global.room_file_write,string(numrooms)+",,,,,,,,,,,,,,,,,,");
file_text_writeln(global.room_file_write);
file_text_write_string(global.room_file_write,"#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#\n#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#\n#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#\n#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#\n#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#\n#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#\n#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#\n#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#\n#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#,#\n");

//close file :) we done here
file_text_close(global.room_file_write);

global.lvl_numrooms+=1;