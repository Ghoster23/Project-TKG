event_inherited();
image_xscale=1;
image_yscale=1;
image_speed=6;

part_particles_create(global.ps,x,y,global.pt_smoke,16);
instance_create_layer(x,y,"BH",obj_bomb_damage);
scr_create_damage_dealer(x,y,obj_explosion_damage,self,false,1,stats.def,50,30);

scr_sound(snd_bomb_explosion);