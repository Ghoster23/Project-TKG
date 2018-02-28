switch(room){
	case rm_level:
	case rm_CH_boss:
		x = device_mouse_x_to_gui(0);
		y = device_mouse_y_to_gui(0);
	break;
	default:
		x = device_mouse_x_to_gui(0);
		y = device_mouse_y_to_gui(0);
	break;
}

if(instance_exists(obj_inventory_controller) && cursor == false){
	holder = [obj_inventory_controller.inventory[# 0, 12], 
			  obj_inventory_controller.inventory[# 1, 12],
			  obj_inventory_controller.inventory[# 2, 12]];
}