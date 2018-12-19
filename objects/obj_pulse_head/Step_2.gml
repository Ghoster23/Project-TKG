if(instance_exists(node)){
	var xx = node.x;
	var yy = node.y;

	path_add_point(pulse_path,xx,yy,10);
}else {
	destroyed = true;
}

if(destroyed){
	sprite_index = -1;
	
	path_delete(pulse_path);
	instance_destroy(node);
	instance_destroy();
	
}else {
	path_add_point(pulse_path,x,y,10);
}