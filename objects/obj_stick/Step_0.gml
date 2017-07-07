if not global.pause and instance_exists(owner){
	if owner.state == 0{
	    image_angle = owner.i_dir;
	}else if owner.state != 0{
	    image_angle = owner.dir;
	}
	
	if owner.state == 2 and owner.cd_swing == true{
		image_blend = c_red;
	}else {
		image_blend = c_white;
	}

	if owner.state == 3{
	    instance_destroy();
	}

	//atacking
	if owner.swing == true {
	    image_xscale = -1*image_xscale;
	    image_yscale = -1*image_yscale;
	    instance_create_layer(x,y,layer,obj_e_swing);
	    owner.swing = false;
	}
	
}else if not instance_exists(owner){
	instance_destroy();
}