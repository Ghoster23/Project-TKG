if point_in_rectangle(mouse_x,mouse_y,244,287,367,325) {
    global.options = true;
    instance_create(0,0,obj_blackout);
    alarm[2]=16;
} else if point_in_rectangle(mouse_x,mouse_y,260,227,378,270) {
    instance_create(0,0,obj_cutscene);
    global.bota = true;
    alarm[1]=60;
}





