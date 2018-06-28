//States
pat_state  = 0; //State to start at
pat_nstate = 2; //This is set during the other script... So it really can be anything

//Angles
wep_ang_off    = argument0; //The offset to the angle it follows
wep_ang_target = 0; //A target angle for after a swing
wep_ang_windup = argument1; //Windup angle
wep_ang_swing  = argument2; //Swing  angle
wep_ang_base   = (180 - wep_ang_swing) div 2;

//Cooldown
pat_cd     = argument3; //Time for slash cd
pat_alarm  = argument4; //Which alarm is the cd

//Speeds
wep_windup_spd = argument5; //Speed at which windup is done