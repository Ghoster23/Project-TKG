if(place_meeting(x,y,obj_body)){
    ///Suicide and Replacement
    instance_create_layer(x,y,obj_ppoff.layer,obj_ppon);
    
    global.lock = true;
    
    instance_destroy();
    
}