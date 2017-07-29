image_speed= 1;
image_xscale =1;
event_inherited();
scr_sound(snd_dodgeroll);

if obj_body.hspd > 0 {
    sprite_index = global.char_bsprs[global.char,6];
    image_xscale = 1;
    
}
else if obj_body.hspd < 0 {
    sprite_index = global.char_bsprs[global.char,6];
    image_xscale = -1;
    
}
else if obj_body.vspd < 0 {
    sprite_index = global.char_bsprs[global.char,4];
    image_xscale = 1;
    
}
else if obj_body.vspd > 0 {
    sprite_index = global.char_bsprs[global.char,5];
    image_xscale = 1;
    
}
