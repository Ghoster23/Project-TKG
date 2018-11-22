if global.frozen=true{ 
    exit;
}

if point_in_rectangle(mouse_x,mouse_y,x,y,x+55,y+25){
	image_index=1;
	if mouse_check_button_pressed(mb_left){
		image_index=0;
			
		//create temp text file
		temp_room_file=file_text_open_write(working_directory + "roomtypetemp.csv");
		
		file_text_write_real(temp_room_file,1);
		file_text_writeln(temp_room_file);
		file_text_write_real(temp_room_file,0);
		file_text_writeln(temp_room_file);
		
		scr_InitSubMenu();
		
		var id_counter = 0;
		for(var i = 0; i < 9; i++){

			var amalgamation="";
	
			for(var j = 0; j < 19; j++){
				var category    = global.square_ID[id_counter].block_ID[0];
				var subcategory = global.square_ID[id_counter].block_ID[1];
		
				if (category == 0 and subcategory == 0){
					amalgamation += "0";
				}
				else{
					var obj_name  = menuText[category,subcategory];
					var obj_layer = scr_objlayer(obj_name);
					
					amalgamation+="\"["+obj_name+","+obj_layer+"]\"";
			
				}
				
				if(j < 18){ amalgamation += ";"; }
				id_counter += 1;
			}
			
			file_text_write_string(temp_room_file,amalgamation);
			file_text_writeln(temp_room_file);
		}
		
		file_text_close(temp_room_file);
		
		room_goto(rm_lvl_editor_test);
			
	}
}
else{
	image_index=0;
}



