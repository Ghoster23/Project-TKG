randomize();
image_speed = 0;
image_index = irandom_range(0,3);

type = irandom_range(0,60);

if(0 <= type < 30){
	color = c_red;
}else if(30 <= type < 40){
	color = c_yellow;
}else if(40 <= type < 50){
	color = c_teal;
}else if(50 <= type < 53){
	color = c_fuchsia;
}else if(53 <= type < 55){
	color = c_purple;
}else if(55 <= type < 57){
	color = c_navy;
}else if(57 <= type <= 59){
	color = c_orange;
}else {
	color = scr_char_color();
}