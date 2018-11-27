///@description Activate entity
if not go{
	go      = true;
	visible = true;
	
	if(mp_grid == -1 or mp_path == -1){
		var rm = instance_place(x - x mod global.roomwd,
								y - y mod global.roomhg,
								obj_dungeon_room);
				
		if(rm != noone){
			mp_grid = rm.dungeon.mp_grid;
			mp_path = rm.dungeon.mp_path;
		}
		//FIXME - Out of dungeon the object won't be that one
	}
}else {
	damaged = false;
}