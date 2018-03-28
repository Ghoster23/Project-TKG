if(instance_exists(global.body)){
	x = global.body.x - sprite_width / 2;
	y = global.body.y;
}else {
	instance_destroy();
}