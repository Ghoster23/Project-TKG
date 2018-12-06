{
var ix = argument0;
var iy = argument1;

var row = argument2;
var col = argument3;

var dir   = argument4;
var type  = argument5;
var color = argument6;

var map   = argument7;

var m = global.gui_ratio;

if(map){ 
	var spr1 = spr_mm_rm;
	var spr2 = spr_mm_rm_icon;
}else {
	var spr1 = spr_HUD_mm_rm;
	var spr2 = spr_HUD_mm_rm_icon;
}

draw_sprite_ext(spr1, dir, 
				ix + col * (rm_wd - rm_offx * 2) * m, 
				iy + row * (rm_hg - rm_offy * 2) * m, 
				m, m, 0, c_white, 1);
		
if(type > 0){
	draw_sprite_ext(spr2, type, 
				ix + col * (rm_wd - rm_offx * 2) * m,
				iy + row * (rm_hg - rm_offy * 2) * m, 
				m, m, 0, color, 1);
}
}