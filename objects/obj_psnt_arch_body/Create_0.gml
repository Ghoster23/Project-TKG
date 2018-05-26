/// @description Inicialise the enemy
event_inherited();

draw_script = scr_psnt_draw;
spr_side = 3;

image_speed = 0.4;

stun = false;

shoot = false;
tell = 0;

//create weapon
weapon = scr_create_weapon(x,y,layer,obj_bow,id);
weapon.skin_color = skin_color;

//Stats
stat[stats.mhp]  = 20;
stat[stats.hp]   = 20;
stat[stats.atk]  =  5;
stat[stats.def]  =  1;
stat[stats.satk] =  2;
stat[stats.sdef] =  2;
stat[stats.spd]  =  3;

prev_hp = stat[stats.hp];

dir = 270;

offset_x = 0;
offset_y = 0;

///Pause
scr_pausable_init(6);