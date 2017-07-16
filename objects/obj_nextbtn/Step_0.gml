/// @description click on - flicker
if point_in_rectangle(mouse_x,mouse_y,330,303,388,324) and orientation=0 and mouse_check_button_released(mb_left)=true{
    image_index=0
    if (global.char_selection==0){
        global.char_selection=12
    }
    else {
        global.char_selection-=1
    }
    with (obj_banner){
        scr_banner();
    }
    
    with (obj_charpresent){
        instance_destroy();
    }
    instance_create_layer(640,179,obj_nextbtn.layer,obj_charpresent)
    
}
else if point_in_rectangle(mouse_x,mouse_y,549,304,604,323) and orientation=1 and mouse_check_button_released(mb_left)=true{
    image_index=2
    if (global.char_selection==12){
        global.char_selection=0
    }
    else {
        global.char_selection+=1
    }
    
    with (obj_banner){
        scr_banner();
    } 
    with (obj_charpresent){
        instance_destroy();
    }
    instance_create_layer(640,179,obj_nextbtn.layer,obj_charpresent)
 
}
///mouse over
else if point_in_rectangle(mouse_x,mouse_y,330,303,388,324) and orientation=0{
    image_index=1
}
else if point_in_rectangle(mouse_x,mouse_y,549,304,604,323) and orientation=1{
    image_index=3
}
/// else
else if orientation=0{
    image_index=0
}
else if orientation=1{
    image_index=2
}

if keyboard_check_released(vk_left) and orientation=0{
    image_index=1
}
if keyboard_check_released(vk_right) and orientation=1{
    image_index=3
}


