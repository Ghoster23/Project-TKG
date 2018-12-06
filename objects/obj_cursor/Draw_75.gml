switch(room){
	case rm_level:
	case rm_lvl_editor_test:
		if(global.pause){
			if(cursor){
				switch(room){
					default:
						draw_sprite_ext(spr_cursor,0,x,y,
										global.gui_ratio, global.gui_ratio,
										0,c_white,1);
					break;
				}
			}else {
				var pos = obj_inventory_controller.holder;
				scr_draw_item(obj_inventory_controller.inventory[# 0, pos],
								obj_inventory_controller.inventory[# 1, pos],
								obj_inventory_controller.inventory[# 2, pos],
					             x,  y, global.gui_ratio, global.gui_ratio, 1);
			}
		}
	break;
	
	default:
		draw_sprite_ext(spr_cursor,0,x,y,
						global.gui_ratio, global.gui_ratio,
						0,c_white,1);
	break;
}