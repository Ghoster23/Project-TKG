///@description Draws a potion
///@param amount - Amount of potion / Itensity
///@param type   - Type of potion
///@param xx     - x to draw at
///@param yy     - y to draw at
///@param xscale - horizontal scaling
///@param yscale - vertical scaling
///@param alpha  - alpha
{
var amount = argument0;
var type   = argument1;

var xx = argument2;
var yy = argument3;

var xscale = argument4;
var yscale = argument5;

var alpha = argument6;

draw_sprite_ext( spr_potion_fluid, amount, xx, yy, xscale, yscale, 0, 
                 scr_potion_get_color(type),alpha);
						
draw_sprite_ext( spr_potion_flask, amount, xx, yy, xscale, yscale, 0, c_white, alpha);
}