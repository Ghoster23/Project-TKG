/// @description Draw the Map
if(room == rm_level && obj_ig_menu_controller.state == "mmap" && state){
	r = m * 1.8;
	
	//Window position on-screen
	var map_x = hc - map_wd * m / 2;
	var map_y = vc - map_hg * m / 2;
	
	//Draw window
	draw_sprite_ext( spr_ig_map, 0, map_x, map_y, m, m, 0, c_white, 1);
		
	//Where to start drawing rooms
	var rm_x = map_x + 16 * m;
	var rm_y = map_y + 22 * m;
	
	for(var i = 0; i < dg_space; i++){
		var info = dungeon_layout[i];
		
		if(info != -1){
			switch info[2] {
				case 0: //Not visited
				break;
				
				case 1: //Not visited but connects to a visited room
					scr_map_room(rm_x,rm_y,i div dg_col,i mod dg_col,0,0,c_white,true);
				break;
				
				default://Visited rooms
					var colour = c_white;
					var type   = info[1];
					
					if(i == c_rid){ 
						colour = scr_char_color();
						type   = 5;
					}
					
					scr_map_room(rm_x,rm_y,i div dg_col,i mod dg_col,scr_mm_tile(info[0]),type,colour,true);
				break;
			}
		}
	}
}