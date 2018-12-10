part_type_direction(global.pt_vbits,point_direction(global.body.x,global.body.y,x,y),point_direction(global.body.x,global.body.y,x,y),0,0);
part_emitter_burst(global.ps,em,global.pt_smoke,10);
part_emitter_destroy(global.ps, em );

repeat(5){
	instance_create_layer(x,y,layer,obj_vasebits);
}

mp_grid_clear_rectangle(mp_grid, x, y, x + 4, y + 4);

instance_create_layer(x,y,layer,obj_fluid_tile);
flash= false;
instance_destroy();