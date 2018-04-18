///@param dx
///@param dy
///@param scale
{
var dx    = argument0;
var dy    = argument1;
var scale = argument2;

var sx  = 64 * scale;
var sy  = 22 * scale;

var inc_x =  5 * scale;
var inc_y = 18 * scale;

var stats = [global.p_stats[stats.mhp],
             global.p_stats[stats.atk],
			 global.p_stats[stats.def],
			 global.p_stats[stats.satk],
			 global.p_stats[stats.sdef],
			 global.p_stats[stats.spd]];

///Draw Window
draw_sprite_ext(spr_gui_statsequips, 0, dx, dy, scale, scale, 0, c_white, 1);

///Check Equipment
for(var i = 0; i < 3; i++){
	var type = inventory[# 0, i + 9];
			
	var xx = dx +            12 * scale;
	var yy = dy + (21 + 36 * i) * scale;

	if(type != -1){
		var item   = inventory[# 1, i + 9];
		var amount = inventory[# 2, i + 9];
			
		scr_draw_item(type, item, amount, xx, yy, scale, scale, 1);
	}	
}

///Check Stats and draw pips
for(var i = 0; i < 6; i++){
	var st = stats[i];
	
	if(i != 5 && i != 0){
		var count = st div 2;
		
	}else if(i == 5){
		var count = st;
		
	}else {
		var count = st div 4;
		
	}
	
	for(var j = 0; j < count; j++){
		draw_sprite_ext(spr_gui_pip, 0,
			            dx + sx + inc_x * j, 
			            dy + sy + inc_y * i, 
						scale, scale, 0, c_white, 1);
	}
}
}