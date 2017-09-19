/// @description Draw the Minimap
if room == rm_level {
	if obj_ig_menu_controller.state == "mmap"{
		var i = 0;
	
		m = display_get_gui_width() / global.roomwd;
	
		xx = 64 * m;
		yy = 64 * m;

		rw = 67 * m;
		rh = 35 * m;
	
		draw_sprite_ext( spr_minimap, 0, xx, yy, m, m, 0, c_white, 1);
	
		///Check all the rooms
		for(i = 0; i < 64; i++){
			doors = global.ds_roomgrid[# 3, i];
			coords = global.ds_roomgrid[# 0, i];
			row = coords div 10;
			col = coords mod 10;
			
			var type = 0;
		
			///If it was already visited
			if global.ds_roomgrid[# 2, i] and global.ds_roomgrid[# 1, i]!="NULL" {
				///Directions
				spr = scr_mm_tile(i);
				
				draw_sprite_ext(spr_mm_rm, spr, xx + 4 * m + col * rw, yy + 4 * m + row * rh, m, m, 0, c_white, 1);
				
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
				
				if row == global.current_row and col == global.current_column{
					type = 5;
				}
				
				if type == 5 and global.char != 0{
					draw_sprite_ext(spr_mm_rm1, type, xx + 4 * m + col * rw, yy + 4 * m + row * rh, m, m, 0, scr_char_color(), 1);
				}else {
					draw_sprite_ext(spr_mm_rm1, type, xx + 4 * m + col * rw, yy + 4 * m + row * rh, m, m, 0, c_white, 1);
				}
				
			///Rooms adjacent to visited rooms that have not been visisted
			}else if (i - 8 >= 0 and (global.ds_roomgrid[# 2, i - 8] and doors[0] == 1) or 
					 (i - 1 >= 0 and global.ds_roomgrid[# 2, i - 1] and doors[1] == 1) or 
					 (i + 8 <= 63 and global.ds_roomgrid[# 2, i + 8] and doors[2] == 1) or 
					 (i + 1 <= 63 and global.ds_roomgrid[# 2, i + 1] and doors[3] == 1)) and 
					  global.ds_roomgrid[# 1, i]!="NULL"{
				spr = scr_mm_tile(i);
				
				draw_sprite_ext(spr_mm_rm, spr, xx + 4 * m + col * rw, yy + 4 * m + row * rh, m, m, 0, c_white, 1);
				
				draw_sprite_ext(spr_mm_rm, 0, xx + 4 * m + col * rw, yy + 4 * m + row * rh, m, m, 0, c_white, 1);
			}
		}
		
	}else if obj_ig_menu_controller.state == "closed" and mm_os_show{
		var i = 0;
		var j = 0;
	
		m = display_get_gui_width() / global.roomwd;
	
		xx = display_get_gui_width() - 112 * m;
		yy = 16 * m;
		
		cs = global.current_column - 1;
		rs = global.current_row - 1;

		rw = (88 / 3) * m;
		rh = (88 / 3) * m;
	
		draw_sprite_ext( spr_os_minimap, 0, xx, yy, m, m, 0, c_white, 0.6);
	
		///Check 9 rooms
		for(i = 0; i < 3; i++){
			for(j = 0; j < 3; j++){
				c_rm = (rs + i) * 8 + cs + j;
				
				///If there's a room there
				if global.ds_roomgrid[# 1, c_rm] != "NULL"{
					var type = 0;
					
					///If it has been visited
					if c_rm >= 0 and c_rm <= 63 and global.ds_roomgrid[# 2, c_rm] {
						draw_sprite_ext(spr_mm_rm_os, scr_mm_tile(c_rm), xx + 4 * m + j * rw, yy + 4 * m + i * rh, m, m, 0, c_white, 1);
						
						///Determine the type of the room
						switch global.ds_roomgrid[# 1, c_rm] {
							case "Start":
							case "A":
							case "B":
								type = 0;
							break;
							case "ST":
								type = 2;
							break;
							case "SP":
								type = 3;
							break;
							case "X":
								type = 1;
							break;
							case "?":
								type = 4;
							break;
						}
						
						if i == 1 and j == 1{
							type = 5;
						}
						
						draw_sprite_ext(spr_mm_rm_os1, type, xx + 4 * m + j * rw, yy + 4 * m + i * rh, m, m, 0, c_white, 1);
						
					///If not and it isn't a diagonal
					}else if c_rm >= 0 and c_rm <= 63 and not ((i == 0 and j == 0) or (i == 2 and j == 0) or (i == 0 and j == 2) or (i == 2 and j == 2)){
						draw_sprite_ext(spr_mm_rm_os, scr_mm_tile(c_rm), xx + 4 * m + j * rw, yy + 4 * m + i * rh, m, m, 0, c_white, 1);
						
						type = 0;
						
						draw_sprite_ext(spr_mm_rm_os, type, xx + 4 * m + j * rw, yy + 4 * m + i * rh, m, m, 0, c_white, 1);
					}
				}	
			}
		}
	}
}