//States
wep_pat_state  = 0; //State to start at
wep_pat_nstate = 0;

wep_pat_charge_time  = argument10;
wep_pat_charge_count = 0;

//Cooldown
wep_pat_cd    = argument0; //Time for shot cooldown
wep_pat_alarm = argument1; //Which alarm is the cd

wep_pat_frost_cd    = argument2;
wep_pat_frost_count = 0;

wep_pat_block_cd    = argument3;
wep_pat_block_count = 0;

wep_pat_reload_cd    = argument4; //Time for reload cooldown
wep_pat_reload_count = 0;
wep_pat_reload_rate  = argument5; //Rate of reload

//Capacity
wep_capacity = argument6;
wep_ammo     = wep_capacity;

//Projectiles
wep_proj_count  = argument7;
wep_proj_spread = argument8;
wep_proj_speed  = argument9;

prev_ball = noone;

chargeup    = false;
progressbar = noone;

tx = -1;
ty = -1;