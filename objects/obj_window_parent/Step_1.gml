switch state {
	case 0:
		#region Send to front of all windows
		if(scr_clicked_in(x - (width / 2) * cm, y - (height / 2) * cm,
						  x + (width / 2) * cm, y + (height / 2) * cm)){
			with(drawer){
				if(ds_exists(draw_wnds,ds_type_list)){
					if(draw_wnds[| ds_list_size(draw_wnds) - 1] != other.id){
						ds_list_delete(draw_wnds, ds_list_find_index(draw_wnds,other.id));
						ds_list_add(draw_wnds, other.id);
					}
				}
			}
		}
		#endregion
	
		#region Drag Start
		if(moveable and
			scr_mouse_hold(x - (width / 2) * cm, y - (height / 2) * cm,
						   x + (width / 2) * cm, y - (height / 2 - bar_hg) * cm) and
			obj_window_controller.grabbed == noone){
			dist_x = x - obj_cursor.x;
			dist_y = y - obj_cursor.y;
			obj_window_controller.grabbed = id;
			state = 1;
		}
		#endregion
	break;
	
	case 1:
		#region Drag On-Going
		x = obj_cursor.x + dist_x;
		y = obj_cursor.y + dist_y;
		
		if(!mouse_check_button(mb_left)){
			state = 0;
			obj_window_controller.grabbed = noone;
		}
		#endregion
	break;
}