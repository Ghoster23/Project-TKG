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
instance_create_layer(640,179,layer,obj_charpresent)


show_debug_message(global.char_selection)


