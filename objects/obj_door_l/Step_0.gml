if(place_meeting(x,y,obj_body) and not global.lock and not global.d_cd and obj_view.stopped){
    tpx = (obj_body.x + (32 * 3.5));
    tpy = obj_body.y;
	global.current_column--;
    global.d_cd = true;
	ds_grid_clear(global.fluid_grid,0);
    
    if instance_exists(obj_view){
        global.vfx = obj_view.x+roomwd;
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
    
    with(obj_stuck_sword){
        instance_destroy();
    }
    
   instance_create_layer(tpx,tpy,layer,obj_body);
   
   global.d_cd = true;
   alarm[1] = 40;
}

