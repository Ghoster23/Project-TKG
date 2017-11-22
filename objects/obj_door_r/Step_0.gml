if(place_meeting(x,y,global.body) and not global.lock and not global.d_cd and obj_view.stopped){
    tpx = (global.body.x - (32 * 3.5));
    tpy = global.body.y;
	global.current_column++;
    global.d_cd = true;
	global.room_change = true;
    
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
    
    with(global.body.weapon){
        instance_destroy();
    }
    
    with(global.body){
        instance_destroy();
    }
    
    with(obj_stuck_sword){
        instance_destroy();
    }
    
   instance_create_layer(tpx,tpy,"Instances",global.body);
   
   global.d_cd = true;
   alarm[1] = 40;
}

