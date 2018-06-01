if window_get_fullscreen() {
	if(cursor){
		switch(room){
			case rm_level:
			case rm_CH_boss:
				draw_sprite_ext(spr_cursor,0,
								device_mouse_x_to_gui(0),
								device_mouse_y_to_gui(0),
								ratio, 
								ratio,
								0,c_white,1);
			break;
			default:
				draw_sprite_ext(spr_cursor,0,
								device_mouse_x_to_gui(0),
								device_mouse_y_to_gui(0),
								ratio, 
								ratio,
								0,c_white,1);
			break;
		}
	}else {
		var pos = obj_inventory_controller.holder;
		scr_draw_item(obj_inventory_controller.inventory[# 0, pos],
					  obj_inventory_controller.inventory[# 1, pos],
					  obj_inventory_controller.inventory[# 2, pos],
		              x, y, ratio, ratio, 1);
	}
}