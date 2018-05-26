//States
wep_pat_state  = 0; //State to start at
wep_pat_nstate = 0;

//Cooldown
wep_pat_cd    = argument0; //Time for shot cooldown
wep_pat_alarm = argument1; //Which alarm is the cd

//Charge
wep_pat_img_ind_charged = argument2;
wep_pat_img_spd         = argument3;

//Capacity
wep_capacity = argument4;
wep_ammo     = wep_capacity;

//Projectiles
wep_projectile = argument5;
wep_proj_speed = argument6;