tpx = 0;
tpy = 0;
roomwd = global.roomwd;
roomhg = global.roomhg;

if(place_meeting(x,y,obj_body) && !place_meeting(x,y,obj_ppon) && global.lock == false && global.d_cd == false){
    tpx = obj_body.x;
    tpy = (obj_body.y + (32 * 5.5));
	global.current_row++;
    global.d_cd = true;
    
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
    
    with(obj_sword){
        instance_destroy();
    }
    
    with(obj_body){
        instance_destroy();
    }
    
    with(obj_sword_t){
        instance_destroy();
    }
    
   instance_create_layer(tpx,tpy,"Instances",obj_body);
   
   alarm[1] = 40;
}

