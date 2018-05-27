alarm_count = 1;

event_inherited();

draw_script = scr_psnt_draw;
allow       = true;

spr = sprite_get_number(spr_e_melee);

sprite_index = spr_e_melee;
image_index  = irandom(spr);

skin_color = 0;

scr_wep_pat_swing_init(45,15,120,2,0,5);
wep_pat = scr_wep_pat_swing_states;