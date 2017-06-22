depth = -y;
if(place_meeting(x,y,obj_body)){
    ///Suicide and Replacement
    instance_create(x,y,obj_ppon);
    
    global.lock = true;
    
    instance_destroy();
    
}


