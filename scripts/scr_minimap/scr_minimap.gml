if room == rm_level {
	var i = 0;
	
	w = camera_get_view_width(view_camera[0]) div 4;
	h = camera_get_view_height(view_camera[0]) div 4;

	wb = w div 2;
	hb = h div 2;

	rw = w div 8;
	rh = h div 8;


	draw_set_color(c_black);
	draw_set_alpha(1);

	draw_rectangle( wb, hb, w - wb, h - hb, false);

	draw_set_color(c_blue);
	
	///Check all the rooms
	for(i = 0; i < 17; i++){
		///If it was already visited
		if global.ds_roomgrid[# 2, i] {
			///Show it
			coords = global.ds_roomgrid[# 0, i];
			
			switch global.ds_roomgrid[# 1, i] {
				case "Start":
					draw_set_color(c_white);
				break;
				case "A":
					draw_set_color(c_blue);
				break;
				case "B":
					draw_set_color(c_red);
				break;
				case "ST":
					draw_set_color(c_green);
				break;
				case "SP":
					draw_set_color(c_purple);
				break;
				case "X":
					draw_set_color(c_orange);
				break;
				case "?":
					draw_set_color(c_yellow);
				break;
			}
			
			draw_rectangle( hb + coords[1] * rh, wb + coords[0] * rw, hb + (coords[1] + 1) * rh, wb + (coords[0] + 1) * rw, false);
		
		}
	}

}