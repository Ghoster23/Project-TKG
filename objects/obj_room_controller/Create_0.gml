global.lock = false;
global.n_room = -1;
enemy_list = 0;
global.act_enemy_list = ds_list_create();

if not ds_exists(global.fallen_items,ds_type_list) {
	global.fallen_items = ds_list_create();
	
}else {
	while ds_list_size(global.fallen_items) != 0 {
		info = global.fallen_items[| 0];
		
		item = info[0];
		col = info[1] div global.roomwd;
		row = info[2] div global.roomhg;
		
		if global.ds_roomgrid[# 1, row * 8 + col] != "NULL" {
			instance_create_layer(info[1],info[2],"Instances",item);
		
		}
		
		ds_list_delete(global.fallen_items,0);
	}
}