/// @description click on - flicker
if point_in_rectangle(mouse_x,mouse_y,x,y,x+56,y+28) and mouse_check_button_released(mb_left)=true{
    image_index=0
    room_goto_next();
}
///mouse over
else if point_in_rectangle(mouse_x,mouse_y,x,y,x+56,y+28){
    image_index=1
}
/// else
else{
    image_index=0
}
if keyboard_check_released(vk_enter){
    image_index=1
    room_goto_next();
}

