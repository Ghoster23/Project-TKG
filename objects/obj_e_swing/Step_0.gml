if not global.pause {
	image_speed = 0.5;

	if image_index == 3 {
	    instance_destroy();
    
	}

	if place_meeting(x,y,obj_body) and global.p_inv == false{
	    global.p_hp -= atk div global.p_def;
	    global.p_inv = true;
	}
}else {
	image_speed = 0;
}