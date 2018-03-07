if(!surface_exists(global.fluid_surface)){
	global.fluid_surface = surface_create(surface_get_width(application_surface),
	                                      surface_get_height(application_surface));
}else {
	surface_set_target(application_surface);
	outline_start_surface(3,c_green,global.fluid_surface,6);
	draw_surface_ext(global.fluid_surface,0,0,global.ratio,global.ratio,0,c_white,0.3);
	outline_end();
	surface_reset_target();
	surface_set_target(global.fluid_surface);
	draw_clear_alpha(c_black,0);
	surface_reset_target();
}

if ds_exists(ds_depthgrid, ds_type_grid) {
	var depthgrid = ds_depthgrid;
	var instNum   = instance_number(obj_depth_parent);
	
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
			//physics_draw_debug();
			if instanceID.flash {
					shader_set(sh_white);
					draw_self();
					shader_reset();	
			}
			//execute custom drawing if object has any
			else if(draw_script != null and instanceID.visible){
				script_execute(draw_script);
				
			}
			else if instanceID.visible {	
				
				draw_self();
				
				shader_reset();
				
				if self.object_index == obj_potion {
					draw_sprite_ext(spr_potion_fluid,image_index,x,y,1,1,0,color,1);
				}
			}
		}
		
		yy += 1;
	}
	
	ds_grid_clear(ds_depthgrid, 0);
}