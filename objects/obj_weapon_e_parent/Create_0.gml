event_inherited();
owner = noone;

//Pause
scr_pausable_init(alarm_count);

//Visuals
offset = true;
offs   = 4;
angle  = 0;

drawn  = -1;
stowed = -1;

image_speed = 0;

offx = 0;
offy = 0;

type   = item_type.weapons;
item   = weapons.wood_stick;
amount = 8;

//Mechanics
state   =  0;
base_state = 0;
wep_pat = -1;
attack  = false;
player_owned = false;