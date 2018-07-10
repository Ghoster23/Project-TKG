for(var i = 0; i < 10; i++){
	anim_off[i] = 0;
}

state = 0;

counter = 0;

start_x = 64;
start_y = 16;

heart_wd = sprite_get_width(spr_HUD_heart) + 2;
heart_hg = sprite_get_height(spr_HUD_heart);

stop = 0;
reset = true;