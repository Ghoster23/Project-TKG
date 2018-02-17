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
	case item_type.unique_consumable:
		return 1;			
	break;
					
	case item_type.potion:
		scr_player_potion_draw_ext(amount,item,xx,yy,xscale,yscale,alpha);					
	break;
					
	case item_type.chess_piece:
		draw_sprite_ext(spr_chess_pieces,item,xx,yy,xscale,yscale,0,c_white,1);		
	break;
					
	case item_type.constellation:
		draw_sprite_ext(spr_constellations,item,xx,yy,xscale,yscale,0,c_white,1);
	break;
					
	case item_type.tool:
		draw_sprite_ext(spr_tool,item,xx,yy,xscale,yscale,0,c_white,1);	
	break;
					
	case item_type.weapon:
		draw_sprite_ext(spr_weapon,item,xx,yy,xscale,yscale,0,c_white,1);
	break;
					
	case item_type.equipable:
		draw_sprite_ext(spr_equip,item,xx,yy,xscale,yscale,0,c_white,1);		
	break;
	
	case item_type.drop:
		draw_sprite_ext(spr_drops,item,xx,yy,xscale,yscale,0,c_white,1);
	break;
}
}