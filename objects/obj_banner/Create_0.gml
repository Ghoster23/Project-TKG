event_inherited();
offset=true;
offs=-10;
image_speed=0;
image_index=irandom_range(0,31);

if place_meeting(x,y,obj_wallvegetation){
	instance_destroy();
}

no_shadows = true;