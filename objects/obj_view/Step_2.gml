switch room {
	case rm_level:
		if global.shake > 0 and stopped	{
			x = ox + random_range(-global.shake,global.shake);
			y = oy + random_range(-global.shake,global.shake);
	
		}
		
		global.shake *= 0.9;
	break;
	case rm_CH_boss:
		if global.shake > 0.1 {
			x = ox + random_range(-global.shake,global.shake);
			y = oy + random_range(-global.shake,global.shake);
			show_debug_message(global.shake);
			
		}else {
			x = room_width div 2;
			y = global.body.phy_position_y;
			ox = x;
			oy = y;
			global.shake = 0;
			
		}
		
		global.shake = global.shake * 0.6;
		view_xport[0] = x - camera_get_view_width(view_camera[0])/2 - 40;
		
	break;
}

if(not zooming and not zoomed and obj_ig_menu_controller.state == "status"){
	zooming = true;
}

if(not zooming and zoomed and obj_ig_menu_controller.state != "status"){
	zooming = true;
}