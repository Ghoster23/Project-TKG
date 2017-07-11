if selected=1{
    instance_create_layer(0,0,obj_menu1.layer,obj_cutscene);
    global.bota = true;
    alarm[1]=60;   
}
else if selected =2{
    global.options = true;
    instance_create_layer(0,0,obj_menu1.layer,obj_blackout);
    alarm[2]=16;
}


