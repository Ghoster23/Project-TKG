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
			///If it was already visited
			if global.ds_roomgrid[# 2, i] and global.ds_roomgrid[# 1, i] != "NULL"{
				///Show it
				coords = global.ds_roomgrid[# 0, i];
				row = coords div 10;
				col = coords mod 10;
				
				var type = 0;
			
				switch global.ds_roomgrid[# 1, i] {
					case "Start":
						type = 0;
					break;
					case "A":
						type = 0;
					break;
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
			
				draw_sprite_ext(spr_mm_rm, type, xx + 4 * m + col * rw, yy + 4 * m + row * rh, m, m, 0, c_white, 1);
			}
		}
		
	}else if obj_ig_menu_controller.state == "closed" {
		var i = 0;
		var j = 0;
	
		m = display_get_gui_width() / global.roomwd;
	
		xx = display_get_gui_width() - 96 * m;
		yy = display_get_gui_height() - 96 * m;
		
		cs = global.current_column - 1;
		rs = global.current_row - 1;

		rw = (88 div 3) * m;
		rh = (88 div 3) * m;
	
		draw_sprite_ext( spr_os_minimap, 0, xx, yy, m, m, 0, c_white, 0.6);
		
		//Get square
		
	
		///Check 9 rooms
		for(i = 0; i < 3; i++){
			for(j = 0; j < 3; j++){
				c_rm = (rs + i) * 8 + cs + j;
				
				///If it was already visited
				if global.ds_roomgrid[# 2, c_rm] and global.ds_roomgrid[# 1, c_rm] != "NULL"{
					///Show it
					coords = global.ds_roomgrid[# 0, c_rm];
					var type = 0;
			
					switch global.ds_roomgrid[# 1, c_rm] {
						case "Start":
							type = 0;
						break;
						case "A":
							type = 0;
						break;
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
			
					draw_sprite_ext(spr_mm_rm_os, type, xx + 4 * m + j * rw, yy + 4 * m + i * rh, m, m, 0, c_white, 0.6);
				}
			}
		}
	}

}