if not global.pause {
	scr_pause_end(1);
	
	if(on){
		switch(state){
			case 0:
				if(image_index != 0){
					image_index = scr_approach(image_index,0,0.4);
				}
			break;
			
			case 1:
				if(!instance_exists(dmg_dl)){
					dmg_dl = instance_create_layer(x,y,layer,obj_fl_spikes_dmg_dl);
					dmg_dl.owner = id;
				}
			
				if(image_index != 5){
					image_index = scr_approach(image_index,5,(5-image_index)/2);
				}
			break;
		}
	}
	
}else {
	scr_pause_start(1);
	
}