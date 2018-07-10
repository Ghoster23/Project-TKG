/// @description Inicialise the enemy
event_inherited();

image_speed = 0.3;
image_alpha = 0.7;

sprs = [spr_slime_side,spr_slime_up,spr_slime_down];

//Stats
stat[stats.mhp]  = 20;
stat[stats.hp]   = 20;
stat[stats.atk]  =  2;
stat[stats.def]  =  4;
stat[stats.satk] =  8;
stat[stats.sdef] =  4;
stat[stats.spd]  =  2;

prev_hp = stat[stats.hp];

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