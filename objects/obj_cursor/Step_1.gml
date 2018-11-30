switch(room){
	
	case rm_level:
	case rm_lvl_editor_test:
		if(global.pause){
			x = device_mouse_x_to_gui(0);
			y = device_mouse_y_to_gui(0);
		}else {
			if(global.gamepad){
				if(player == noone or !instance_exists(player)){
					player = instance_nearest(x,y,obj_character_body_parent);
				}
				else{
					x = scr_approach(x,player.x,5);
					y = scr_approach(y,player.y,5);
		
					var haxis = gamepad_axis_value(0, gp_axisrh);
					var vaxis = gamepad_axis_value(0, gp_axisrv);
		
					direction = point_direction(0, 0, haxis, vaxis);
					speed = point_distance(0 ,0, haxis, vaxis) * 15;
					x += lengthdir_x(speed,direction);
					y += lengthdir_y(speed,direction);
		
					if(point_distance(x,y,player.x,player.y)>50){
						x = player.x + lengthdir_x(50,direction);
						y = player.y + lengthdir_y(50,direction);
					}
				}
			}	
			else{
				x = mouse_x;
				y = mouse_y;
			}
		}
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

