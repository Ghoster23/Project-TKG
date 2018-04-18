if(instance_exists(shadow)){
	var scale = alarm[0]/life_time;
	
	image_xscale = scale;
	image_yscale = scale;
	
	with(shadow){
		image_xscale = scale;
		image_yscale = scale;
	}
}

scr_break_object();

event_inherited();