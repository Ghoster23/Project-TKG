image_alpha += 0.1;

if(not instance_exists(creator)){
    instance_destroy();
}

if(place_meeting(x,y,obj_body) and abs(y - creator.y) < 24 and creator.image_index == 0){
    if(global.invuln == false){
        global.p_hp -= global.b_atk;
        
        with(creator){
            instance_destroy();
        }
        
        instance_destroy();
    }
}

