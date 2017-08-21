/// @description Inicialise the enemy
event_inherited();
image_speed=0;

flash = false;
a = 0;
damaged = false;
atk_cd = false;

//Tell
interval = false;
blink = false;

//Stats
e_mhp = 10;
e_hp = 10;
e_atk = 10;
e_satk = 0;
e_def = 3;
e_sdef = 5;
e_spd = 0;

//States
state = 0;

///Distance
dis = 0

path = path_add();

for(i = 0; i < 6; i++){
	alarms[i] = -1;
}