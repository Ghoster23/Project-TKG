///@description Damage flash (red)
if instance_exists(global.body){
    if global.p_hurt == true{	
		//Flash red
        if global.body.image_blend == c_white{
            with global.body{
                image_blend = c_red;
            }
            with obj_head{
                image_blend = c_red;
            }
        
		//Flash white
        }else if global.body.image_blend == c_red{
            with global.body{
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

