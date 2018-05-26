/// @description Fire
var arrow = scr_create_damage_dealer(mid_x,mid_y,obj_arrow,self,false,1,stats.def,2,5);
arrow.dir = dir;
arrow.spd = 10;
part_particles_create(global.ps,x+16,y,global.pt_smoke,5);
alarm[1] = 2 * room_speed;
ammo--;