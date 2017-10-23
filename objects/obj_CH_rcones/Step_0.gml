if(not instance_exists(obj_CH_tree_state)){
	instance_destroy();
}

if(instance_exists(obj_CH_root)){
	if obj_CH_root.swing and not global.pause{
		image_alpha = 0.8;
		
		if(place_meeting(x,y,global.body)){
			scr_damage_player(0,2,1);
			
			if(distance_to_object(global.body) < 150 and obj_CH_root.image_index >= 7 and obj_CH_root.image_index <= 11){
				dir = point_direction(x,y,global.body.x,global.body.y);
				var x_f = lengthdir_x(50,dir);
				var y_f = lengthdir_y(50,dir);
    
				with global.body{
					physics_apply_impulse(x,y,x_f,y_f);
				}
			
			}
		}
	}
}

image_alpha -= 0.05;