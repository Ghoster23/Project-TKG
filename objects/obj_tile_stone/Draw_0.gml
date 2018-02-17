/// @description Insert description here
// You can write your code in this editor
shader_set(sh_outline);
shader_set_uniform_f(upH,texelH);
shader_set_uniform_f(upW,texelW);
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,make_color_rgb(117,81,63),1) ;
shader_reset();
