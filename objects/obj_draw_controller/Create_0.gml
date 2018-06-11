scr_unique_inst();
ds_depthgrid = 0;
ds_depthgrid = ds_grid_create(2,1);

//Fluids
global.check = 0;
global.fluid_surface = -1;
outline_f_init();

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