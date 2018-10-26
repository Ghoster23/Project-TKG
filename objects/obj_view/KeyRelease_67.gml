if(target == noone){
	t_zoom = 0.10;
	target = instance_create_layer(room_width/2,room_height/2,layer,obj_empty);
}else if(target.object_index == obj_empty){
	t_zoom = 1;
	instance_destroy(target);
	target = noone;
}