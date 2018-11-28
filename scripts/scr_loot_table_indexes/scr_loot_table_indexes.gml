{
var lst = ds_list_create();
var hg  = ds_grid_height(global.ds_grid_loot_table);

for(var i = 0; i < hg; i++){
	ds_list_add(lst,global.ds_grid_loot_table[# 0, i]);
}
}