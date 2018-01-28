{
var dots = argument0;

draw_set_color(c_black);
draw_set_alpha(0.5);
draw_triangle(dots[0,0],dots[0,1],dots[1,0],dots[1,1],dots[2,0],dots[2,1],false);
draw_triangle(dots[1,0],dots[1,1],dots[2,0],dots[2,1],dots[3,0],dots[3,1],false);
draw_set_color(c_white);
draw_set_alpha(1);
}