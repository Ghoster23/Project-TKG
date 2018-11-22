/// @description Inicialize the enemy
event_inherited();

type = entity_type.animal;

image_speed = 0;

//Stats
stat[stats.mhp]  = 20;
stat[stats.hp]   = 20;
stat[stats.atk]  =  5;
stat[stats.def]  =  5;
stat[stats.satk] =  5;
stat[stats.sdef] =  5;
stat[stats.spd]  =  3;

prev_hp = stat[stats.hp];

///Enemy unique
//Has moved
moved = false;
shot = false;

state = "follow";
breaking = false;
//times 
move_time  = 0.5*room_speed;
move_time_counter = move_time;

break_time = 0.2*room_speed;

transition_time = 0.5*room_speed;
transition_time_counter=transition_time

shot_cooldown_time = 1.5*room_speed;

scr_pausable_init(10);