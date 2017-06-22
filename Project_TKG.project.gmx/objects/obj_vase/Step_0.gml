depth = -y;

if(place_meeting(x,y,obj_swing) or place_meeting(x,y,obj_sword_t)){
        image_blend = c_red;
        alarm[0]=0.02*room_speed;
        if((irandom(99) + 1) == 1){
                instance_create(x,y,obj_hheart);
                
            }else if((irandom(99) + 1) == 1){
                instance_create(x,y,obj_fheart);
    }
}

