if(abs(f_y - y) < 25){
    depth = -y;
}

if(f_y - y > 5){
    phy_position_y += 5;
    
}else {
    if(place_meeting(x,y,obj_CH_leaf)){
        hp-=1;
    }
    
    if(image_index == 0){
    //Change sprite
        image_index = 1;
    }
    
    if(image_index == 1 and hp <= 25){
        image_index = 2;
    }
    
    if(hp <= 0 or creator.state > 1){
        instance_destroy();
    }
}  
    

