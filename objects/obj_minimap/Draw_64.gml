if(visible and obj_player_hud.visible and room == rm_level){
	//Position on screen
	var xx = gui_WD - (mm_wd + 8) * m;
	var yy = 8 * m;
	
	//Room to start checking
	var col = global.current_column - 1;
	var row = global.current_row    - 1;
	
	var rm_x = xx + 5 * m;
	var rm_y = yy + 5 * m;

	var rw = rm_wd * m;
	var rh = rm_hg * m;
	
	draw_sprite_ext( spr_HUD_minimap, 0, xx, yy, m, m, 0, c_white, 1);
	
	///Check 9 rooms
	for(var i = 0; i < 3; i++){
		for(var j = 0; j < 3; j++){
			var c_rm = (row + i) * 8 + col + j;
				
			if(0 <= c_rm and c_rm <= 63){		
				var rtype = global.ds_roomgrid[# 1, c_rm];
				var doors = global.ds_roomgrid[# 3, c_rm];
				
				///If there is a room there
				if(rtype != "NULL"){
					///If it has been visited
					if(global.ds_roomgrid[# 2, c_rm]){
						///Directions
						var spr  = scr_mm_tile(c_rm);
				
						///Type
						var type = 0;
				
						///Determine the type of the room
						switch rtype {
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
					
						if(i == 1 and j == 1){
							type = 5;
						}					
				
						scr_map_room(rm_x,rm_y,i,j,spr,type,c_white,false);
				
					///Rooms adjacent to visited rooms that have not been visisted
					}else if ((row + i - 8 >= 0  and global.ds_roomgrid[# 2, c_rm - 8] and doors[0]) or 
							  (col + j - 1 >= 0  and global.ds_roomgrid[# 2, c_rm - 1] and doors[1]) or 
							  (row + i + 8 <= 63 and global.ds_roomgrid[# 2, c_rm + 8] and doors[2]) or 
							  (col + j + 1 <= 63 and global.ds_roomgrid[# 2, c_rm + 1] and doors[3])){
				
						scr_map_room(rm_x,rm_y,i,j,0,0,c_white,false);
					}
				}
			}
		}
	}
}