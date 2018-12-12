/// @description Inicialize the enemy
event_inherited();

type = entity_type.animal;

image_speed = 0.8;

//Stats
stat[stats.mhp]  = 20;
stat[stats.hp]   = 20;
stat[stats.atk]  =  5;
stat[stats.def]  =  5;
stat[stats.satk] =  5;
stat[stats.sdef] =  5;
stat[stats.spd]  =  2.5;
stat[stats.arm]  =  1;

prev_hp = stat[stats.hp];

///Enemy unique

ghost_chase_sprite		   = spr_ghost_armor_mad;
ghost_attack_sprite		   = spr_ghost_armor_attack;
ghost_hit_sprite           = spr_ghost_armor_hurt;

ghost_run_away_sprite      = spr_ghost_naked_scared;
ghost_reconstruct_sprite   = spr_ghost_naked_mad;
ghost_death_sprite         = spr_ghost_naked_hurt;


state = "chase";
breaking = false;


//times 
attack_break_time = 1.2*room_speed;
reconstruct_time  = 2.5*room_speed;
involn_time       = 0.8*room_speed;


dis = 0;
player_dir = 0;
if(instance_exists(global.body)){
	dis = distance_to_object(global.body);
	player_dir = point_direction(x,y,global.body.x,global.body.y);
}

x_prev = x;
y_prev = y;


scr_pausable_init(10);

spr_side = 0;

//fake_armor
armor = instance_create_layer(x,y,layer,obj_ghost_armor);
armor.owner = id;
armor.image_alpha = 0;

//spear
turn_speed = 5;
wep_type = 9; 
hand = noone;
wep_dir = 0;
spear = scr_create_tw(wep_type,32);
key[0] = false;
key[1] = false;