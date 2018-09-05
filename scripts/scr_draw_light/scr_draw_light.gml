if( !surface_exists(surf) ){
    surf = surface_create(room_width,room_height);
}

if(ds_exists(in_range,ds_type_list)){
	ds_list_destroy(in_range);
}


//list of shadowcasters in range
in_range = collision_light_rectangle_list(x-radius, y-radius, x+radius, y + radius, obj_depth_parent,true,true);

if(room_active == true){
	surface_set_target(surf);
	draw_clear_alpha(0,0);
	
	vertex_begin(VBuffer, VertexFormat);
	
	if(in_range != noone){
		if(argument_count != 1){
			scr_light(in_range);
		}
	}
	
	vertex_end(VBuffer);    
	vertex_submit(VBuffer,pr_trianglelist,-1);
	
	surface_reset_target();
	
	shader_set(sh_light);
	shader_set_uniform_f( LightPosRadius, x, y, radius,0.0 );
	
	gpu_set_blendmode(bm_add);
	draw_surface_ext(surf,0,0,1,1,0,image_blend,opacity);
	gpu_set_blendmode(bm_normal);
	
	shader_reset();
}