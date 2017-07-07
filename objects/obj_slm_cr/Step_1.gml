///@description Determine distance to player, show hurt and knockback position
dis = distance_to_object(obj_body);

if flash == true{
        sprite_index = spr_slime_hit;
        image_speed = 0;
}

if instance_exists(obj_kb){
    kb_x = obj_kb.x;
    kb_y = obj_kb.y;
}

