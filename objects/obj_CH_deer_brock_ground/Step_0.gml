if not global.pause {
	if(place_meeting(x,y,obj_CH_leaf)){
	    hp-=3;
	}
    
	if(image_index == 1 and hp <= 200){
	    image_index = 2;
	}
	
	if(image_index == 2 and hp <= 100){
	    image_index = 3;
	}
	
	if(image_index == 3 and hp <= 50){
	    image_index = 4;
	}
    
	if(hp <= 0){
	    image_index = 5;
		instance_create_layer(x,y,"BH",obj_CH_deer_brock_crater);
		instance_destroy();
	}
}