//Deprecated

alarm_count = 1;

event_inherited();

attack = false;

draw_script = scr_psnt_draw;
allow       = true;

spr = sprite_get_number(spr_melee_weapon);

sprite_index = spr_melee_weapon;
image_index  = irandom(spr);

kb_amount = 50 * (image_index div 2);
mult      = stats.atk;

skin_color = 0;


pat = scr_skill_swing_states;

item   = tl_n_wep.wood_stick + image_index;
amount = 8;