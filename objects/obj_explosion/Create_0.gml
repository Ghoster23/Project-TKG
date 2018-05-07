event_inherited();
image_xscale=1.2;
image_yscale=1.2;
image_speed=2;

part_particles_create(global.ps,x,y,global.pt_smoke,16);
instance_create_layer(x,y,"BH",obj_bomb_damage);
blast=true;
alarm[0]=8;
once = false;

//Damage dealer vars
damage    = 50;
kb_amount = 30;

stat[stats.atk] = 1;
divi = stats.def;