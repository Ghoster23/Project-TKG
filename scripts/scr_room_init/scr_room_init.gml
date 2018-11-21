///@argument room_inst_id
with argument0 {
	state = 5; // Initial state
			
	#region Init vars
	dungeon = other.generator.dungeon;
			
	walls = other._rm_walls;
			
	content = other._rm_insts;
	ctt_cnt = array_length_1d(content);
			
	decor = other._rm_decor;
	d_cnt = array_length_1d(decor);
			
	doors = other.doors;
			
	corridors = other.fillin;
			
	dun_col = other.gen_col;
	dun_row = other.gen_row;
			
	row = other.row;
	col = other.col;
			
	type = other.type;
	#endregion
			
	#region Register adjacents
	if(doors[0]){ adj[0] = instance_place(x+wd,y,object_index); }
	if(doors[1]){ adj[1] = instance_place(x,y-hg,object_index); }
	if(doors[2]){ adj[2] = instance_place(x-wd,y,object_index); }
	if(doors[3]){ adj[3] = instance_place(x,y+hg,object_index); }
	#endregion
			
	#region MP Grid
	var mg = dungeon.mp_grid;
	var pt = dungeon.mp_path;
			
	//Walls
	for(var i = 0; i < 4; i++){
		var side = walls[i];
				
		for(var j = 0; j < 2; j++){
			mp_grid_add_instances(mg, side[j], false);
		}
	}
			
	//Fillins
	for(var i = 0; i < 4; i++){
		if(object_is_ancestor(corridors[i].object_index, obj_wall_parent)){
			mp_grid_add_instances(mg, corridors[i], false);
		}
	}
			
	//Content
	for(var i = 0; i < ctt_cnt; i++){
		var inst = content[i];
				
		if(inst != noone) {
			if(instance_exists(inst)){
				if(object_is_ancestor(inst.object_index, obj_above_ground_parent) or
					object_is_ancestor(inst.object_index, obj_below_ground_parent) or
					object_is_ancestor(inst.object_index, obj_door_parent)){
					inst.mp_grid = mg;
					mp_grid_add_instances(mg, inst, false);
							
					if(inst.object_index == obj_pit){
						with inst {
							scr_autotile(id);
						}
					}
							
				}else if(is_descended(inst.object_index, obj_entity_parent)){
					inst.mp_grid = mg;
					inst.mp_path = pt;
				}
			}else {
				content[i] = noone;
			}
		}
	}
	#endregion
}