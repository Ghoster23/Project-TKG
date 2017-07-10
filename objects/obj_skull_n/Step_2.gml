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

if flash == false and casting == false{
switch d {
    case 0:
        break;
    case -1: //Left
        image_xscale = -1;
        image_index = 0;
        break;
    case -2: //Up and Right
        image_index = 2;
        break;
    case -3: //Up
        image_index = 2;
        break;
    case -4: //Up and Left
        image_index = 2;
        break;
    case 1: //Rigt
        image_xscale = 1;
        image_index = 0;
        break;
    case 2: //Left and Down
        image_index = 1;
        break;
    case 3: //Down
        image_index = 1;
        break;
    case 4: //Down and Right
        image_index = 1;
        break;
    }
}

