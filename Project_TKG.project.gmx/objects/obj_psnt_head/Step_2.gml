x=body.x
y=body.y-17;
image_speed = 0;

if flash == false{
switch body.d {
    case 0:
        break;
    case -1: //Left
        image_xscale = 1;
        if gender == 0{
            sprite_index = spr_peasent_hf_f;
        }else {
            sprite_index = spr_peasent_h_s;
        }
        break;
    case -2: //Up and Right
        if gender == 0{
            sprite_index = spr_peasent_hf_f;
        }else {
            sprite_index = spr_peasent_h_b;
        }
        break;
    case -3: //Up
        if gender == 0{
            sprite_index = spr_peasent_hf_f;
        }else {
            sprite_index = spr_peasent_h_b;
        }
        break;
    case -4: //Up and Left
        if gender == 0{
            sprite_index = spr_peasent_hf_f;
        }else {
            sprite_index = spr_peasent_h_b;
        }
        break;
    case 1: //Rigt
        image_xscale = -1;
        if gender == 0{
            sprite_index = spr_peasent_hf_f;
        }else {
            sprite_index = spr_peasent_h_s;
        }
        break;
    case 2: //Left and Down
        if gender == 0{
            sprite_index = spr_peasent_hf_f;
        }else {
            sprite_index = spr_peasent_h_f;
        }
        
        break;
    case 3: //Down
        if gender == 0{
            sprite_index = spr_peasent_hf_f;
        }else {
            sprite_index = spr_peasent_h_f;
        }
        
        break;
    case 4: //Down and Right
        if gender == 0{
            sprite_index = spr_peasent_hf_f;
        }else {
            sprite_index = spr_peasent_h_f;
        }
        
        break;
}
}

