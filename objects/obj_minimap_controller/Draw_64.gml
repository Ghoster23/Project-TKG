/// @description Draw the Minimap
if room == rm_level and global.pause == true and obj_ig_menu_controller.state == "mmap"{
	var i = 0;
	
	m = 4.05;
	
	xx = 64 * m;
	yy = 64 * m;

	rw = 67 * m;
	rh = 35 * m;
	
	draw_sprite_ext( spr_minimap, 0, xx, yy, m, m, 0, c_white, 1);
	
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
			
			draw_sprite_ext(spr_mm_rm, type, xx + 4 * m + coords[1] * rw, yy + 4 * m + coords[0] * rh, m, m, 0, c_white, 1);
		}
	}

}