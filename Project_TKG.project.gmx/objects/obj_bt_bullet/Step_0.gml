depth = -y;

if(global.alarm_cl == true && global.alarm_rp == true){
    physics_apply_impulse(x, y, lengthdir_x(1, point_direction(x,y,obj_body.x,obj_body.y))*0.10,lengthdir_y(1, point_direction(x,y,obj_body.x,obj_body.y))*0.10);
    }
       
if(distance_to_point(tx,ty) < 5){
    instance_destroy();
}

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

