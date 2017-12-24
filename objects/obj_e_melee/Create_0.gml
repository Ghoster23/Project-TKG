owner = instance_nearest(x,y,obj_psnt_body);
draw_script = scr_psnt_draw;
allow = true;
alarm_0 = -1;
tell = 0;

offpos=7;

event_inherited();
spr = sprite_get_number(spr_e_melee)
offs = 5;
offset = true;
sprite_index = spr_e_melee;
image_index=irandom(spr);

skin_color=0;