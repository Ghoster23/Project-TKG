
//Immunity
event_inherited();

if state == 1 {
    var d_ = point_direction(x,y,global.body.x,global.body.y);
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

if flash == false and not global.pause{
switch d {
    case 0:
        break;
    case -1: //Left
        image_xscale = -1;
	    sprite_index = bodys_sprite;
		head.facing = "left";
        break;
    case -2: //Up and Right
        sprite_index = bodyb_sprite;
		head.facing = "up";
        break;
    case -3: //Up
        sprite_index = bodyb_sprite;
		head.facing = "up";
        break;
    case -4: //Up and Left
        sprite_index = bodyb_sprite;
		head.facing = "up";
        break;
    case 1: //Right
        image_xscale = 1;
        sprite_index = bodys_sprite;
		head.facing = "right";
        break;
    case 2: //Left and Down
        sprite_index = bodyf_sprite;
		head.facing = "down";
        break;
    case 3: //Down
        sprite_index = bodyf_sprite;
		head.facing = "down";
        break;
    case 4: //Down and Right
        sprite_index = bodyf_sprite;
		head.facing = "down";
        break;
	}
}

