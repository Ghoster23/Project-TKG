if(abs(f_y - y) < 25){
    depth = -y;
}

if(f_y - y > 5){
    phy_position_y += 8;
    
}else {
    if(place_meeting(x,y,obj_CH_leaf)){
        hp-=3;
    }
    
    if(image_index == 0){
    //Change sprite
        image_index = 1;
    }
    
    if(image_index == 1 and hp <= 300){
        image_index = 2;
    }
	
	if(image_index == 1 and hp <= 200){
        image_index = 3;
    }
	
	if(image_index == 1 and hp <= 100){
        image_index = 4;
    }
    
    if(hp <= 0 or creator.state > 2){
        image_index = 5;
		instance_create_depth(x,y,depth+50,obj_CH_deer_brock_crater);
		instance_destroy();
    }
}  
    

