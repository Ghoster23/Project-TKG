/// @description Draw the Map
if(room == rm_level){
	r = m * 1.8;
	
	if(obj_ig_menu_controller.state == "mmap"){
		//Window position on-screen
		var map_x = hc - map_wd * m / 2;
		var map_y = vc - map_hg * m / 2;
	
		//Draw window
		draw_sprite_ext( spr_ig_map, 0, map_x, map_y, m, m, 0, c_white, 1);
		
		//Where to start drawing rooms
		var rm_x = map_x + 16 * m;
		var rm_y = map_y + 22 * m;
	
		///Check all the rooms
		for(var i = 0; i < 64; i++){
			//Get room info
			var coords = global.ds_roomgrid[# 0, i];
			var doors = global.ds_roomgrid[# 3, i];
			
			var row = coords div 10;
			var col = coords mod 10;
			
			///If it was already visited
			if(global.ds_roomgrid[# 2, i] and global.ds_roomgrid[# 1, i] != "NULL"){
				///Directions
				var spr = scr_mm_tile(i);
				
				///Type
				var type = 0;
				
				switch global.ds_roomgrid[# 1, i] {
					case 15:
						type = 2;
					break;
					case 16:
						type = 3;
					break;
					case 18:
						type = 1;
					break;
					case 17:
						type = 4;
					break;
				}
				
				if(row == global.current_row and 
				   col == global.current_column){
					type = 5;
				}
				
				///Colour
				var colour = c_white;
				
				if(type == 5 and global.char != 0){
					colour = scr_char_color();
				}
				
				scr_map_room(rm_x,rm_y,row,col,spr,type,colour,true);
				
			///Rooms adjacent to visited rooms that have not been visisted
			}else if ((i - 8 >= 0  and global.ds_roomgrid[# 2, i - 8] and doors[0]) or 
					  (i - 1 >= 0  and global.ds_roomgrid[# 2, i - 1] and doors[1]) or 
					  (i + 8 <= 63 and global.ds_roomgrid[# 2, i + 8] and doors[2]) or 
					  (i + 1 <= 63 and global.ds_roomgrid[# 2, i + 1] and doors[3])) and 
					  global.ds_roomgrid[# 1, i]!="NULL"{
				
				scr_map_room(rm_x,rm_y,row,col,0,0,c_white,true);
			}
		}
		
	}
}