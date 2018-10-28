camera = room_get_camera(room,0);
cam_wd = camera_get_view_width(camera);
cam_hg = camera_get_view_height(camera);

layers = layer_get_all();

for(var i = 0; i < array_length_1d(layers); i++){
	var name = layer_get_name(layers[i]);
	
	switch name {
		case "PS":
			PS_layer = i;
		break;
		
		case "IF":
			IF_layer = i;
		break;
		
		case "Instances":
			INT_layer = i;
		break;
		
		case "BH":
			BH_layer = i;
		break;
	}
}