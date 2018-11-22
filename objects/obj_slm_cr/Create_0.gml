/// @description Inicialise the enemy
event_inherited();

type = entity_type.slime;

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

frozen = false;

//Pause
scr_pausable_init(4);

//Creep
fl_gen = instance_create_layer(x - 20, y - 2,
							   layer, obj_slm_cr_fluid_gen);
fl_gen.creator = self;

