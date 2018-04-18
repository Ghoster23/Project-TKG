//States
wep_pat_state  = 0; //State to start at
wep_pat_nstate = 0;

//Cooldown
wep_pat_cd    = argument0; //Time for shot cooldown
wep_pat_alarm = argument1; //Which alarm is the cd

wep_pat_reload_cd    = argument2; //Time for reload cooldown
wep_pat_reload_alarm = argument3; //Which alarm is the cd
wep_pat_reload_rate  = argument4; //Rate of reload

//Capacity
wep_capacity = argument5;
wep_ammo     = wep_capacity;

//Projectiles
wep_proj_count  = argument6;
wep_proj_spread = argument7;
wep_proj_speed  = argument8;

wep_potion = 0;

tx = -1;
ty = -1;