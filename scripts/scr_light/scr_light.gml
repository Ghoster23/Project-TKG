{
var count = ds_list_size(argument0);

for(var i = 0; i < count; i++){
	var inst = argument0[| i];
	
	var dots = scr_get_light_dots(inst);
	//debug drawing 
	draw_set_color(c_red);
	draw_set_alpha(1);
	for(var j = 0; j < 4; j++){
		draw_text(dots[j,0],dots[j,1],string(j));
		draw_circle(dots[j,0],dots[j,1],1,false);
	}
	
	draw_line(x,y,dots[0,0],dots[0,1]);
	draw_line(x,y,dots[1,0],dots[1,1]);
	draw_set_color(c_white);
	//------------------------
	
	
	scr_draw_shadows(dots,inst);
	
}
}