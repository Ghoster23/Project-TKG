part_emitter_region(global.ps_if,em,phy_position_x-24,phy_position_x+24,
					phy_position_y-24,phy_position_y+24,ps_shape_ellipse,ps_distr_linear);
part_emitter_stream(global.ps_if,em,global.pt_haze,6);

event_inherited();