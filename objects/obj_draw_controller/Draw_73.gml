global.check++;
global.check = global.check % 3;

if(!surface_exists(global.fluid_surface)){
	global.fluid_surface = surface_create(fl_s_wd,
	                                      fl_s_hg);
}else {
	//Draw Fluid Surface
	outline_f_start_surface(1,global.fluid_surface,4);
	
	switch room {
		case rm_level:
			draw_surface_ext(global.fluid_surface,
							 global.current_column * global.roomwd,
							 global.current_row    * global.roomhg,
							 1,1,0,c_white,1);
		break;
		default:
			draw_surface_ext(global.fluid_surface,
							 0,0,1,1,0,c_white,1);
		break;
	}
	
	outline_f_end();
	
	//Clear Fluid Surface
	if(global.check == 1){
		surface_set_target(global.fluid_surface);
		draw_clear_alpha(c_black,0);
		surface_reset_target();
	}
}

part_system_drawit(global.ps);

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
			else if(draw_script != "NULL" and instanceID.visible){
				script_execute(draw_script);
				
			}
			else if instanceID.visible {
				
				draw_self();
				
				shader_reset();
			}
		}
		
		yy += 1;
	}
	
	ds_grid_clear(ds_depthgrid, 0);
}else {
	ds_depth_grid = ds_grid_create(2,1);
}

part_system_drawit(global.ps_if);
part_system_drawit(global.ps_ps);

//lights that go in front of everything
with obj_light_front{
	script_execute(draw_script,false);
}