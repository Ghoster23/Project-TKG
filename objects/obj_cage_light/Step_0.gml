if c mod 3 == 0{
	i = irandom_range(1,3);
}

c += 1;

part_particles_create(global.ps_if,x+1,y+152,global.pt_smflame,i);
part_particles_create(global.ps_ps,x+1,y+155,global.pt_embers,1);
part_particles_create(global.ps_ps,x+5,y+152,global.pt_embers,1);
part_particles_create(global.ps_ps,x-4,y+152,global.pt_embers,1);

image_index = i - 1;