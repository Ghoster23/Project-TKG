//spawn player
switch global.lvl_room_type{
	//down
	case 0:
	case 4:
	case 5:
	case 9:
	case 10:
	case 12:
	case 13:
	case 14:
		instance_create_layer(10*32+16,12*32,"Instances",obj_body);
		break;
	//left
	case 1:
	case 6:
	case 8: 
	case 11:
		instance_create_layer(1*32,7*32+16,"Instances",obj_body);
		break;
	//up
	case 2:
	case 7:
		instance_create_layer(10*32+16,3*32,"Instances",obj_body);
		break;
	//right
	case 3: 
		instance_create_layer(20*32,7*32+16,"Instances",obj_body);
		break;

}


for(i=0;i<171;i++){
	if ds_grid_get(global.room_grid, 0, i)!=-1 {
		var x_pos=ds_grid_get(global.room_grid, 0, i);
		var y_pos=ds_grid_get(global.room_grid, 1, i);
		var obj_layer=ds_grid_get(global.room_grid, 2, i);
		var obj_id=ds_grid_get(global.room_grid, 3, i);
	
		instance_create_layer(x_pos,y_pos,obj_layer,obj_id);
	}

}
//destroy temp grid
ds_grid_destroy(global.temp_lvl_grid);

global.current_column=0;
global.current_row=0;
global.n_room=true;
instance_create_layer(0,0,"BH",obj_floor_fluid_controller);
