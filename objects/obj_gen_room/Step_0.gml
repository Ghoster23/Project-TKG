switch state {
	#region Layout
	case 0: //Moving		
		var inst = instance_place(x,y,obj_gen_room);
		var dir  = -1;
		
		#region Positioning
		while(inst != noone){	
			#region Move
			var len  = 0;
			var dirs = 0;;
	
			#region Possible dirs
			if(x > generator.x){
				dirs[len] = 180;
				len++;
			}
	
			if(y > generator.y){
				dirs[len] = 90;
				len++;
			}
	
			if(x < wd * (gen_col - 1)){
				dirs[len] = 0;
				len++;
			}
	
			if(y < hg * (gen_row - 1)){
				dirs[len] = 270;
				len++;
			}
			#endregion
	
			dir = dirs[irandom_range(0,len-1)];	
	
			x += lengthdir_x(wd,dir);
			y += lengthdir_y(hg,dir);
			#endregion
	
			prev = inst;
			
			col = x / wd;
			row = y / hg;
	
			inst = instance_place(x,y,obj_gen_room);
		}
		
		if(col > generator.rm_max[0]){
			generator.rm_max[0] = col;
		}
		
		if(col < generator.rm_min[0]){
			generator.rm_min[0] = col;
		}
		
		if(row > generator.rm_max[1]){
			generator.rm_max[1] = row;
		}
		
		if(row < generator.rm_min[1]){
			generator.rm_min[1] = row;
		}
		#endregion
		
		//Creating door to room from wich this one came
		if(dir != -1){
			var d = dir div 90;
			doors[(d + 2) mod 4] = 1;
			prev.doors[d]        = 1;
		}

		state++;
	break;
	
	case 1: //Stopped
		if(generator.state){ //Wait for all rooms
			state++;
			
			#region Create MP Grid
			if(start){
				var rm_min = generator.rm_min;
				var rm_max = generator.rm_max;

				with(generator.dungeon){
					mp_grid_x = x + rm_min[0] * global.roomwd;
					mp_grid_y = y + rm_min[1] * global.roomhg;
					
					var hc = (rm_max[0] - rm_min[0] + 1) * global.roomwd div 32;
					var vc = (rm_max[1] - rm_min[1] + 1) * global.roomhg div 32;
					
					mp_grid = mp_grid_create(mp_grid_x, mp_grid_y, hc, vc, 32, 32);
				}
			}
			#endregion
		}
	break;
	#endregion
	
	#region Determine Shape
	case 2:
		if(doors[0]){ adj[0] = instance_place(x+wd,y,object_index); }
		if(doors[1]){ adj[1] = instance_place(x,y-hg,object_index); }
		if(doors[2]){ adj[2] = instance_place(x-wd,y,object_index); }
		if(doors[3]){ adj[3] = instance_place(x,y+hg,object_index); }
		
		image_index = (8 * doors[3]) + (4 * doors[2]) + (2 * doors[1]) + doors[0];
		shape = image_index - 1;
		
		state++;
	break;
	
	case 3: //Wait to go to exceptions
		if(generator.rm_connected == order){
			state++;
		}
	break;
	#endregion
	
	#region Determine Type
	case 4:
		if(not start and (shape == 0 || shape == 1 || shape == 3 || shape == 7)){
			var sps = generator.specials;
			
			for(var i = 0; i < 3; i++){
				if(sps[i]){
					generator.specials[i] -= 1;
					type = i + 1;
					break;
				}
			}
		}
		
		generator.rm_connected++;
		state++;
	break;
	#endregion
	
	#region Register
	case 5: //Add info to generator
		if(not registered){
			var info;
			info[0] = doors;
			info[1] = type;
			info[2] = 0;
		
			var pos = row * gen_col + col;
		
			generator.gen_rooms[pos] = info;
			
			if(type > 0){			
				generator.sp_places[type-1] = pos;			
			}
			
			registered = true;
		}
		
		if(generator.rm_built == order){
			state++;
		}
	break;
	#endregion
	
	#region Build
	case 6: //Room
		if(start){
			scr_room_gen(x,y,"base");
		}else if(type){
			scr_room_gen(x,y,14+type);
		}else {
			scr_room_gen(x,y,shape);
		}
		
		if(start){ ///Starting Room
			//Player
			scr_spawn_player(x+global.roomwd/2,y+global.roomhg/2,"Instances");
			
			instance_create_layer(x+global.roomwd/2,y+global.roomhg/2-16,"IF",obj_view);
		}
		
		generator.rm_built++;
		
		state++;
	break;
	#endregion
	
	#region Create Room Controller
	case 7: //Wait
		if(generator.rm_built == generator.rm_count){
			state++;
		}
	break;
	
	case 8: //Finish
		//Doors
		scr_connect_rooms( x, y, doors);
		
		generator.rm_gened--;
		
		_rm = instance_create_layer(x,y,layer,obj_dungeon_room);
		
		//Room Controller
		scr_room_init(_rm);
		
		instance_destroy();
	break;
	#endregion
}