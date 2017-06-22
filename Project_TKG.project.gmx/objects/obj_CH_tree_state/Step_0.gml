depth = -y-10;
x = phy_position_x;
y = phy_position_y;

s_x = s_x + ss_x*5;

if(s_x > 360 and ss_x == 1){
    ss_x = -1;
    mult = irandom_range(2,3);
}
if(s_x < 180 and ss_x == -1){
    ss_x = 1;
    mult = irandom_range(2,3);
}

phy_position_x = i_x;
phy_position_y = i_y;

///Determine action state
if start == true{
    if once == false{
        
        once = true;
    }
    
    if bene == true{    
        if state == 0{
            //Swing down
            state = 1;
        }
        
        if state == 4{
            grab = true;
        }
        
    }else if bene == false{
        image_speed = 0.5;
        
        if(image_index >= 15){
            instance_create(x,y,obj_CH_deer_state);
            while instance_exists(obj_CH_root){
                with obj_CH_root{
                    instance_destroy();
                }
            }
            instance_destroy();
        }
    }
    
}else {
    state = 0;
    
}

///Action state based changes
switch(state){
    //Dormant state
    case 0:
        global.b_spd = 0;
        image_speed = 0;
        
    break;
    
    //Root attack
    ///See root object
    
    //Leaves
    case 3:
        r_vis = false;
        r_solid = false;
        
        ///1st set
        if leaves == 1{
            if l1 == false{
                alarm[1] = 0.6 * room_speed;
                l1 = true;
                
            }
        
        ///2nd set
        }else if leaves == 2{
            if l2 == false{
                pat = "f";
                alarm[2] = 5 * room_speed;              
                l2 = true;
                
            }
            
            
            if(s_x mod 5*mult == 0){
                instance_create(x,y,obj_CH_leaf);
            }
                        
        ///3rd set and next phase
        }else if leaves == 3{
            if l3 == false{
                alarm[3] = 0.6 * room_speed;
                l3 = true;
                
            }
        }
        
    break;
    
    //Grab the player
    case 4:
        r_vis = false;
        r_solid = false;
        restart = true;
        
        if not instance_exists(obj_CH_groots) and bene == true{
            instance_create(obj_body.x,obj_body.y,obj_CH_groots);
        }
        
    break;
}

