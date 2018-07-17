{
var dots = argument0;
var inst = argument1;

//draw_sprite_pos(inst.sprite_index, inst.image_index, dots[2,0], dots[2,1], dots[3,0], dots[3,1], dots[0,0], dots[0,1], dots[1,0], dots[1,1],1);

draw_primitive_begin_texture(pr_trianglestrip, sprite_get_texture(inst.sprite_index, inst.image_index));
draw_vertex_texture_color(dots[0,0], dots[0,1], 0, 1, c_black, 1);
draw_vertex_texture_color(dots[3,0], dots[3,1], 0, 0, c_black, 1);
draw_vertex_texture_color(dots[1,0], dots[1,1], 1, 1, c_black, 1);
draw_vertex_texture_color(dots[2,0], dots[2,1], 1, 0, c_black, 1);
draw_primitive_end();

}
