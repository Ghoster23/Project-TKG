for(i = 0; i < instance_number(obj_CH_root); i++){
    if(place_meeting(x,y,instance_find(obj_CH_root,i))){
        creator = instance_find(obj_CH_root,i);
        break;
    }
}

