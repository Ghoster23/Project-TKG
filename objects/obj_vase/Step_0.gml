if(place_meeting(x,y,obj_swing) or place_meeting(x,y,obj_sword_t)){
        alarm[0]=0.04*room_speed;
		
		//shader for damage
		flash = true;
		
        if((irandom(99) + 1) == 1){
                instance_create_layer(x,y,"Instances",obj_hheart);
                
            }else if((irandom(99) + 1) == 1){
                instance_create_layer(x,y,"Instances",obj_fheart);
    }
}

