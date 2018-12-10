{
var inds = [];
var type = 0;
var line = 0;

while(type != item_type.count - 1){
	type = global.ds_grid_items[# 0, line];
	inds[type] = line + 1;
	line += global.ds_grid_items[# 1, line] + 1;
}

return inds;
}