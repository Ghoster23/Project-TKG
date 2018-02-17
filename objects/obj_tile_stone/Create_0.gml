/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
upH    = shader_get_uniform(sh_outline,"pH");
upW    = shader_get_uniform(sh_outline,"pW");
texelW = texture_get_texel_width(sprite_get_texture(sprite_index,0));
texelH = texture_get_texel_height(sprite_get_texture(sprite_index,0));
u = 0;
r = 0;
d = 0;
l = 0;
u_r = 0;
u_l = 0;
d_r = 0;
d_l = 0;

ad = 0;