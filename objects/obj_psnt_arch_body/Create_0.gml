/// @description Inicialise the enemy
event_inherited();

//create weapon
weapon = scr_create_tw(tl_n_wep.bow,32);
weapon.skin_color = skin_color;
weapon.draw_script = scr_psnt_draw;

//Stats
stat[stats.mhp]  = 20;
stat[stats.hp]   = 20;
stat[stats.atk]  =  5;
stat[stats.def]  =  1;
stat[stats.satk] =  2;
stat[stats.sdef] =  2;
stat[stats.spd]  =  3;

prev_hp = stat[stats.hp];

idle_r = 300;
aim_r  = 200;
flee_r = 100;