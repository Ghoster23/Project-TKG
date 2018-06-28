//States
pat_state  = 0; //State to start at
pat_nstate = 0;

pat_charge_time  = argument10;
pat_charge_count = 0;

//Cooldown
pat_cd    = argument0; //Time for shot cooldown
pat_alarm = argument1; //Which alarm is the cd

pat_frost_cd    = argument2;
pat_frost_count = -1;

pat_block_cd    = argument3;
pat_block_count = -1;

pat_reload_cd    = argument4; //Time for reload cooldown
pat_reload_count = -1;
pat_reload_rate  = argument5; //Rate of reload

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