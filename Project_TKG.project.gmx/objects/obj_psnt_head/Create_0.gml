randomize();
image_speed = 0;
body = instance_nearest(x,y,obj_psnt_body)

flash = false;
gender = irandom(1);
opt = irandom(5);

body.gender = gender;

if gender == 0{
    sprite_index = spr_peasent_hf_f;
}else {
    sprite_index = spr_peasent_h_f;
}

image_index = opt;

