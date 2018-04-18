if (broken){
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

