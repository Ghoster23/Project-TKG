while(confirm == false){

    global.broomt = 3;

    if(global.broomt == 3 && broomt_3 == false){
        confirm = true;
    }
    else if(global.broomt == 4 && broomt_4 == false){
        confirm = true;
    }
    else if(global.broomt == 5 && broomt_5 == false){
        confirm = true;
    }
    else if(global.broomt == 6 && broomt_6 == false){
        confirm = true;
    }
    
}

if(confirm == true && distance_to_object(global.body) < 12 && interact_key == true){
    image_speed = 0.3;
}

if(image_index >= 6){ 
    room_goto(rm_CH_boss);
    with(global.body){
        instance_destroy();
    }
    with(obj_player_hud){
        instance_destroy();
    }
    
}

