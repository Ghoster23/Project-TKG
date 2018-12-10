if(visible and obj_player_hud.visible and room == rm_level and global.region){
	//Position on screen
	var xx = gui_WD - (mm_wd + 8) * m;
	var yy = 8 * m;
	
	var rm_x = xx + 5 * m;
	var rm_y = yy + 5 * m;

	var rw = rm_wd * m;
	var rh = rm_hg * m;
	
	draw_sprite_ext( spr_HUD_minimap, 0, xx, yy, m, m, 0, c_white, 1);
	
	///Check 9 rooms
	for(var i = 0; i < 3; i++){
		for(var j = 0; j < 3; j++){
			var c_rm = i * 3 + j;
			
			var info = sqr_layout[c_rm];
			
			if(info != -1){
				var typ = info[1];
				
				if(i == 1 && j == 1){ typ = 4; }
			
				scr_map_room(rm_x,rm_y,i,j,info[0],typ,c_white,false);
			}
		}
	}
}