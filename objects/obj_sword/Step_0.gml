scr_get_input();
event_inherited();

if not global.pause {
	image_angle = point_direction(x,y,mouse_x,mouse_y);

	global.thrown=false;

	//atacking
	if (attack_key) and allow = true {
	    allow = false;
	    alarm[1] = 0.4 * room_speed; 
	    image_xscale = -1*image_xscale;
	    image_yscale = -1*image_yscale;
	    instance_create_layer(x, y, "IF",obj_swing); 
		scr_sound(snd_sword_slash);
	}

	if throw_key {
	    instance_create_layer(obj_body.x,obj_body.y, layer, obj_sword_t);
	    instance_destroy();
	    global.thrown = true;
	}
}