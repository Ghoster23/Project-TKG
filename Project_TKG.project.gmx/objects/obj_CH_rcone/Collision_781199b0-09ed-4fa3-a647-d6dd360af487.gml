if(not instance_exists(obj_CH_tree_state)){
	instance_destroy();
}


if(instance_exists(obj_CH_root)){
	if(global.invuln == false and creator.swing == true){
		if(distance_to_object(obj_body) < 150 and creator.image_index <= 5){
			global.p_hp -= 5;
			dir = point_direction(x,y,obj_body.x,obj_body.y);
			var x_f = lengthdir_x(50,dir);
			var y_f = lengthdir_y(50,dir);
    
			physics_apply_impulse(x,y,x_f,y_f);
		}else {
			global.p_hp -= 5;
        
		}
	}
}