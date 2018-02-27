{
var ratio = clamp(8/z,0.05,1);

draw_sprite_ext(spr_player_shadow,0,x+16,y+16,ratio,ratio,0,c_white,1);
scr_draw_item(type,item,amount,x,y - z,image_xscale,image_yscale,image_alpha);
}