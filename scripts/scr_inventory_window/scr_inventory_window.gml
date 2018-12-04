///@param dx
///@param dy
///@param scale
{
var dx    = argument0;
var dy    = argument1;
var scale = argument2;

var sl_sd = 32 * scale;

///Draw Window
draw_sprite_ext(spr_gui_inventory, 0, dx, dy, scale, scale, 0, c_white, 1);

///Check all the the inventory
for(var i = 0; i < 9; i++){
	var type = inventory[# 0, i];
			
	var j = i mod 3;
	var k = i div 3;
			
	var xx = dx + ( 5 + 34 * j) * scale;
	var yy = dy + (15 + 36 * k) * scale;
			
	if(type != -1){
		var item   = inventory[# 1, i];
		var amount = inventory[# 2, i];
			
		scr_draw_item(type, item, amount, xx, yy, scale, scale, 1);
	}
	
	if(mouse_moved and
		xx < mx and mx < xx + sl_sd and yy < my and my < yy + sl_sd){
		selected = i;
	}
	
	if(i == selected){
		draw_circle(xx + sl_sd / 2, yy + sl_sd / 2, sl_sd/2, true);
	}
}

///Quick Slots
scr_quick_slots(dx, dy, scale);
}