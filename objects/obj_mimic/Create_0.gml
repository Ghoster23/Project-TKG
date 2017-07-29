/// @description Inicialise the enemy
event_inherited();
image_speed=0;

flash = false;
a = 0;
damaged = false;

//Tell
interval = false;
blink = false;

//Stats
e_mhp = 10;
e_hp = 10;
e_atk = 10;
e_satk = 0;
e_def = 5;
e_sdef = 5;
e_spd = 0;

//States
state = 0;

///Distance
dis = 0

///Knockback
kb_x = 0;
kb_y = 0;

for(i = 0; i < 6; i++){
	alarms[i] = -1;
}