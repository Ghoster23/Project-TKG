scr_unique_inst();
ds_depthgrid = 0;
ds_depthgrid = ds_grid_create(2,1);

//Fluids
global.check = 0;
global.fluid_surface = surface_create(room_width, room_height);
global.fluid_tlm     = layer_tilemap_get_id(layer_get_id("Fluid"));

layer_set_visible(layer_get_id("Fluid"), false)

outline_init();

BH_layer  = 0;
INT_layer = 0;
PS_layer  = 0;
IF_layer  = 0;

part_IF_drawn = false;

switch room {
	case rm_level:
		fl_s_wd = global.roomwd;
		fl_s_hg = global.roomhg;
	break;
	default:
		fl_s_wd = room_width;
		fl_s_hg = room_height;
	break;
}