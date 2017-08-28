if (place_meeting(x,y,obj_sword_projectile_impact) or place_meeting(x,y,obj_swing) or place_meeting(x,y,obj_explosion) or place_meeting(x,y,obj_e_arrow)){
        alarm[0]=0.04*room_speed;
		//sound
		scr_sound(snd_hit_vase);
		scr_sound(snd_vase_bits1,snd_vase_bits2,snd_vase_bits3);
		
		//shader for damage
		flash = true;
		
        if((irandom(99) + 1) == 1){
                instance_create_layer(x,y,"Instances",obj_heart);
                
            }else if((irandom(99) + 1) == 1){
                instance_create_layer(x,y,"Instances",obj_heart);
    }
}

