if(rm_x == global.current_col && rm_y == global.current_row){
	if(place_meeting(x,y-32,obj_entity_parent) ||
	   place_meeting(x,y-32,obj_entity_parent) ){
		image_alpha = 0.5;
	}else {
		image_alpha = 1;
	}
}else {
	image_alpha = 1;
}