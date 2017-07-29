///@description Damage flash (red)
if instance_exists(obj_body){
    if global.p_hurt == true{
		//Invulnerability
		global.p_inv = true;
	
		//Flash red
        if obj_body.image_blend == c_white{
            with obj_body{
                image_blend = c_red;
            }
            with obj_head{
                image_blend = c_red;
            }
        
		//Flash white
        }else if obj_body.image_blend == c_red{
            with obj_body{
                image_blend = c_white;
            }
            with obj_head{
                image_blend = c_white;
            }
        
		}
		
		//Stop flash
		if alarm[2] == -1{
		    alarm[2] = 0.5 * room_speed;
		}
		
		//Shout
		if shout {
			scr_sound(snd_char1_hurt1,snd_char1_hurt2,snd_char1_hurt3,snd_char1_hurt4);
			shout = false;
		}
    }  
}

