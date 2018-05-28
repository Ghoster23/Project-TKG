{
var gr = argument0;

if(ds_exists(gr,ds_type_grid)){
	var wd = ds_grid_width(gr);
	var hg = ds_grid_height(gr);
	
	var text = "";
	
	for(var i = 0; i < hg; i++){
		text = "[";
		for(var j = 0; j < wd; j++){
			text += (string(gr[# j, i]) + " ");
		}
		show_debug_message(text + "]");
	}
}
}