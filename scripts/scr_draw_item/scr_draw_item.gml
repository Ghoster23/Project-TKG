///@description Draws an item
///@param type   - Type of item
///@param item   - Item
///@param amount - Amount of the item
///@param xx     - x to draw at
///@param yy     - y to draw at
///@param xscale - horizontal scaling
///@param yscale - vertical scaling
///@param alpha  - alpha
{
var type   = argument0;
var item   = argument1;
var amount = argument2;

var xx = argument3;
var yy = argument4;

var xscale = argument5;
var yscale = argument6;

var alpha = argument7;

switch(type){
	default:
		draw_sprite_ext(global.ds_grid_items[# 1, global.item_type_ind[type] + 1],
						global.ds_grid_items[# 2, global.item_type_ind[type] + 1],
						xx, yy, xscale, yscale, 0, c_white, 1);
	break;
	
	case item_type.heart:
		switch(item){
			case heart.heart:
				draw_sprite_ext(spr_i_heart,amount,xx,yy,xscale,yscale,0,c_white,1);
			break;
			case heart.armor:
				draw_sprite_ext(spr_i_armor, frame,xx,yy,xscale,yscale,0,c_white,1);
			break;
			case heart.container:
				draw_sprite_ext(spr_i_heart,amount,xx,yy,xscale,yscale,0,c_white,1);
			break;
		}
	break;
	
	case item_type.currency:
		draw_sprite_ext(spr_i_coin,frame,xx,yy,xscale,yscale,0,c_white,1);
	break;
}

if(type < item_type.heart){
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_set_font(font_chsl_tags);
	
	if(id.object_index == obj_item){
		scr_draw_text_outlined(xx+32,yy+8,c_black,c_white,string(amount));
		//scr_draw_text_outlined(xx+32,yy+24,c_black,c_white,string(item));
		//scr_draw_text_outlined(xx+32,yy+40,c_black,c_white,string(type));
	}
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}
}