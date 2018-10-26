{
var ls = argument0;

var len = ds_list_size(ls);

show_debug_message("Ds_List - " + string(ls));

for(var i = 0; i < len; i++){
	show_debug_message("Entry: " + string(i) + " Value: " + string(ls[| i]));
}
}