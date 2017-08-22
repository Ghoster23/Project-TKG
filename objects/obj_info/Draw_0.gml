/// @description Insert description here
// You can write your code in this editor
draw_self();

if visbl==true{
	draw_set_font(font_chsl_tags);
	draw_set_valign(false);
	draw_set_halign(false);
	var box_height = string_height(text);
	var box_length = string_width(text);
	draw_set_color(color);
	draw_rectangle(mouse_x+10,mouse_y-6,mouse_x+box_length+14,mouse_y+box_height-4,false);
	draw_set_color(c_white);
	scr_draw_text_outlined(mouse_x+13,mouse_y-5,c_black,c_white,text);
}

