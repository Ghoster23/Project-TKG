{
draw_sprite_ext(spr_player_shadow,0,phy_position_x+16,phy_position_y+16,image_xscale,image_yscale,0,c_white,1);

scr_draw_item(type,item,amount,phy_position_x,phy_position_y,image_xscale,image_yscale,image_alpha);

physics_draw_debug();
}