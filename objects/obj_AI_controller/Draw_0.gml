/// @description Insert description here
/*draw_set_alpha(0.5);
draw_set_color(c_red);

mp_grid_draw(global.ai_grid);

for(i = 0; i < room_width; i += 32){
	draw_line(i,0,i,room_height);
}
for(i = 0; i < room_height; i += 32){
	draw_line(i,0,i,room_width);
}

draw_set_alpha(1);

//draw_path(global.ai_path,x,y,true);