if(room == rm_level and place_meeting(x,y,global.body) and obj_view.stopped){
    ///Suicide and Replacement
    instance_create_layer(x,y,"Instances",obj_ppon);
    
    global.lock = true;
    
    instance_destroy();
    
}else if place_meeting(x,y,global.body) {
	///Suicide and Replacement
    instance_create_layer(x,y,"Instances",obj_ppon);
    
    global.lock = true;
    
    instance_destroy();
}