if runonce == true{
	runonce = false;
	//decide image
	if tile==1{
		image_index=irandom_range(0,7);
	}
	else if tile == 2{
		image_index=irandom_range(8,17);
	}
}
if place_meeting(x,y,obj_wallvegetation){
	instance_destroy();
}