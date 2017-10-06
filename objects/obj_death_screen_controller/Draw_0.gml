draw_set_halign(fa_left);

draw_text_transformed(x,y-48,"Enemies defeated: " + string(global.kld_enemies),1,1,0);

draw_text_transformed(x,y-16,"Coins Collected: " + string(global.total_coins),1,1,0);

draw_set_halign(fa_center);

draw_sprite_ext(spr_b_light,0,56,256,1,1,0,c_white,0.4);