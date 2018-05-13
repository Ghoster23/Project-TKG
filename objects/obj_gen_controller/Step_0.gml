randomize();

//End the gen
if once == false && roomgenerated >= roomstogenerate {
	once = true;
	
	global.gen = false;
	
	ds_list_destroy(available_rooms);
	
	instance_create_layer( 0, 0, "IF", obj_AI_controller);
	comp += 10;
	
	instance_destroy();
}

///Generation
if(global.gen){
	//Reset attempts
	attempts = 0;
	
	//Obtain a position
	l_size = ds_list_size(available_rooms);
	
	if(l_size > 0){
		pos    = irandom(l_size - 1);
	
		room_  = ds_list_find_value(available_rooms,pos);
		
		//Get grid coords
		col = room_ mod 10;
		row = room_ div 10;
		grid_id = row * 8 + col;
	
		//Reset adjacencies
		adj = 0;

		//Gen the normal rooms
		if(roomgenerated < 12){	
			///Find a type that works
			while(adj == 0){			
				///Determine Room type
				type = irandom(14);
			
				///Check adjacencies
				scr_gen_check_adj();
			}
		
			///Add new adjacent rooms to available rooms
			if(u == "NULL" && ds_list_find_index(available_rooms, room_ - 10) == -1){
				ds_list_add(available_rooms, room_ - 10);

			}
	
			if(d == "NULL" && ds_list_find_index(available_rooms, room_ + 10) == -1){
				ds_list_add(available_rooms, room_ + 10);

			}
	
			if(l == "NULL" && ds_list_find_index(available_rooms,  room_ - 1) == -1){
				ds_list_add(available_rooms,  room_ - 1);

			}
	
			if(r == "NULL" && ds_list_find_index(available_rooms,  room_ + 1) == -1){
				ds_list_add(available_rooms,  room_ + 1);

			}
		

		//Special Rooms
		}else {
			type = roomgenerated + 3;
		
			//Check adjacencies
			scr_gen_check_adj();
		
	    	///Find spot that works
			while(adj > 2){
			
				///Check adjacencies
				scr_gen_check_adj();
				
				ds_list_delete(available_rooms,ds_list_find_index(available_rooms,room_));
				var size = ds_list_size(available_rooms);
				
				if(size <= 0){
					instance_destroy();
				}else {
					pos   = irandom(size - 1);
					room_ = ds_list_find_value(available_rooms,pos);
	
					col = room_ mod 10;
					row = room_ div 10;
				
					grid_id = row * 8 + col;
				}
			}
		
			//Register placement
			switch roomgenerated{
				case 12:
					global.rm_store_id = room_;
				break;
				case 13:
					global.rm_item_id  = room_;
				break;
				case 14:
					global.rm_sp_id    = room_;
				break;
				case 15:
					global.rm_boss_id  = room_;
				break;
			}
		}
		
		//Gen the room
		///Place cursor
		gx = global.roomwd * col;
		gy = global.roomhg * row;
		
		///Fill the room
		scr_roomgn(type);
		
		///Register it
		global.ds_roomgrid[# 1, grid_id] = type;
	
		roomgenerated++;
		
		comp += 4;
	
		///Doors
		scr_gen_make_doors();
	
		//Update available room list
		///Remove just filled in room
		ds_list_delete(available_rooms,ds_list_find_index(available_rooms,room_));
		
	}else {
		instance_destroy();
		
	}	
}