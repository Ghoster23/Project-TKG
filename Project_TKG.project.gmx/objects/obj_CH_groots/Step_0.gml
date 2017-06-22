if global.st_stuck == true{
    if image_index >= 4 and image_speed > 0{
        image_speed = 0;
        
    }
    
    if pain == false{
        pain = true;
        alarm[0] = 0.4 * room_speed;
        
    }
    
    if image_index == 0 and image_speed < 0{
        obj_CH_tree_state.bene = false;
        global.st_stuck = false;
        global.st_stuck_d = 0;
        instance_destroy();
        
    }
    
}else {
    if image_index != 0 and image_speed == 0{
        image_speed = -0.2;
    }
     
    if image_index == 0 and once == false{
        alarm[2] = 1.5 * room_speed;
        once = true;
        
        visible = false;
        
    }   
    
    global.stuck = false;
    global.stuck_d = 0;

    
}

if(mouse_check_button_released(mb_left)){
    alarm[1] = 1 * room_speed;

    image_speed = -0.2;
}

