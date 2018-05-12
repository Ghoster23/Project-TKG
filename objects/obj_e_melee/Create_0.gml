alarm_count = 1;

event_inherited();

draw_script = scr_psnt_draw;
allow = true;

tell = 0;

offpos=7;

spr = sprite_get_number(spr_e_melee);
offs   = 5;
offset = true;
sprite_index = spr_e_melee;
image_index=irandom(spr);

skin_color=0;