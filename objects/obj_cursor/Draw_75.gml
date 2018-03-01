if window_get_fullscreen() {
	if(cursor){
		draw_sprite_ext(spr_cursor,0,
			x,
			y,
			ratio, 
			ratio,
			0,c_white,1);
	}else {
		var pos = obj_inventory_controller.holder;
		scr_draw_item(obj_inventory_controller.inventory[# 0, pos],
					  obj_inventory_controller.inventory[# 1, pos],
					  obj_inventory_controller.inventory[# 2, pos],
		              x, y, ratio, ratio, 1);
	}	
}