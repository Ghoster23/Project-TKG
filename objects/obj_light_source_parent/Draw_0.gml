if(ds_exists(in_range,ds_type_list)){
	ds_list_destroy(in_range);
}

in_range = collision_circle_list(x,y,radius,obj_above_ground_parent,true,true);

if(in_range != noone){
	scr_light(in_range);
}