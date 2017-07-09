/// @description Inicialize the enemy
event_inherited();
image_speed=0;
solid=false;
visible=false;
flash=false;
damaged=false;
go=false;
moved=false;

//times
move_time=0.7;
state_time=1.5;

//Stats
e_mhp = 20;
e_hp = 20;
e_atk = 5;
e_satk = 0;
e_def = 5;
e_sdef = 5;
e_spd = 3;

//States
state = 0;
state_change = false;
p_state = 0;

