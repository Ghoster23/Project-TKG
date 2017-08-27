if(not instance_exists(obj_CH_tree_state)){
	instance_destroy();
}

if(instance_exists(obj_CH_root)){
	if(global.p_inv == false and obj_CH_root.swing == true and global.p_hurt == false and not global.pause){
		if(distance_to_object(global.body) < 150 and obj_CH_root.image_index >= 6 and obj_CH_root.image_index <= 10 and place_meeting(x,y,global.body)){
			global.p_hp -= global.b_atk div global.p_def;
			dir = point_direction(x,y,global.body.x,global.body.y);
			var x_f = lengthdir_x(50,dir);
			var y_f = lengthdir_y(50,dir);
		
			with global.body{
				physics_apply_impulse(x,y,x_f,y_f);
			}
			
			global.p_hurt = true;
			visible = true;
		}else if obj_CH_root.image_index > 10 and place_meeting(x,y,global.body) and global.p_hurt == false and global.p_inv == false{
			global.p_hp -= global.b_atk div global.p_def;
			global.p_hurt = true;
			visible = true;
		}
	}
}

visible = false;