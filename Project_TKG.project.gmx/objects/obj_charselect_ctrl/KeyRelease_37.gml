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
instance_create(640,179,obj_charpresent)

show_debug_message(global.char_selection)

