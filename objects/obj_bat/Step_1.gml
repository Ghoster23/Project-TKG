///@description Determine distance to body and knockback point
dis = distance_to_object(obj_body);

//Only update distance if not dashing
if dash == false{
    dir = point_direction(x,y,obj_body.x,obj_body.y);
}

//Knockback point
if instance_exists(obj_kb){
    kb_x = obj_kb.x;
    kb_y = obj_kb.y;
}

