randomize();
event_inherited();
image_speed = 0;
image_index = irandom_range(0,3);

dis = 16;

type = irandom_range(0,60);

if(type < 30){
	//Elixir of Life - Regen
	color = c_red;
}else if(type < 40){
	//Midas Favourite - Coins are the only possible drop but are more common
	color = make_color_rgb(255,198,0);
}else if(type < 50){
	//Crystal Clear - Spot Mimics
	color = c_teal;
}else if(type < 53){
	//Nighshade Juice - OHKO for next hit
	color = c_fuchsia;
}else if(type < 55){
	//Immunaization of the Void - Cures all status and gives immunity for its duration
	color = c_purple;
}else if(type < 57){
	//Compass Concoction - Directs you to the special room
	color = c_navy;
}else if(type <= 59){
	//Mango Brew - Invulnerabillity
	color = c_orange;
}else {
	//Ambrosia
	color = scr_char_color();
}