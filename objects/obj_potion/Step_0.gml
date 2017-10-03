scr_get_input();

if distance_to_object(global.body) <= 8 and interact_key{
	if global.potion[1] == c_white {
		global.potion[0] = image_index;
		global.potion[1] = color;
		
		instance_destroy();
		
	}else {
		var l = image_index;
		var c = color;
		
		image_index = global.potion[0];
		color = global.potion[1];
		
		global.potion[0] = l;
		global.potion[1] = c;
		
	}
	
	obj_gui.n_potion = true;
}