//reads .csv file and generates code to fill room in editor
var roomtype = argument0;
var room_id = argument1;
scr_InitSubMenu();
//open the correct file top edit and view

global.room_file_read=file_text_open_read(working_directory + "roomtype"+string(roomtype)+".csv");

//figure out total number of rooms in the file 
global.lvl_numrooms=file_text_read_real(global.room_file_read);
file_text_readln(global.room_file_read);

//create grid to house the room
global.room_grid = ds_grid_create(19,9);

//navigate to the right tag based on id

l=room_id*10;
while (l!=0){
	file_text_readln(global.room_file_read);
	l-=1;
}

line=file_text_read_real(global.room_file_read);
//show_debug_message("line: "+string(line));
//show_debug_message("room id: "+string(room_id));
if line!=room_id{
	show_debug_message("nao existe uma sala com este numero");
	exit;
}

file_text_readln(global.room_file_read);

//ready to parse through the lines


var j=0, i=0, index, count;


repeat(9){
	
	//go through the 19 collums of the grid
	line=file_text_read_string(global.room_file_read);
	index=1;
	count=0;
	
	for(i=0;i<19;i++){
		
		//if its between ""
		if string_char_at(line,index)==chr(34) {
		
			if (i==18){
				content=string_copy(line,index+1,string_length(line)-(index+1));
			}
			else{
				index+=1;
				while(string_char_at(line,index)!=chr(34)){
					index++;
					count++;
				}	
				content=string_copy(line,index-count,count);
				index+=2;
				count=0;
			}
		}
		
		//if its not
		else{
			if (i==18){
				content=string_copy(line,index,string_length(line)-(index-1));
			}
			else{
				while(string_char_at(line,index)!=chr(44)){
					index++;
					count++;
				}	
				content=string_copy(line,index-count,count);
				index+=1;
				count=0;
			}
		}
		
		//add content to grid	
		ds_grid_add(global.room_grid,i,j,content);
	}
	
	//next line
	j++;
	file_text_readln(global.room_file_read);
}

//close the file his job is done :3
file_text_close(global.room_file_read);


//read dsgrid and do generation code
var id_counter=0;
for(i=0;i<9;i++){
	for(j=0;j<19;j++){
		object=ds_grid_get(global.room_grid, j, i);
		if (object != "#"){
			//find comma
			var comma = 1;
			char = string_char_at(object,comma)
			while (char!=","){
				char=string_char_at(object,++comma)
			}
			//get the name
			obj_name=string_copy(object,2,comma-2);
			
			//find the category and subcategory of the obj name in the arra
			for(var q=1; q<6; q++){
				for(var t=0; t<menuText[q,0]; t++){
					if menuText[q,t]==obj_name{
						category=q;
						subcategory=t;
					}
				}
			}
			global.square_ID[id_counter].block_ID[0]=category;
			global.square_ID[id_counter].block_ID[1]=subcategory;
			scr_category([category,subcategory],global.square_ID[id_counter]);	
			
		}
		else{
			global.square_ID[id_counter].block_ID[0]=0;
			global.square_ID[id_counter].block_ID[1]=0;
			global.square_ID[id_counter].sprite_index=spr_space;
			global.square_ID[id_counter].image_index=0;	
		}
		id_counter+=1;
	}

}

//delete the ds grid and we are done :)
ds_grid_destroy(global.room_grid);