///@description Draw shadow   
draw_sprite(spr_player_shadow,1,x,y);

/*if(state == 1){draw_set_color(c_red);}
draw_circle(x,y,flee_r,true);
draw_set_color(c_white);

if(state == 3){draw_set_color(c_red);}
draw_circle(x,y,aim_r,true);
draw_set_color(c_white);

if(state == 0){draw_set_color(c_red);}
draw_circle(x,y,idle_r,true);
draw_set_color(c_white);

draw_text(x,y+128,string(dis));

draw_line(x,y,global.body.x,global.body.y);