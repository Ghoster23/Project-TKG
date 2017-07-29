if not global.pause {
	image_speed = 0.5;

	if image_index == 3 {
	    instance_destroy();
    
	}

	if place_meeting(x,y,obj_body) and not global.p_hurt and not global.p_inv{
	    global.p_hp -= atk div global.p_def;
	    global.p_hurt = true;
	}
}else {
	image_speed = 0;
}