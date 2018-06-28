alarm_count = 1;

event_inherited();

attack = false;

draw_script = scr_psnt_draw;
allow       = true;

spr = sprite_get_number(spr_e_melee);

sprite_index = spr_e_melee;
image_index  = irandom(spr);

kb_amount = 50 * (image_index div 2);
mult      = stats.atk;

skin_color = 0;

scr_wep_pat_swing_init(45,15,120,2,0,5);
pat = scr_wep_pat_swing_states;

item   = weapons.wood_stick + image_index;
amount = 8;