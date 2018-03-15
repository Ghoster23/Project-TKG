//reads .csv file and generates code to fill room
scr_InitSubMenu();

var type = argument0;

roomwd=global.roomwd;
roomhg=global.roomhg;

///Base Room
/*
instance_create_layer(gx + (global.roomwd / 2) + 64,gy + 48,"Instances",obj_torch);
instance_create_layer(gx+global.roomwd/2-96,gy+48,"Instances",obj_torch);
*/
scr_base_roomgn();

//create grid to house the room
global.room_grid = ds_grid_create(19,9);

//open the right .csv file

switch type{
	case 0:
		room_file = file_text_open_read(working_directory+"roomtype0.csv");
		break;
	case 1:
		
		room_file = file_text_open_read(working_directory+"roomtype1.csv");
		break;
	case 2:
		
		room_file = file_text_open_read(working_directory+"roomtype2.csv");
		break;
	case 3:
		
		room_file = file_text_open_read(working_directory+"roomtype3.csv");
		break;
	case 4:
		
		room_file = file_text_open_read(working_directory+"roomtype4.csv");
		break;
	case 5:
		
		room_file = file_text_open_read(working_directory+"roomtype5.csv");
		break;
	case 6:
		
		room_file = file_text_open_read(working_directory+"roomtype6.csv");
		break;
	case 7:
		
		room_file = file_text_open_read(working_directory+"roomtype7.csv");
		break;
	case 8:
		
		room_file = file_text_open_read(working_directory+"roomtype8.csv");
		break;
	case 9:
		
		room_file = file_text_open_read(working_directory+"roomtype9.csv");
		break;
	case 10:
		
		room_file = file_text_open_read(working_directory+"roomtype10.csv");
		break;
	case 11:
		
		room_file = file_text_open_read(working_directory+"roomtype11.csv");
		break;
	case 12:
		
		room_file = file_text_open_read(working_directory+"roomtype12.csv");
		break;
	case 13:
		
		room_file = file_text_open_read(working_directory+"roomtype13.csv");
		break;
	case 14:
		
		room_file = file_text_open_read(working_directory+"roomtype14.csv");
		break;
	//shop rooms
	case 15:
		instance_create_layer(gx+(roomwd/2)-16-64,gy-16+(roomhg/2),"Instances",obj_sell_drop);
		instance_create_layer(gx+(roomwd/2)-16,gy-16+(roomhg/2),"Instances",obj_sell_drop);
		instance_create_layer(gx+(roomwd/2)-16+64,gy-16+(roomhg/2),"Instances",obj_sell_drop);
		exit;
		break;
	//item room
	case 16:
		instance_create_layer(gx+(roomwd/2)-16,gy-16+(roomhg/2),"Instances",obj_pedestal);
		exit;
		break;
	//speacial room
	case 17:
		instance_create_layer(gx+(roomwd/2),gy+(roomhg/2),"Instances",obj_beacon);
		exit;
		break;
	//boss room	
	case 18:
		instance_create_layer(gx+(roomwd/2),gy+(roomhg/2),"Instances",obj_bdoor);
		exit;
		break;	
	default:
		show_debug_message("That file doen't exist");
		exit;
		break;

}

//read the total number of rooms and pick random room
roomtotal=file_text_read_real(room_file);
file_text_readln(room_file);

room_id=irandom_range(0,roomtotal);
show_debug_message("Sub_Type: " + string(room_id));

//navigate to the right tag based on id

l=room_id*10;
while (l!=0){
	file_text_readln(room_file);
	l-=1;
}
line=file_text_read_string(room_file);
if line!=string(room_id)+",,,,,,,,,,,,,,,,,,"{
	show_debug_message("nao existe uma sala com este numero");
	exit;
}


file_text_readln(room_file);

//ready to parse through the lines


var j=0, i=0, index, count;


repeat(9){
	
	//go through the 19 collums of the grid
	line=file_text_read_string(room_file);
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
	file_text_readln(room_file);
}

//close the file his job is done :3
file_text_close(room_file);


//show_debug_message("type: "+string(type)+" ID: "+string(room_id))

gxtile=gx/32; 
gytile=gy/32;

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
			for(var q=1; q<6; q++){
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
			
			//check if it is not solid and if so place fluid tile underneath
			if(object_get_parent(obj_id)!=obj_above_ground_parent){
				instance_create_layer(gx+32+j*32,gy+96+i*32,"BH",obj_fluid_tile);
			}
			
			instance_create_layer(gx+x_pos,gy+y_pos,obj_layer,obj_id);
		}
		else{
			instance_create_layer(gx+32+j*32,gy+96+i*32,"BH",obj_fluid_tile);
			switch ds_grid_get(obj_gen_controller.floor_grid,gxtile+j+1,gytile+i+2){
			
				case "blue": 
					if(irandom_range(0,10) mod 2 == 0){
						instance_create_layer(gx+32+j*32 + 16,gy+96+i*32 + 21,"Instances",obj_grassblade);
					}
					
					break;
		
				default:  break;
			}
		}
	}
}

//generate the decor

//lets fill them walls now boi (well actually just like one of the walls becuz of perspective but... you dont need to know that ;) )

var skip = false;
var ranvalue = 1;

for(var i=0; i<19; i++){
	//skip door or skip if it was a 2 tile thingy
	//if((i==8) or (i==9) or (i==10)) or skip == true{
	if skip == true{	
		skip=false;
		continue;
	}
	if((i==8) or (i==9) or (i==10)){
		//if there isnt a door there
		skip=false;
		if(type==1 or type==6 or type==7 or type==9 or type==10 or type==11 or type==12 or type==14){
			continue;
		}
		
	}
	//check if there are any rocks etc.
	object=ds_grid_get(global.room_grid, i, 0);
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
			if(object_get_parent(obj_id)==obj_solid_parent) or (object_get_parent(object_get_parent(obj_id))==obj_solid_parent){
				skip=false;
				continue;
			}
	}

	
	//if it is the last bit before gap place a 1 tile thingy
	if(i==7 or i ==18){
		ranvalue=1;
	}
	else{
		ranvalue=irandom_range(1,2);
		
		//check if there isnt an object making it impossible to have a 2 tiler
		object=ds_grid_get(global.room_grid, i+1, 0);
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
				if(object_get_parent(obj_id)==obj_solid_parent) or (object_get_parent(object_get_parent(obj_id))==obj_solid_parent){
					ranvalue=1;
				}
		}
		
	}	
	
	switch(ranvalue){
		case 1:
			//decide what kind of 1 tile thing to put in there - (painting,banner,misc or bookcase)
			switch(irandom_range(0,10)){
				case 0:
				case 1:    //painting
					theobject=obj_painting;	
					break;
				case 2:
				case 3:    //banner
					theobject=obj_banner;	
					break;
				case 4:
				case 5:    //misc
					theobject=obj_1tilemisc;	
					break;
				case 6:    //bookcase
					theobject=obj_bookcase;	
					break;
				case 7:
				case 8:
				case 9:
					theobject = 0;
					instance_create_layer(gx+32+32*i,gy+48,"Instances",obj_torch);
					skip=true;
					break;
				default:
					theobject = 0;
					break;
			}
			if variable_instance_exists(id,"theobject") and theobject!= 0{
				with(instance_create_layer(gx+32+i*32,gy+32*3,"Instances",theobject)){
					tile = 1;
				}
				skip=true;
			}
			break;
			
		case 2:
			//decide what kind of 2 tile thing to put in there - (painting or bookcase)
			switch(irandom_range(0,10)){
				case 0:
				case 1://painting
					theobject=obj_painting;	
					break;
				case 2://bookcase
					theobject=obj_bookcase;	
					break;
				default:
					theobject = 0;
					break;
			} 
			if variable_instance_exists(id,"theobject") and theobject!= 0{
				with(instance_create_layer(gx+32+i*32,gy+32*3,"Instances",theobject)){
					tile = 2;
				}
			}
			skip = true;
			break;
	}

}

//delete the ds grid and we are done :)
ds_grid_destroy(global.room_grid);


