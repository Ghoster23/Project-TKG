//Reset
part_IF_drawn = false;
part_PS_drawn = false;

#region Fluid surface
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
							 global.current_col * global.roomwd,
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
#endregion

//First particle layer
part_system_drawit(global.ps);

#region Instances
if(ds_exists(ds_depthgrid, ds_type_grid)){
	#region Initialization
	//Assign grid and find instance count
	var depthgrid = ds_depthgrid;
	var instNum   = instance_number(obj_depth_parent);
	
	//If there are any
	if(instNum != 0){
		ds_grid_resize(depthgrid, 2, instNum);
	}
	
	//List all the:
	/// depth children
	/// visible
	/// instances
	var yy = 0;
	
	with(obj_depth_parent){
		if(visible){
			var layer_offs = (layer - other.layers[0]) * 1000;
		
			depthgrid[# 0, yy] = id;
			
			if(not offset){
				depthgrid[# 1, yy] = y - layer_offs;
			}else {
				depthgrid[# 1, yy] = y + offs - layer_offs;
			}
			
			yy += 1;
		}
	}
	
	//Sort the instances by Y
	ds_grid_sort(ds_depthgrid, 1, true);
	
	#endregion
	
	#region Draw everything
	yy = 0;
	
	repeat(instNum){
		var instanceID = ds_depthgrid[# 0, yy];
		var instanceY  = ds_depthgrid[# 1, yy];
		
		#region Particles
		if(not part_IF_drawn && instanceY >= -(1000 * IF_layer-1)){
			part_IF_drawn = true;
			part_system_drawit(global.ps_if);
		}
		
		if(not part_PS_drawn && instanceY >= -(1000 * PS_layer-1)){
			part_PS_drawn = true;
			part_system_drawit(global.ps_ps);
		}
		#endregion
		
		#region Instances
		with(instanceID){
			if(instanceID.flash){
					shader_set(sh_white);
					draw_self();
					shader_reset();	
			}
			//execute custom drawing if object has any
			else if(draw_script != "NULL"){
				script_execute(draw_script);
				
			}
			else {
				draw_self();
				
				shader_reset();
			}
		}
		#endregion
		
		yy += 1;
	}
	
	ds_grid_clear(ds_depthgrid, 0);
	#endregion
	
}else {
	ds_depth_grid = ds_grid_create(2,1);
}
#endregion

//Lights that go in front of everything
with obj_light_front{
	script_execute(draw_script,false);
}