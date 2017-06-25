depth = -y;

if image_index >= 2 and image_speed > 0 and global.st_stuck == false{
    image_speed = 0;
	image_index = 3;
	
	global.st_stuck = true;
	global.st_stuck_d = 1.5 * room_speed;
	draw_sprite(spr_CH_groots_front,0,x,y);
}

if global.st_stuck == true{
    draw_sprite(spr_CH_groots_front,0,x,y);
    
    if image_index == 0 and image_speed < 0{
        obj_CH_tree_state.bene = false;
        global.st_stuck = false;
        global.st_stuck_d = 0;
        instance_destroy();
        
    }
    
}else {
    if image_index != 0 and image_speed == 0{
        image_speed = -0.3;
    }
     
    if image_index == 0 and once == false{
        alarm[2] = 1.5 * room_speed;
        once = true;
        
        visible = false;
        
    }   
    
    global.stuck_d = 0;
}

if(mouse_check_button_released(mb_left)){
    alarm[1] = 1 * room_speed;

    image_speed = -0.3;
}

