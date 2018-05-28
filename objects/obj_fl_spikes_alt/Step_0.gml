if not global.pause {
	scr_pause_end(1);
	
	if state == 0{
		if image_index >= 1{
			image_speed = -0.2;
			
		}else {
			image_speed = 0;
			image_index = 0;
			
		}
		
	}else if state == 1{
		if(!instance_exists(dmg_dl)){
			dmg_dl = instance_create_layer(x,y,layer,obj_fl_spikes_dmg_dl);
			dmg_dl.owner = id;
		}
		
		if image_index <= 4 {
			image_speed = 1;
		
		}else {
			image_speed = 0;
			image_index = 5;
			
		}
		
	}
	
}else {
	scr_pause_start(1);
	
}