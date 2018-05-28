///@param dx
///@param dy
///@param scale
{
var dx    = argument0;
var dy    = argument1;
var scale = argument2;

///Draw Slots
draw_sprite_ext(spr_gui_quickslots, 0, dx, dy, scale, scale, 0, c_white, 1);

///Check Quick Slots
for(var i = 0; i < 2; i++){
	var type = inventory[# 0, i + 12];
			
	var xx = dx + (13 + 36 * i) * scale;
	var yy = dy +            23 * scale;
			
	if(type != -1){
		var item   = inventory[# 1, i + 12];
		var amount = inventory[# 2, i + 12];
			
		scr_draw_item(type, item, amount, xx, yy, scale, scale, 1);
	}	
}

}