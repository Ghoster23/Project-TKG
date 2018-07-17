/// @description TO BE REMOVED
//temporary pls remove if not being used
if(global.selected_light != noone){
	global.selected_light = noone;
}
else{
	var closest_light = instance_nearest(mouse_x,mouse_y,obj_light_test);
	if(point_distance(closest_light.x,closest_light.y,mouse_x,mouse_y)<30){
		global.selected_light = closest_light.id;
	}
}


	

