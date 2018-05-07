/// @description Inicialise the enemy
event_inherited();

image_speed = 0.2;
image_alpha = 0.7;

//Stats
e_stats[stats.mhp]  = 20;
e_stats[stats.hp]   = 20;
e_stats[stats.atk]  =  2;
e_stats[stats.def]  =  4;
e_stats[stats.satk] =  8;
e_stats[stats.sdef] =  4;
e_stats[stats.spd]  =  2;

prev_e_hp = e_stats[stats.hp];

damage = 2;
mult = stats.satk;
divi = stats.sdef;

//Pause
for(i = 0; i < 6; i++){
	alarms[i] = -1;
}

fl_gen = instance_create_layer(x - 20, y - 2,
							   layer, obj_slm_cr_fluid_gen);
fl_gen.creator = self;