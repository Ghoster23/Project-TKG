if place_meeting(x,y,obj_pit) {
	image_xscale -= 0.15;
	image_yscale -= 0.15;
	image_alpha -= 0.1;
	
	if image_xscale <= 0.2 {
		ds_list_add(global.fallen_items,[ self.object_index, x, y]);
		instance_destroy();
		
	}
}