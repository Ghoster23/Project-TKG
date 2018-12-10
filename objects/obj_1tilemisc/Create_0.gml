event_inherited();

image_speed=0;
image_index=irandom_range(0,17);

if place_meeting(x,y,obj_wallvegetation){
	instance_destroy();
}

no_shadows = true;