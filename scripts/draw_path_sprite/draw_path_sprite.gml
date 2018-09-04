/// @description draw_path_sprite(path, x, y, width, sprite, spriteIndex, spriteScaleX, spriteScaleY, color, alpha, segments, tiled)
/// @param path
/// @param  x
/// @param  y
/// @param  width
/// @param  sprite
/// @param  spriteIndex
/// @param  spriteScaleX
/// @param  spriteScaleY
/// @param  color
/// @param  alpha
/// @param  segments
/// @param  tiled
/*
    by ticedev

    path = path index
    x = offset x
    y = offset y
    width = thickness of the path
    sprite = sprite to use
    spriteIndex = image index of the given sprite
    spriteScaleX = x scale for the sprite
    spriteScaleY = y scale for the sprite
    color = color of the sprite
    alpha = alpha of the sprite
    segments = amount of segments between two points on the path (more = smoother)
    tiled = should the sprite be tiled over the path (0 = no tiling, 1 = tiling)
*/

var path = argument0;
var pathX = argument1;
var pathY = argument2;
var width = argument3;
var sprite = sprite_get_texture(argument4, argument5);
var repeatX = argument6;
var repeatY = argument7;
var color = argument8;
var alpha = argument9;
var segments = path_get_number(path) * max(1, argument10);
var tiled = argument11;
var closed = path_get_closed(path);
var spw = path_get_length(path) / sprite_get_width(argument4);

draw_primitive_begin_texture(pr_trianglestrip, sprite);

var lastDir = 0;
for (var i = 0; i <= segments; i++)
{
    var stepPrev = (i % segments) / segments;
    var step = i / segments;    
    var stepNext = (i + 1) / segments;
    
    var pxPrev = pathX + path_get_x(path, stepPrev);
    var pyPrev = pathY + path_get_y(path, stepPrev);
    
    var px = pathX + path_get_x(path, step);
    var py = pathY + path_get_y(path, step);
    
    var pxNext = pathX + path_get_x(path, stepNext);
    var pyNext = pathY + path_get_y(path, stepNext);
    
    var dir = point_direction(px, py, pxNext, pyNext);
    if (i == segments) dir = lastDir;
    lastDir = dir;
    
    var x1 = px + lengthdir_x(width / 2, dir - 90);
    var y1 = py + lengthdir_y(width / 2, dir - 90);
    var x2 = px + lengthdir_x(width / 2, dir + 90);
    var y2 = py + lengthdir_y(width / 2, dir + 90);
    
    var uv = step;
    if (tiled) uv *= spw;
    uv *= repeatX;

    draw_vertex_texture_colour(x1, y1, uv, repeatY, color, alpha);
    draw_vertex_texture_colour(x2, y2, uv, 0, color, alpha);
}

gpu_set_texrepeat(true);
draw_primitive_end();
gpu_set_texrepeat(false);
