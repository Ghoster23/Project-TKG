///@param grid
///@param file_start_line
///@param grid_start_line
///@param file_name
///@param column_type_array_optional
{
var grid = argument[0];

var wd = ds_grid_width(grid);
var hg = ds_grid_height(grid);

var sx = argument[1];
var sy = argument[2];

var fl_name = argument[3];

var types = -1;
if(argument_count == 5){
	types = argument[4];
}

var check = is_array(types) and array_length_1d(types) == wd;

#region Read
var file = file_text_open_read(fl_name);

#region Before
var text_bf = "";

repeat sx - 1 {
	text_bf += file_text_readln(file);
}
#endregion

repeat hg {
	file_text_readln(file);
}

#region After
var text_af = "";

while not file_text_eof(file) {
	text_af += file_text_readln(file);
}
#endregion 

file_text_close(file);
#endregion

#region Write
file = file_text_open_write(fl_name);

file_text_write_string(file,text_bf);

var txt = "";

for(var l = sy; l < hg; l++){
	for(var c = 0; c < wd; c++){
		var val = ds_grid_get(grid,c,l);
		
		if(check){
			var tp = types[c];
			if(is_array(tp)){
				#region array
				var in_len   = array_length_1d(tp);
				
				txt += "[";
				
				for(var i = 0; i < in_len; i++){
					txt += asset_get_name(val,tp[i]) + ",";
				}
				
				txt += "]";
				#endregion
			}else {
				txt += asset_get_name(val,tp);
			}
		}else {
			txt += string(val);
		}
		
		if(c != wd-1){ txt += ";"; }
	}
	txt += "\n";
}

file_text_write_string(file,txt);

file_text_write_string(file,text_af);
#endregion

show_debug_message(txt);
}