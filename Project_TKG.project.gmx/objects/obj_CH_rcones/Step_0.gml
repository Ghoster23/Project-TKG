if(not instance_exists(obj_CH_tree_state)){
	instance_destroy();
}

if(instance_exists(obj_CH_root)){
	if(global.invuln == false and obj_CH_root.swing == true and global.p_inv == false){
		if(distance_to_object(obj_body) < 150 and obj_CH_root.image_index >= 6 and obj_CH_root.image_index <= 10 and place_meeting(x,y,obj_body)){
			global.p_hp -= 2;
			dir = point_direction(x,y,obj_body.x,obj_body.y);
			var x_f = lengthdir_x(50,dir);
			var y_f = lengthdir_y(50,dir);
		
			with obj_body{
				physics_apply_impulse(x,y,x_f,y_f);
			}
			
			global.p_inv = true;
			visible = true;
		}else if obj_CH_root.image_index > 10 and place_meeting(x,y,obj_body) and global.p_inv == false and global.invuln == false{
			global.p_hp -= 2;
			global.p_inv = true;
			visible = true;
		}
	}
}

visible = false;