dis = distance_to_object(obj_body);

if state == 1 {
    var d_ = point_direction(x,y,obj_body.x,obj_body.y);
}else if state == 0{
    var d_ = i_dir;
}else {
    d_ = 666;
}

if (d_ >= 0 and d_ <= 45) or (d_ >= 315 and d_ <= 360){
    d = 1;
}else if d_ > 45 and d_ < 135{
    d = -3;
}else if d_ >= 135 and d_ <= 225{
    d = -1;
}else if d_ > 225 and d_ < 315{
    d = 3;
}else {
    d = 0;
}

if flash == false{
switch d {
    case 0:
        break;
    case -1: //Left
        image_xscale = -1;
        sprite_index = spr_slime_side;
        break;
    case -2: //Up and Right
        sprite_index = spr_slime_up;
        break;
    case -3: //Up
        sprite_index = spr_slime_up;
        break;
    case -4: //Up and Left
        sprite_index = spr_slime_up;
        break;
    case 1: //Rigt
        image_xscale = 1;
        sprite_index = spr_slime_side;
        break;
    case 2: //Left and Down
        sprite_index = spr_slime_down;
        break;
    case 3: //Down
        sprite_index = spr_slime_down;
        break;
    case 4: //Down and Right
        sprite_index = spr_slime_down;
        break;
}
}

