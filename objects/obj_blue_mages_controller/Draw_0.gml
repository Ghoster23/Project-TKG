/// @description Insert description here
// You can write your code in this editor
draw_self();
/*
draw_text(x,y+10,"fires: ");
for(var i=0; i< ds_list_size(fires);i++){
	draw_text(x,y+20+i*10,string(ds_list_find_value(fires,i)));
}
draw_text(x-50,y+10,"mages: ");
for(var i=0; i< ds_list_size(mages);i++){
	draw_text(x-50,y+20+i*10,string(ds_list_find_value(mages,i)));
}*/
draw_text(x,y+10,"pairs: ");
for(var i=0; i< ds_list_size(pairs);i++){
	draw_text(x,y+20+i*10,string(ds_list_find_value(pairs,i)));
}