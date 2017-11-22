image_speed= 1;
image_xscale =1;
event_inherited();
scr_sound(snd_dodgeroll);

upH = shader_get_uniform(sh_outline,"pH");
upW = shader_get_uniform(sh_outline,"pW");
texelW = texture_get_texel_width(sprite_get_texture(sprite_index,0));
texelH = texture_get_texel_width(sprite_get_texture(sprite_index,0));

if global.body.hspd > 0 {
    sprite_index = global.char_bsprs[global.char,6];
    image_xscale = 1;
    
}
else if global.body.hspd < 0 {
    sprite_index = global.char_bsprs[global.char,6];
    image_xscale = -1;
    
}
else if global.body.vspd < 0 {
    sprite_index = global.char_bsprs[global.char,4];
    image_xscale = 1;
    
}
else if global.body.vspd > 0 {
    sprite_index = global.char_bsprs[global.char,5];
    image_xscale = 1;
    
}
