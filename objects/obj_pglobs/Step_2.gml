///@description Damge flash (red)
if instance_exists(obj_body){
    if global.p_inv == true{
        if obj_body.image_blend == c_white{
            with obj_body{
                image_blend = c_red;
            }
            with obj_head{
                image_blend = c_red;
            }
        
        }else if obj_body.image_blend == c_red{
            with obj_body{
                image_blend = c_white;
            }
            with obj_head{
                image_blend = c_white;
            }
        
      }
    
        if alarm_2 == false{
            alarm_2 = true;
            alarm[2] = 0.5 * room_speed;
       }
    }   
}

