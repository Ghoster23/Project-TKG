if(roomgenerated < 12){
	if up {
		if(!instance_position((gx+(global.roomwd/2)),(gy-32),obj_vcorridor)){
			instance_destroy(instance_nearest(gx+(global.roomwd/2),(gy-2),obj_wall_down_fillin));
			instance_destroy(instance_nearest(gx+(global.roomwd/2),(gy+2),obj_wall_up_fillin));
			instance_create_layer(gx+(global.roomwd/2)-48,(gy-64),"Instances",obj_vcorridor);
							
			global.ds_roomgrid[# 3, grid_id - 8] = grid_array_set_value(global.ds_roomgrid[# 3, grid_id - 8], 2, 1);
			global.ds_roomgrid[# 3, grid_id]     = grid_array_set_value(global.ds_roomgrid[# 3, grid_id],     0, 1);
		}
	}
					
	if left {
		if(!instance_position(gx,(gy+(global.roomwd/2)),obj_hcorridor)){
			instance_destroy(instance_nearest(gx+2,gy+(global.roomwd/2),obj_wall_left_fillin));
			instance_destroy(instance_nearest(gx-2,gy+(global.roomwd/2),obj_wall_right_fillin));
			instance_create_layer(gx-32,gy+(global.roomhg/2)-96,"Instances",obj_hcorridor);
			instance_create_layer(gx-32,gy+(global.roomhg/2)+32,"Instances",obj_hcorridorB);
							
			global.ds_roomgrid[# 3, grid_id - 1] = grid_array_set_value(global.ds_roomgrid[# 3, grid_id - 1], 3, 1);
			global.ds_roomgrid[# 3, grid_id]     = grid_array_set_value(global.ds_roomgrid[# 3, grid_id],     1, 1);
		}
	} 
					
	if down {
		if(!instance_position(gx+(global.roomwd/2),(gy+global.roomhg-32),obj_vcorridor)){
			instance_destroy(instance_nearest(gx+(global.roomwd/2),gy+global.roomhg-2,obj_wall_down_fillin));
			instance_destroy(instance_nearest(gx+(global.roomwd/2),gy+global.roomhg+2,obj_wall_up_fillin));
			instance_create_layer(gx+(global.roomwd/2)-48,(gy+global.roomhg-64),"Instances",obj_vcorridor);
							
			global.ds_roomgrid[# 3, grid_id + 8] = grid_array_set_value(global.ds_roomgrid[# 3, grid_id + 8], 0, 1);
			global.ds_roomgrid[# 3, grid_id]     = grid_array_set_value(global.ds_roomgrid[# 3, grid_id],     2, 1);
		}
	}
					
	if right {
		if(!instance_position(gx+global.roomwd,(gy+(global.roomhg/2)),obj_hcorridor)){
			instance_destroy(instance_nearest(gx+global.roomwd-2,gy+(global.roomhg/2),obj_wall_right_fillin));
			instance_destroy(instance_nearest(gx+global.roomwd+2,gy+(global.roomhg/2),obj_wall_left_fillin));
			instance_create_layer((gx+global.roomwd-32),(gy+(global.roomhg/2)-96),"Instances",obj_hcorridor);
			instance_create_layer((gx+global.roomwd-32),(gy+(global.roomhg/2)+32),"Instances",obj_hcorridorB);
							
			global.ds_roomgrid[# 3, grid_id + 1] = grid_array_set_value(global.ds_roomgrid[# 3, grid_id + 1], 1, 1);
			global.ds_roomgrid[# 3, grid_id]     = grid_array_set_value(global.ds_roomgrid[# 3, grid_id],     3, 1);
		}
	}
}else {
	if down && d < 14 {
		if(!instance_position(gx+(global.roomwd/2),(gy+global.roomhg-32),obj_vcorridor)){
			instance_destroy(instance_nearest(gx+(global.roomwd/2),gy+global.roomhg-2,obj_wall_down_fillin));
			instance_destroy(instance_nearest(gx+(global.roomwd/2),gy+global.roomhg+2,obj_wall_up_fillin));
			instance_create_layer(gx+(global.roomwd/2)-48,(gy+global.roomhg-64),"Instances",obj_vcorridor);
							
			global.ds_roomgrid[# 3, grid_id + 8] = grid_array_set_value(global.ds_roomgrid[# 3, grid_id + 8], 0, 1);
			global.ds_roomgrid[# 3, grid_id]     = grid_array_set_value(global.ds_roomgrid[# 3, grid_id],     2, 1);
		}
	}else					
	if left && l < 14{
		if(!instance_position(gx,(gy+(global.roomwd/2)),obj_hcorridor)){
			instance_destroy(instance_nearest(gx+2,gy+(global.roomwd/2),obj_wall_left_fillin));
			instance_destroy(instance_nearest(gx-2,gy+(global.roomwd/2),obj_wall_right_fillin));
			instance_create_layer(gx-32,gy+(global.roomhg/2)-96,"Instances",obj_hcorridor);
			instance_create_layer(gx-32,gy+(global.roomhg/2)+32,"Instances",obj_hcorridorB);
							
			global.ds_roomgrid[# 3, grid_id - 1] = grid_array_set_value(global.ds_roomgrid[# 3, grid_id - 1], 3, 1);
			global.ds_roomgrid[# 3, grid_id]     = grid_array_set_value(global.ds_roomgrid[# 3, grid_id],     1, 1);
		}
	}else						
	if right && r < 14{
		if(!instance_position(gx+global.roomwd,(gy+(global.roomhg/2)),obj_hcorridor)){
			instance_destroy(instance_nearest(gx+global.roomwd-2,gy+(global.roomhg/2),obj_wall_right_fillin));
			instance_destroy(instance_nearest(gx+global.roomwd+2,gy+(global.roomhg/2),obj_wall_left_fillin));
			instance_create_layer((gx+global.roomwd-32),(gy+(global.roomhg/2)-96),"Instances",obj_hcorridor);
			instance_create_layer((gx+global.roomwd-32),(gy+(global.roomhg/2)+32),"Instances",obj_hcorridorB);
							
			global.ds_roomgrid[# 3, grid_id + 1] = grid_array_set_value(global.ds_roomgrid[# 3, grid_id + 1], 1, 1);
			global.ds_roomgrid[# 3, grid_id]     = grid_array_set_value(global.ds_roomgrid[# 3, grid_id],     3, 1);
		}
	}else	
	if up && u < 14{
		if(!instance_position((gx+(global.roomwd/2)),(gy-32),obj_vcorridor)){
			instance_destroy(instance_nearest(gx+(global.roomwd/2),(gy-2),obj_wall_down_fillin));
			instance_destroy(instance_nearest(gx+(global.roomwd/2),(gy+2),obj_wall_up_fillin));
			instance_create_layer(gx+(global.roomwd/2)-48,(gy-64),"Instances",obj_vcorridor);
							
			global.ds_roomgrid[# 3, grid_id - 8] = grid_array_set_value(global.ds_roomgrid[# 3, grid_id - 8], 2, 1);
			global.ds_roomgrid[# 3, grid_id]     = grid_array_set_value(global.ds_roomgrid[# 3, grid_id],     0, 1);
		}
	}
}