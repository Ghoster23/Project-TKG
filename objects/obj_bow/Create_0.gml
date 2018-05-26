alarm_count = 1;

event_inherited();

draw_script = scr_psnt_draw;

image_speed = 0;

sprite_index = spr_bow;

offs = 4;
offset = true;

drawn  = sprite_index;
stowed = drawn;

mult = stats.atk;
divi = stats.def;

shoot = false;

scr_wep_pat_bow_init(4,0,5,0.2,100,obj_arrow,30);
wep_pat = scr_wep_pat_bow_states;