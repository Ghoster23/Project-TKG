///@param dx
///@param dy
///@param scale
{
var dx    = argument0;
var dy    = argument1;
var scale = argument2;

///Draw Window
draw_sprite_ext(spr_inventory, 0, dx, dy, scale, scale, 0, c_white, 1);

///Check all the the inventory
for(var i = 0; i < 9; i++){
	var type = inventory[# 0, i];
			
	var j = i mod 3;
	var k = i div 3;
			
	var xx = dx + (8  + 40 * j) * scale;
	var yy = dy + (18 + 40 * k) * scale;
			
	if(type != -1){
		var item   = inventory[# 1, i];
		var amount = inventory[# 2, i];
			
		scr_draw_item(type, item, amount, xx, yy, scale, scale, 1);
	}		
}
}