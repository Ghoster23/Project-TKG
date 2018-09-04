if(obj_player_hud.on){
	var j = 0;
	var st_count = global.body.status_count;
	var st_list  = global.body.status_list;

	for(var i = 0; i < st_count; i++){
		var entry = st_list[| i];
	
		var status  = entry[0];
		var i_count = entry[1];
		var count   = entry[2];
		var spr     = status_spr[status];
	
		if(count and spr != -1){
			draw_sprite_ext(spr, 13 - 13 * (count / i_count), 
							(start_x + (j * status_wd)) * m, start_y * m, 
							m, m, 0, c_white, 1);
			j++;
		}
	}
}