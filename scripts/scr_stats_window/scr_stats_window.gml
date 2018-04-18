///@param dx
///@param dy
///@param scale
{
var dx    = argument0;
var dy    = argument1;
var scale = argument2;

var sx  = 22 * scale;
var sy  = 19 * scale;

var inc_x =  5 * scale;
var inc_y = 20 * scale;

var stats = [global.p_stats[stats.mhp],
             global.p_stats[stats.atk],
			 global.p_stats[stats.def],
			 global.p_stats[stats.satk],
			 global.p_stats[stats.sdef],
			 global.p_stats[stats.spd]];

///Draw Window
draw_sprite_ext(spr_stattab, 0, dx, dy, scale, scale, 0, c_white, 1);

///Check Equipment
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
		draw_sprite_ext(spr_pip, 0,
			            dx + sx + inc_x * j, 
			            dy + sy + inc_y * i, 
						scale, scale, 0, c_white, 1);
	}
}
}