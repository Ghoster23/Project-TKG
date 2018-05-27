/// @description Inicialise the enemy
event_inherited();

//create weapon
weapon = scr_create_weapon(x,y,layer,obj_melee,id);
weapon.skin_color = skin_color;

//Stats
stat[stats.mhp]  = 20;
stat[stats.hp]   = 20;
stat[stats.atk]  =  5;
stat[stats.def]  =  5;
stat[stats.satk] =  3;
stat[stats.sdef] =  3;
stat[stats.spd]  =  3;

prev_hp = stat[stats.hp];

idle_r  = 200;
swing_r = 48;
flee_r  = 128;