///@param dx
///@param dy
///@param scale
{
var dx    = argument0;
var dy    = argument1;
var scale = argument2;

var sl_sd = 32 * scale;

var sx  = 14 * scale;
var sy  = 56 * scale;

///Draw Window
draw_sprite_ext(spr_gui_statsequips, 0, dx, dy, scale, scale, 0, c_white, 1);

///Check Equipment
for(var i = 0; i < 3; i++){
	var type = inventory[# 0, i + 9];
			
	var xx = dx + (5 + 34 * i) * scale;
	var yy = dy + 15 * scale;

	if(type != -1){
		var item   = inventory[# 1, i + 9];
		var amount = inventory[# 2, i + 9];
			
		scr_draw_item(type, item, amount, xx, yy, scale, scale, 1);
	}	
	
	if(mouse_moved and
		xx < mx and mx < xx + sl_sd and yy < my and my < yy + sl_sd){
		selected = i + 9;
	}
}

///Check Stats and draw pips
for(var i = 0; i < 6; i++){
	if(i == 0){
		var st = global.body.stat[i];
	}else {
		var st = global.body.stat[i+1]; // Skip HP
	}
	
	if(i == 5){
		var count = st;
	}else {
		var count = st div 2;
		
	}

	if(i == 0){
		draw_sprite_ext(spr_gui_statbar, count,
			            dx + sx, dy + sy, 
						scale, scale, 0, c_white, 1);
	}else if(i < 4){
		draw_sprite_ext(spr_gui_statbar, count,
			            dx + sx, dy + sy + 16 * (i - 1) * scale, 
						scale, scale, 0, c_white, 1);
	}else {
		draw_sprite_ext(spr_gui_statbar, count,
			            dx + sx + 52 * scale, dy + sy + 16 * (i - 4) * scale, 
						scale, scale, 0, c_white, 1);
	}
}
}