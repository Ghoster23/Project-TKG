part_emitter_region(global.ps_if,em,x-12 * image_xscale,x+11*image_xscale,
					y-12*image_yscale,y+12*image_yscale,ps_shape_ellipse,ps_distr_linear);
part_emitter_stream(global.ps_if,em,global.pt_haze,3);

if(destroy){
	instance_destroy(conv);
	instance_destroy();
}

x = phy_position_x;
y = phy_position_y;