obj_start = argument0;
obj_finish = argument1;

var sx = obj_start.x;
var sy = obj_start.y;
var fx = obj_finish.x;
var fy = obj_finish.y;

if not mp_grid_path(global.ai_grid,global.ai_path,sx,sy,fx,fy,true){
	return false;
}else {
	path_set_kind(global.ai_path,1);
	path_set_precision(global.ai_path,8);
	return true;
}