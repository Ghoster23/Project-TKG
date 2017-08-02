if global.pause == false and instance_exists(body){
	if body.state == 3{
	    instance_destroy();
	}

	visible = body.visible;
	
	flash = body.flash;

	image_index = opt;

	image_blend = body.image_blend;

}else if not instance_exists(body) {
	instance_destroy();
	
}