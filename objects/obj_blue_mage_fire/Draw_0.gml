/*if(on==true){
	draw_set_color(c_lime);
	draw_text(x,y,"on"); 
	draw_set_color(c_white);
}
if(on==false){
	draw_set_color(c_red);
	draw_text(x,y,"off"); 
	draw_set_color(c_white);
}
draw_text(x+50,y,string(id)); 
/*
draw_text(x-10,y+10,"preference: ");

for(var i=0; i< ds_list_size(preference);i++){
	draw_text(x-50,y+20+i*10,string(ds_list_find_value(preference,i))+ ": ");
	draw_text(x-10,y+20+i*10,string(point_distance(ds_list_find_value(preference,i).x,ds_list_find_value(preference,i).y,x,y))); 

}