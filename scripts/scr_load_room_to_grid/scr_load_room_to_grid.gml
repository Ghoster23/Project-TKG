///@description Loads a room to a ds_grid
///@param room_type
///@param room_alt
{
var tp  = argument0;
var alt = argument1;

///Get number of room variations
var fl_name = "roomtype"+string(tp)+".csv";
var fl = file_text_open_read(working_directory+fl_name);
var alt_count = file_text_read_real(fl);
file_text_close(fl);

///Determine room variant
var rm_alt;

if(alt == -1){
	rm_alt = irandom_range(0,alt_count);
}else {
	rm_alt = alt;
}
	
return load_data_to_grid( 19, 9, 2 + rm_alt * 10, 0, fl_name);
}