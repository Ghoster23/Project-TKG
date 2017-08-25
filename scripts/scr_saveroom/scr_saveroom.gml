//reads .csv file and generates code to fill room in editor
var roomtype = argument0;
var room_id = argument1;
scr_InitSubMenu();

//open the file to read 
global.room_file_read=file_text_open_read(working_directory + "roomtype"+string(roomtype)+".csv");

//determine how to break this up
var lines1=room_id*10+2;					//number of lines to copy for the first bit
										    //after that 9 line skips and then read till eof

//read first bit into string
var file_string_1= "";

repeat(lines1){
	file_string_1 +=file_text_read_string(global.room_file_read) + "\n";
	file_text_readln(global.room_file_read);
}

//skip 9 lines
repeat(9){
	file_text_readln(global.room_file_read);
}

//read the after bit
var file_string_2="";
while !file_text_eof(global.room_file_read){
	file_string_2 += file_text_read_string(global.room_file_read) + "\n";
	file_text_readln(global.room_file_read);
}

//close the file
file_text_close(global.room_file_read);

//open the correct file to write
global.room_file_write=file_text_open_write(working_directory + "roomtype"+string(roomtype)+".csv");


//write the contents of file_string1
file_text_write_string(global.room_file_write,file_string_1);

//writting the bit thats edited

var id_counter=0;
for(i=0;i<9;i++){

	var amalgamation="";
	
	for(j=0;j<19;j++){
		var category = global.square_ID[id_counter].block_ID[0];
		var subcategory = global.square_ID[id_counter].block_ID[1];
		
		if (category == 0 and subcategory ==0){
			amalgamation+="#,";
		}
		else{
			var obj_name = menuText[category,subcategory];
			var obj_layer = scr_objlayer(obj_name);
			amalgamation+=("\"["+obj_name+","+obj_layer+"]\",");
			
		}
		id_counter+=1;
	}
	amalgamation = string_delete(amalgamation,string_length(amalgamation),1)
	file_text_write_string(global.room_file_write,amalgamation);
	file_text_writeln(global.room_file_write);

}

//write the contents of file_string_2
file_text_write_string(global.room_file_write,file_string_2);

//close file
file_text_close(global.room_file_write);