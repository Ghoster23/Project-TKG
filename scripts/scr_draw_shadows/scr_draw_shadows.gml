{
var dots = argument0;
var inst = argument1;

//draw_set_color(c_black);

//draw_triangle(dots[0,0],dots[0,1],dots[1,0],dots[1,1],dots[2,0],dots[2,1],false);
//draw_triangle(dots[1,0],dots[1,1],dots[2,0],dots[2,1],dots[3,0],dots[3,1],false);

//draw_sprite_pos(inst.sprite_index, inst.image_index, dots[0,0], dots[0,1], dots[1,0], dots[1,1], dots[3,0], dots[3,1], dots[2,0], dots[2,1],1);

draw_primitive_begin_texture(pr_trianglestrip, sprite_get_texture(inst.sprite_index, inst.image_index));
draw_vertex_texture(dots[2,0], dots[2,1], 0, 1);
draw_vertex_texture(dots[0,0], dots[0,1], 0, 0);
draw_vertex_texture(dots[3,0], dots[3,1], 1, 1);
draw_vertex_texture(dots[1,0], dots[1,1], 1, 0);
draw_primitive_end();

}
