///@description Make button
///@param xx
///@param yy
///@param wd
///@param hg
///@param spr
///@param 9sb
///@param text
///@param hover_effect
///@param hover_param
{
var xx = argument0;
var yy = argument1;
var wd = argument2;
var hg = argument3;

var spr = argument4;
var sb9 = argument5;
var txt = argument6

var he = argument7;
var hp = argument8;

var bt = scr_GUI_h_button_check(xx,yy,wd,hg);

if(!sb9){
	switch(he){
		case 0:
			if(spr != -1){
				draw_sprite_ext(spr, 0, xx, yy, global.ratio, global.ratio, 0, c_white, 1);
			}
			
			draw_set_halign(fa_middle);
			draw_set_valign(fa_center);
			draw_text_ext_transformed(xx + wd/2, yy + hg/2, txt, 2, wd, global.ratio, global.ratio, 0);
		break;
		
		case 1:
			if(spr != -1){
				draw_sprite_ext(spr, 0, xx, yy, global.ratio, global.ratio, 0, c_white, 1);
			}
			
			draw_set_halign(fa_middle);
			draw_set_valign(fa_center);
			
			if(bt != 0){
				draw_set_alpha(hp);
			}
			
			draw_text_ext_transformed(xx + wd/2, yy + hg/2, txt, 2, wd, global.ratio, global.ratio, 0);
			
			draw_set_alpha(1);
		break;
	}
}

return bt;
}