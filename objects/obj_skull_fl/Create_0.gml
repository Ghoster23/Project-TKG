part_particles_create(global.ps,x,y,global.pt_trail,1);
part_particles_create(global.ps,x,y,global.pt_sflame,50);
skull = instance_nearest(x,y,obj_skull);

dir = point_direction(skull.x,skull.y,x,y);
go = false;
once = false;

r = 0;
hspd = 0;
vspd = 0;

