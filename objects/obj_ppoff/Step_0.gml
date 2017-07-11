if(place_meeting(x,y,obj_body) and obj_view.stopped){
    ///Suicide and Replacement
    instance_create_layer(x,y,"Instances",obj_ppon);
    
    global.lock = true;
    
    instance_destroy();
    
}