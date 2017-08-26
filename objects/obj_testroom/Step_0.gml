if global.frozen=true{ 
    exit;
}

if point_in_rectangle(mouse_x,mouse_y,x,y,x+55,y+25){
	image_index=1;
	if mouse_check_button_pressed(mb_left){
		image_index=0;
			
		//create temp text file
		temp_room_file=file_text_open_write(working_directory + "roomtypetemp.csv");
		
		scr_InitSubMenu();
		
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

/*
if point_in_rectangle(mouse_x,mouse_y,x,y,x+55,y+25){
	image_index=1;
	if mouse_check_button_pressed(mb_left){
		image_index=0;
			
		scr_InitSubMenu();
			
		//copy things for creation code to ds grid
		global.temp_lvl_grid=ds_grid_create(4,171);
		ds_grid_clear(global.temp_lvl_grid,-1);
			
		var id_counter=0;
		for(i=0;i<9;i++){

			for(j=0;j<19;j++){
				var category = global.square_ID[id_counter].block_ID[0];
				var subcategory = global.square_ID[id_counter].block_ID[1];
				var offset = 0;
					
				if category != 0 and subcategory !=0{
					var obj_name = menuText[category,subcategory];
					var obj_layer = scr_objlayer(obj_name);
			
					if category==2{
						offset=16;
					}
					//get coords
					x_pos=32+j*32+offset;
					y_pos=96+i*32+offset;
						
					var obj_id=asset_get_index(obj_name);
						
					ds_grid_set(global.temp_lvl_grid,0,id_counter,x_pos);
					ds_grid_set(global.temp_lvl_grid,1,id_counter,y_pos);
					ds_grid_set(global.temp_lvl_grid,2,id_counter,obj_layer);
					ds_grid_set(global.temp_lvl_grid,3,id_counter,obj_id);
					instance_create_layer(x_pos,y_pos,obj_layer,obj_id);
				}
				id_counter+=1;
			}
		}		
		room_goto(rm_lvl_editor_test);
			
	}
}
else{
	image_index=0;
}
*/


