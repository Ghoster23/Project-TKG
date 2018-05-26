event_inherited();

if(state == 2 and !instance_exists(obj_icy_wind)){
	wind = instance_create_layer(x,y,"IF",obj_icy_wind);
}