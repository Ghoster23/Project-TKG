shadow_rot = dir;

event_inherited();
						
part_particles_create(global.ps_if,phy_position_x,phy_position_y,global.pt_haze,irandom_range(-1,1));