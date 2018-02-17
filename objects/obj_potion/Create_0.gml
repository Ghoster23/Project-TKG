randomize();
event_inherited();
image_speed = 0;
image_index = irandom_range(0,3);

dis = 16;

var val = irandom_range(0,60);

if(val < 30){
	//Elixir of Life - Regen
	type = potions.regeneration;
}else if(val < 40){
	//Midas Favourite - Coins are the only possible drop but are more common
	type = potions.midas;
}else if(val < 50){
	//Crystal Clear - Spot Mimics
	type = potions.seeall;
}else if(val < 53){
	//Nighshade Juice - OHKO for next hit
	type = potions.ohko;
}else if(val < 55){
	//Immunaization of the Void - Cures all status and gives immunity for its duration
	type = potions.cure;
}else if(val < 57){
	//Compass Concoction - Directs you to the special room
	type = potions.compass;
}else if(val <= 59){
	//Mango Brew - Invulnerabillity
	type = potions.immunity;
}/*else {
	//Ambrosia
	type = scr_char_color();
}