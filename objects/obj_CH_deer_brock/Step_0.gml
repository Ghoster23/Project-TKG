if not global.pause {
	height = f_y - phy_position_y;
	offs = height;
	
	if(height >= 10){
	    phy_position_y += 10;
		
		if instance_exists(shadow){
			shadow.image_alpha += 0.1;
		}
    
	}else {
		if instance_exists(shadow){
			with shadow {
				instance_destroy();
			}
		}
			
		//Change sprite
		image_index = 1;
		
		instance_create_layer(phy_position_x,phy_position_y,"Instances",obj_CH_deer_brock_ground);
	    
		instance_destroy();
	}  
}