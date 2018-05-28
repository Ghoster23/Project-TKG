{
var ix = argument0;
var iy = argument1;

var row = argument2;
var col = argument3;

var dir   = argument4;
var type  = argument5;
var color = argument6;

draw_sprite_ext(spr_mm_rm, dir, 
				ix + col * (rm_wd - rm_offx * 2) * m, 
				iy + row * (rm_hg - rm_offy * 2) * m, 
				m, m, 0, c_white, 1);
		
if(type > 0){
	draw_sprite_ext(spr_mm_rm_icon, type, 
				ix + col * (rm_wd - rm_offx * 2) * m,
				iy + row * (rm_hg - rm_offy * 2) * m, 
				m, m, 0, color, 1);
}
}