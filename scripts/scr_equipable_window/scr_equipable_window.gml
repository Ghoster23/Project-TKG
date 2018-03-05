///@param dx
///@param dy
///@param scale
{
var dx    = argument0;
var dy    = argument1;
var scale = argument2;

///Draw Window
draw_sprite_ext(spr_equipslots, 0, dx, dy, scale, scale, 0, c_white, 1);

///Check Equipment
for(var i = 0; i < 3; i++){
	var type = inventory[# 0, i + 9];
			
	var xx = dx +             8 * scale;
	var yy = dy + (18 + 40 * i) * scale;
			
	if(type != -1){
		var item   = inventory[# 1, i + 9];
		var amount = inventory[# 2, i + 9];
			
		scr_draw_item(type, item, amount, xx, yy, scale, scale, 1);
	}	
}
}