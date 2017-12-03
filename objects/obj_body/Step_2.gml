x = phy_position_x;
y = phy_position_y;

if(part_emitter_exists(global.ps_if,global.body_em)){
	part_emitter_region(global.ps_if,global.body_em,phy_position_x,phy_position_x,phy_position_y,phy_position_y,pt_shape_circle,ps_distr_gaussian);
}else {
	global.body_em = part_emitter_create(global.ps_if);
}