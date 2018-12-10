///Parameters
state = 0;

gen_state = 0;

rooms = -1;

sp_rooms = [ -1, -1, -1, -1];

#region Gen parameters
generator = noone;

level = 0;
zone  = 0;

rm_count = 16;

specials = [1];

gen_col = 8;
gen_row = 8;

start_col = 4;
start_row = 4;
#endregion

#region MP Grid
mp_grid = 0;

mp_path = path_add();
#endregion


if(not instance_exists(obj_inventory_controller)){
	instance_create_layer(x,y,layer,obj_inventory_controller);
}