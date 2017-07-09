/// @description Draw the Minimap
if room == rm_level and global.pause == true and obj_ig_menu_controller.state == "mmap"{
	var i = 0;
	
	xx = global.roomwd * global.current_column + 64;
	yy = global.roomhg * global.current_row + 64;

	rw = 67;
	rh = 35;
	
	draw_sprite( spr_minimap, 0, xx, yy);
	
	///Check all the rooms
	for(i = 0; i < 17; i++){
		///If it was already visited
		if global.ds_roomgrid[# 2, i] {
			///Show it
			coords = global.ds_roomgrid[# 0, i];
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
					type = 0;
				break;
			}
			
			draw_sprite(spr_mm_rm, type, xx + 4 + coords[1] * rw, yy + 4 + coords[0] * rh);
		}
	}

}