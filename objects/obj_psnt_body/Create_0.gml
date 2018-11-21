/// @description Inicialise the enemy
event_inherited();

//create weapon
weapon = scr_create_tw(irandom_range(0,5),32);
weapon.skin_color  = skin_color;
weapon.draw_script = scr_psnt_draw;

parts = [weapon, head, flr_intr];

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
flee_r  = 128;
swing_r = 48;

key[0] = false;
key[1] = false;