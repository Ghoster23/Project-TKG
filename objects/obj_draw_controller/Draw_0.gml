if ds_exists(ds_depthgrid, ds_type_grid) {
	var depthgrid = ds_depthgrid;
	var instNum = instance_number(obj_depth_parent);
	
	if instNum != 0{
		ds_grid_resize(depthgrid, 2, instNum);
	}
	
	var yy = 0;
	
	with obj_depth_parent {
		if offset == false{
			depthgrid[# 0, yy] = id;
			depthgrid[# 1, yy] = y;
			yy += 1;
		}else {
			depthgrid[# 0, yy] = id;
			depthgrid[# 1, yy] = y + offs;
			yy += 1;
		}
	}
	
	ds_grid_sort(ds_depthgrid, 1, true);
	
	yy = 0;
	
	repeat(instNum){
		var instanceID = ds_depthgrid[# 0, yy];
		
		with(instanceID){
			if instanceID.flash {
					shader_set(sh_white);
					draw_self();
					shader_reset();	
			}
			else if instanceID.visible {
				draw_self();
				
				if self.object_index == obj_potion {
					draw_sprite_ext(spr_potion_fluid,image_index,x,y,1,1,0,color,1);
				}
			}
		}
		
		yy += 1;
	}
	
	ds_grid_clear(ds_depthgrid, 0);
}