if(not blocks){
part_emitter_region(global.ps_if,em,phy_position_x-24 * image_xscale,phy_position_x+24*image_xscale,
					phy_position_y-24*image_yscale,phy_position_y+24*image_yscale,ps_shape_ellipse,ps_distr_linear);
part_emitter_stream(global.ps_if,em,global.pt_haze,6);
}