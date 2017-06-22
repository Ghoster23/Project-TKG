depth = -y;

if(place_meeting(x,y,obj_rock)){ 
    instance_destroy();
}
if(place_meeting(x,y,obj_wall_down)){ 
    instance_destroy();
}
if(place_meeting(x,y,obj_wall_right)){ 
    instance_destroy();
}
if(place_meeting(x,y,obj_wall_up)){ 
    instance_destroy();
}
if(place_meeting(x,y,obj_wall_left)){ 
    instance_destroy();
}
if(place_meeting(x,y,obj_sword_t)){
    instance_destroy();
}
if(place_meeting(x,y,obj_swing)){ 
    instance_destroy();
}

