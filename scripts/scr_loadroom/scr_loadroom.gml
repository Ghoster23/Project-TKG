//reads .csv file and generates code to fill room in editor
{
var rm_type = argument0;
var rm_id   = argument1;
var rm_fl_n = working_directory + "roomtype"+string(rm_type)+".csv";
var rm_fl   = file_text_open_read(rm_fl_n);

//figure out total number of rooms in the file
var rm_count = file_text_read_real(rm_fl);
file_text_close(rm_fl);

if(rm_id <= rm_count){
	var grid = scr_load_room_to_grid(rm_type,rm_id);
}else {
	show_debug_message("No room corresponding to " + string(rm_id) + ". Loading 0.");
	var grid = scr_load_room_to_grid(rm_type,0);
}

//read dsgrid and do generation code
var id_counter = 0;
for(var i = 0; i < 9; i++){
	for(var j = 0; j < 19; j++){
		var object = ds_grid_get(grid, j, i);
		
		if (is_array(object)){
			//get the name
			var obj_name = object_get_name(object[0]);
			
			var category, subcategory;
			
			//find the category and subcategory of the obj name in the arra
			for(var q = 1; q < 6; q++){
				for(var t = 0; t < menuText[q,0]; t++){
					if(menuText[q,t+1] == obj_name){
						category    = q;
						subcategory = t+1;
					}
				}
			}
			
			global.square_ID[id_counter].block_ID[0] = category;
			global.square_ID[id_counter].block_ID[1] = subcategory;
			scr_category([category,subcategory],global.square_ID[id_counter]);	
			
		}
		else{
			global.square_ID[id_counter].block_ID[0] = 0;
			global.square_ID[id_counter].block_ID[1] = 0;
			global.square_ID[id_counter].sprite_index = spr_space;
			global.square_ID[id_counter].image_index = 0;	
		}
		id_counter+=1;
	}

}

//delete the ds grid and we are done :)
ds_grid_destroy(grid);
}