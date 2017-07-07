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

if flash == false and not global.pause{
switch d {
    case 0:
        break;
    case -1: //Left
        image_xscale = -1;
        if gender == 0{
            sprite_index = spr_peasent_f_s;
			head.sprite_index = spr_peasent_hf_s;
        }else {
            sprite_index = spr_peasent_m_s;
			head.sprite_index = spr_peasent_h_s;
        }
        break;
    case -2: //Up and Right
        if gender == 0{
            sprite_index = spr_peasent_f_b;
			head.sprite_index = spr_peasent_hf_b;
        }else {
            sprite_index = spr_peasent_m_b;
			head.sprite_index = spr_peasent_h_b;
        }
        break;
    case -3: //Up
        if gender == 0{
            sprite_index = spr_peasent_f_b;
			head.sprite_index = spr_peasent_hf_b;
        }else {
            sprite_index = spr_peasent_m_b;
			head.sprite_index = spr_peasent_h_b;
        }
        break;
    case -4: //Up and Left
        if gender == 0{
            sprite_index = spr_peasent_f_b;
			head.sprite_index = spr_peasent_hf_b;
        }else {
            sprite_index = spr_peasent_m_b;
			head.sprite_index = spr_peasent_h_b;
        }
        break;
    case 1: //Rigt
        image_xscale = 1;
        if gender == 0{
            sprite_index = spr_peasent_f_s;
			head.sprite_index = spr_peasent_hf_s;
        }else {
            sprite_index = spr_peasent_m_s;
			head.sprite_index = spr_peasent_h_s;
        }
        break;
    case 2: //Left and Down
        if gender == 0{
            sprite_index = spr_peasent_f_f;
			head.sprite_index = spr_peasent_hf_f;
        }else {
            sprite_index = spr_peasent_m_f;
			head.sprite_index = spr_peasent_h_f;
        }
        break;
    case 3: //Down
        if gender == 0{
            sprite_index = spr_peasent_f_f;
			head.sprite_index = spr_peasent_hf_f;
        }else {
            sprite_index = spr_peasent_m_f;
			head.sprite_index = spr_peasent_h_f;
        }
        break;
    case 4: //Down and Right
        if gender == 0{
            sprite_index = spr_peasent_f_f;
			head.sprite_index = spr_peasent_hf_f;
        }else {
            sprite_index = spr_peasent_m_f;
			head.sprite_index = spr_peasent_h_f;
        }
        break;
}
}

