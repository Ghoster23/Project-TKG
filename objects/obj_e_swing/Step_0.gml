if not global.pause {
	image_speed = 0.5;

	if image_index == 3 {
	    instance_destroy();
    
	}

	if place_meeting(x,y,global.body) {
	    scr_damage_player(1);
	}
}else {
	image_speed = 0;
}