///@param dx
///@param dy
///@param scale
{
var dx    = argument0;
var dy    = argument1;
var scale = argument2;

var sl_sd = 32 * scale;

///Check Quick Slots
for(var i = 0; i < 2; i++){
	var type = inventory[# 0, i + 12];
			
	var xx = dx + 113 * scale;
	var yy = dy + (30 + i * 47) * scale;
			
	if(type != -1){
		var item   = inventory[# 1, i + 12];
		var amount = inventory[# 2, i + 12];
			
		scr_draw_item(type, item, amount, xx, yy, scale, scale, 1);
	}
	
	if(mouse_moved and
		xx < mx and mx < xx + sl_sd and yy < my and my < yy + sl_sd){
		selected = i + 12;
	}
	
	if(i + 12 == selected){
		draw_circle(xx + sl_sd / 2, yy + sl_sd / 2, sl_sd/2, true);
	}
	
	#region Key-Bind tag
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_black);
	
	xx += 16 * scale;
	yy += 39 * scale;
	
	if(not i){
		var kid = global.key_binds[key_id.consume];
	}else {
		var kid = global.key_binds[key_id.utilize];
	}
	
	draw_text(xx,yy,scr_keyname(kid));
	
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	#endregion
}

}