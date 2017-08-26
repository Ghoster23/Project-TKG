global.gen = true;

scr_InitSubMenu();

//spawn player
switch global.lvl_room_type{
	//down
	case 0:
	case 4:
	case 5:
	case 9:
	case 10:
	case 12:
	case 13:
	case 14:
		instance_create_layer(10*32+16,12*32,"Instances",obj_body);
		break;
	//left
	case 1:
	case 6:
	case 8: 
	case 11:
		instance_create_layer(1*32,7*32+16,"Instances",obj_body);
		break;
	//up
	case 2:
	case 7:
		instance_create_layer(10*32+16,3*32,"Instances",obj_body);
		break;
	//right
	case 3: 
		instance_create_layer(20*32,7*32+16,"Instances",obj_body);
		break;

}

global.gen = false;
temp_room_file = file_text_open_read(working_directory+"roomtypetemp.csv");

global.room_grid = ds_grid_create(19,9);

var j=0, i=0, index, count;
repeat(9){
	
	//go through the 19 collums of the grid
	line=file_text_read_string(temp_room_file);
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
	file_text_readln(temp_room_file);
}

//close the file his job is done :3
file_text_close(temp_room_file);

//read dsgrid and do generation code

for(i=0;i<9;i++){
	for(j=0;j<19;j++){
		object=ds_grid_get(global.room_grid, j, i);
		var offset=0;
		if (object != "#"){
			
			//find comma
			var comma = 1;
			char = string_char_at(object,comma)
			while (char!=","){
				char=string_char_at(object,++comma)
			}
			
			//get the name and layer 
			obj_name=string_copy(object,2,comma-2);
			obj_id=asset_get_index(obj_name);
			obj_layer=string_copy(object,comma+1,string_length(object)-(comma+1));
			
			//determine weather it should have an ofset or not
			for(var q=1; q<5; q++){
				for(var t=0; t<menuText[q,0]; t++){
					if menuText[q,t]==obj_name{
						category=q;
					}
				}
			}
			if category==2{
				offset=16;
			}
			//get coords
			x_pos=32+j*32+offset;
			y_pos=96+i*32+offset;
		
			instance_create_layer(x_pos,y_pos,obj_layer,obj_id);
		}
		
	}

}

//delete the ds grid and we are done :)
ds_grid_destroy(global.room_grid);

global.current_column=0;
global.current_row=0;
global.n_room=true;
instance_create_layer(0,0,"BH",obj_floor_fluid_controller);
