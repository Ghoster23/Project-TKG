/// @description 9_Slice_Box
/// @argument    sprite
/// @argument    x1
/// @argument    y1
/// @argument    x2
/// @argument    y2
/// @argument    xscale
/// @argument    yscale
{
var sprite = argument0;

var xsc    = argument5;
var ysc    = argument6;

var size   = sprite_get_width(sprite)/3;

var x1     = argument1;
var y1     = argument2;
var x2     = argument3;
var y2     = argument4;

var wd     = max(x2 - x1, size * 2);
var hg     = max(y2 - y1, size * 2);

/* Center */
draw_sprite_part_ext(sprite, 0, size, size, 1, 1, x1 + size * xsc, y1 + size * xsc,
					 wd - size * 2 * xsc, hg - size * 2 * ysc, c_white, 1);

/* Corners */
//UP LEFT
draw_sprite_part_ext(sprite, 0, 0, 0, size, size, x1, y1, xsc, ysc, c_white, 1);

//UP RIGHT
draw_sprite_part_ext(sprite, 0, size * 2, 0, size, size, x2 - size * xsc, y1, xsc, ysc, c_white, 1);

//DOWN LEFT
draw_sprite_part_ext(sprite, 0, 0, size * 2, size, size, x1, y2 - size * xsc, xsc, ysc, c_white, 1);

//DOWN RIGHT
draw_sprite_part_ext(sprite, 0, size * 2, size * 2,
					 size, size, x2 - size * xsc, y2 - size * ysc, xsc, ysc, c_white, 1);

/* Frame */
//UP
draw_sprite_part_ext(sprite, 0, size, 0, 1, size, x1 + size * xsc, y1, wd - (size * 2) * xsc, ysc, c_white, 1);

//Right
draw_sprite_part_ext(sprite, 0, size * 2, size,
					 size, 1, x2 - size * xsc, y1 + size * ysc, xsc, hg - (size * 2) * ysc, c_white, 1);

//DOWN
draw_sprite_part_ext(sprite, 0, size, size * 2,
					 1, size, x1 + size * xsc, y2 - size * ysc, wd - (size * 2) * ysc, ysc, c_white, 1);

//LEFT
draw_sprite_part_ext(sprite, 0, 0, size, size, 1, x1, y1 + size * ysc, xsc, hg - (size * 2) * ysc, c_white, 1);
}