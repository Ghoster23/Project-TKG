if (global.char_selection==12){
    global.char_selection=0
}
else {
    global.char_selection+=1
}

//change background
var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);

layer_background_index(back_id, global.char_selection);

//change banner
with obj_bannernew{
	image_index=global.char_selection;
}

//change char
with obj_charselected{
	image_index=global.char_selection
}

//change_info
with obj_info{
	image_index=global.char_selection
}

//change stats
scr_chsl_stats();

//change color
obj_info.color=scr_char_color();
with obj_chsl_name{
	image_blend=scr_char_color();
}
//change_name
obj_chsl_name.name=scr_chsl_names();
