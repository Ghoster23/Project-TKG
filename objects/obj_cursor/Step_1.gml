switch(room){
	
	case rm_level:
	
		if(!global.gamepad){
			x = device_mouse_x_to_gui(0);
			y = device_mouse_y_to_gui(0);
		
		}
		else{
	
			if(player == noone or !instance_exists(player)){
				player = instance_nearest(x,y,obj_character_body_parent);
			}
			else{
				x = scr_approach(x,player.x,1);
				y = scr_approach(y,player.y,1);
		
				var haxis = gamepad_axis_value(0, gp_axisrh);
				var vaxis = gamepad_axis_value(0, gp_axisrv);
		
				direction = point_direction(0, 0, haxis, vaxis);
				speed = point_distance(0 ,0, haxis, vaxis) * 150;
				x += lengthdir_x(speed,direction);
				y += lengthdir_y(speed,direction);
		
				if(point_distance(x,y,player.x,player.y)>600){
					x = player.x + lengthdir_x(600,direction);
					y = player.y + lengthdir_y(600,direction);
				}
			}
		}
		
		ir_mx = (x / global.cam_ratio) + camera_get_view_x(view_camera[0]) - global.Xoffset;
		ir_my = (y / global.cam_ratio) + camera_get_view_y(view_camera[0]) - global.Yoffset;
	break;
	
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

