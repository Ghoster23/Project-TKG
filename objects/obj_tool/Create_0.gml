event_inherited();
owner = noone;

//Pause
scr_pausable_init(4);

//Visuals
offset = true;
offs   = 4;

angle        = 0;
ang_off_base = 0;
ang_off      = 0;

animations = [0,0];

drawn  = -1;
stowed = -1;

image_speed = 0;
img_spd     = 0;

offx = 0;
offy = 0;

//Weapon
mult = stats.atk;
divi = stats.def;

kb_amount = 0;

//Item parameters
type   = item_type.tl_n_wep;
item   = tl_n_wep.wood_stick;
amount = 8;

//Mechanics
state      = 0;
base_state = 0;

executing = -1;

skills = [-1,-1,-1,-1];
cds    = [-1,-1,-1,-1];
charge = [-1,-1]; 
key[0] = false;
key[1] = false;

meter    = noone;
chargeup = false;

player_owned = false;