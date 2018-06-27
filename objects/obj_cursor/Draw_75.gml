if window_get_fullscreen() {
	if(cursor){
		switch(room){
			default:
				draw_sprite_ext(spr_cursor,0,
								x,
								y,
								global.ratio, 
								global.ratio,
								0,c_white,1);
			break;
		}
	}else {
		var pos = obj_inventory_controller.holder;
		scr_draw_item(obj_inventory_controller.inventory[# 0, pos],
					  obj_inventory_controller.inventory[# 1, pos],
					  obj_inventory_controller.inventory[# 2, pos],
		              x, y, global.ratio, global.ratio, 1);
	}
}