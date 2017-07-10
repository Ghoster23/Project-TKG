if not global.pause {
	if prev_image_speed != 0{
		image_speed = prev_image_speed;
		prev_image_speed = 0;
	}
	
	if owner.state == 0{
	    image_angle = owner.i_dir;
	}else if owner.state == 1{
	    image_angle = owner.dir;
	}else {
		image_angle = point_direction(x,y,obj_body.x,obj_body.y);
	}

	if owner.state == 3{
	    instance_destroy();
	}
	
	if image_index < 3 and not owner.cd_arrow{
		image_speed = 0.2;
	}else if not owner.cd_arrow{
		image_index = 4;
		image_speed = 0;
	}

	//atacking
	if image_index == 4 and owner.state == 2 and owner.cd_arrow{
	    image_speed = 0.2;
	    instance_create_layer(x,y,"IF",obj_e_arrow);
	}
	
	if image_index >= 5{
		image_speed = 0;
		image_index = 0;
	}
	
}else if prev_image_speed == 0 and image_speed != 0{
	prev_image_speed = image_speed;
	image_speed = 0;
}	