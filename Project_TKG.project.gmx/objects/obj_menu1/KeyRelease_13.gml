if selected=1{
    instance_create(0,0,obj_cutscene);
    global.bota = true;
    alarm[1]=60;   
}
else if selected =2{
    global.options = true;
    instance_create(0,0,obj_blackout);
    alarm[2]=16;
}


