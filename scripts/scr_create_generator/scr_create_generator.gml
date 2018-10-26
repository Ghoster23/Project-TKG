///@param count
///@param cs
///@param rs
///@param s_col
///@param s_row
///@param level
///@param 
{
var count = argument0;

var cs = argument1;
var rs = argument2;

var s_col = argument3;
var s_row = argument4;

var lvl = argument5;

var sps = argument6;

var inst = instance_create_layer(x,y,"Instances",obj_gen_controller);

inst.dungeon = id;

with inst {
	level = lvl;
	
	rm_count = min(count,cs*rs);
	
	specials = sps;
	
	gen_col = cs;
	gen_row = rs;
	
	start_col = s_col;
	start_row = s_row;
	
	for(var i = 0; i < cs * rs; i++){
		gen_rooms[i] = -1;
	}
}

return inst;
}