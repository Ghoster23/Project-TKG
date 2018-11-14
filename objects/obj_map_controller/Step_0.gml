#region Draw vars
m = global.cam_ratio;

gui_WD = global.gui_WD;
gui_HG = global.gui_HG;

hc = gui_WD / 2;
vc = gui_HG / 2;
#endregion

switch state {
	case 0:
		#region Init
		switch global.region {
			case 0:
			break;
		
			default:
 				#region Get dungeon Info
				global.dungeon = global.dungeons[global.region - 1];
			
				dungeon_layout = global.dungeon.rooms;
				
				dg_col = global.dungeon.gen_col;
				dg_row = global.dungeon.gen_row;
			
				dg_space = dg_col * dg_row;
				#endregion
				
				state++;
				break;
			}
		#endregion
	break;
	
	case 1:
		#region Current room
		#region Check where the player is
		global.room_change = false;
		
		if(global.region){
			var bds = borders[global.region - 1];
			
			var xx = global.body.phy_position_x;
			var yy = global.body.phy_position_y-32;
			
			var c_row = (yy - bds[0]) div global.roomhg;
			var c_col = (xx - bds[1]) div global.roomwd;
			
			if(global.current_col != c_col || global.current_row != c_row){
				global.current_col = c_col;
				global.current_row = c_row;
				global.room_change = true;
				
				c_rid = c_row * dg_col + c_col;
			}
		}
		#endregion
		
		#region Room change
		if(global.room_change){
			//Update Map
			var info = dungeon_layout[c_rid];
			
			if(info[2] != 2){
				scr_map_update(c_rid);
			}
			
			//Update Minimap
			scr_minimap_update();
		}
		#endregion
		#endregion
	break;
}