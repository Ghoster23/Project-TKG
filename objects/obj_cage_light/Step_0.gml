if c mod 3 == 0{
	i = irandom_range(1,3);
}

c += 1;

part_particles_create(global.ps_if,x+1,y+247,global.pt_smflame,i);

image_index = i - 1;