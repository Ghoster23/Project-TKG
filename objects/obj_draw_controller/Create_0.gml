if(scr_unique_inst()) {exit;}
ds_depthgrid = 0;
ds_depthgrid = ds_grid_create(2,1);

//Fluids
global.check = 0;
global.fluid_surface = surface_create(room_width, room_height);
global.fluid_tlm     = layer_tilemap_get_id(layer_get_id("Fluid"));

layer_set_visible(layer_get_id("Fluid"), false)

outline_f_init();

BH_layer  = 0;
INT_layer = 0;
PS_layer  = 0;
IF_layer  = 0;

part_IF_drawn = false;

camera = room_get_camera(room,0);
cam_wd = camera_get_view_width(camera);
cam_hg = camera_get_view_height(camera);

layers = layer_get_all();
l_count = 0;

for(var i = 0; i < array_length_1d(layers); i++){
	var name = layer_get_name(layers[i]);
	l_count ++;
	switch name {
		case "PS":
			PS_layer = i;
		break;
		
		case "IF":
			IF_layer = i;
		break;
		
		case "Instances":
			INT_layer = i;
		break;
		
		case "BH":
			BH_layer = i;
		break;
	}
}

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