switch(room){
	default:
		x = device_mouse_x_to_gui(0);
		y = device_mouse_y_to_gui(0);
		
		ir_mx = (x / global.cam_ratio) + camera_get_view_x(view_camera[0]) - global.Xoffset;
		ir_my = (y / global.cam_ratio) + camera_get_view_y(view_camera[0]) - global.Yoffset;
	break;
}

if(instance_exists(obj_inventory_controller) && cursor == false){
	holder = [obj_inventory_controller.inventory[# 0, 12], 
			  obj_inventory_controller.inventory[# 1, 12],
			  obj_inventory_controller.inventory[# 2, 12]];
}

