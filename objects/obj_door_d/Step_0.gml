if(place_meeting(x,y,global.body) and not global.lock  and not global.d_cd  and obj_view.stopped){
    tpx = global.body.x;
    tpy = (global.body.y + (32 * 5.5));
	global.current_row++;
    global.d_cd = true;
	ds_grid_clear(global.fluid_grid,0);
    
    if instance_exists(obj_view){
        global.vfx = obj_view.x;
        global.vfy = obj_view.y+roomhg;
    
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
   
   alarm[1] = 40;
}

