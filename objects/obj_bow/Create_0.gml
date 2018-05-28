alarm_count = 1;

event_inherited();

image_speed = 0;

sprite_index = spr_bow;

offs = 4;
offset = true;

drawn  = sprite_index;
stowed = drawn;

mult = stats.atk;
divi = stats.def;

type   = item_type.weapons;
item   = weapons.bow;
amount = 8;

shoot = false;

scr_wep_pat_bow_init(2,0,5,0.4,100,obj_arrow,30);
wep_pat = scr_wep_pat_bow_states;