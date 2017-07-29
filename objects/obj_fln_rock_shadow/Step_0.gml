image_alpha += 0.1;

if(not instance_exists(creator)){
    instance_destroy();
}

if(place_meeting(x,y,obj_body) and abs(y - creator.y) < 24){
    if(global.p_inv == false){
        global.p_hp -= 1;
        
        with(creator){
            instance_destroy();
        }
        
        instance_destroy();
    }
}

