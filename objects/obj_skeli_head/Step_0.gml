if global.pause == false and instance_exists(owner){
	
	flash = owner.flash;

	image_blend = owner.image_blend;
	
	var d_ = point_direction(x,y,global.body.x,global.body.y);
	if (d_ >= 0 and d_ <= 45) or (d_ >= 315 and d_ <= 360){
	    d = 1;
		image_index = 2;
	}else if d_ > 45 and d_ < 135{
	    d = -3;
		image_index = 3;
	}else if d_ >= 135 and d_ <= 225{
	    d = -1;
		 image_index = 0;
	}else if d_ > 225 and d_ < 315{
	    d = 3;
		image_index = 1;
	}else {
	    d = 0;
	}
	
	
}else if not instance_exists(owner) {
	instance_destroy();
	
}