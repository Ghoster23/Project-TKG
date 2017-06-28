tpx = 0;
tpy = 0;
roomwd = 544;
roomhg = 416;

if(place_meeting(x,y,obj_body) && !place_meeting(x,y,obj_ppon) && global.lock == false && global.d_cd == false){
    tpx = (obj_body.x - (32 * 3.5));
    tpy = obj_body.y;
    global.d_cd = true;
    
    if instance_exists(obj_view){
        global.vfx = obj_view.x-roomwd;
        global.vfy = obj_view.y;
    
        with(obj_view){
        
            move_towards_point(global.vfx,global.vfy,16);
        
        }
    }
    
    with(obj_roll){
        instance_destroy();
    }
    
    with(obj_sword){
        instance_destroy();
    }
    
    with(obj_body){
        instance_destroy();
    }
    
    with(obj_sword_t){
        instance_destroy();
    }
    
   instance_create_layer(tpx,tpy,layer,obj_body);
   
   global.d_cd = true;
   alarm[1] = 40;
}

