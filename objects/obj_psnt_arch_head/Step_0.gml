if global.pause == false{
	if body.state == 3{
	    instance_destroy();
	}

	visible = body.visible;

	image_index = opt;

	image_blend = body.image_blend;

}else if not instance_exists(body) {
	instance_destroy();
	
}