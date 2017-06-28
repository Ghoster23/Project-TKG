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
			draw_self();
		}
		
		yy += 1;
	}
	
	ds_grid_clear(ds_depthgrid, 0);
}