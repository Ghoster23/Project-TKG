if(scr_unique_inst()) {exit;}

for(var i = 0; i < 10; i++){
	anim_off[i] = 0;
}

state = 0;

m = 0;

counter = 0;

start_x = 8;
start_y = 8;

heart_wd = sprite_get_width(spr_HUD_heart) + 2;
heart_hg = sprite_get_height(spr_HUD_heart);

slot_c = 0;

stop = 0;
reset = true;