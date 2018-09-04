randomize();
event_inherited();
image_speed = 0;
draw_script = scr_draw_item_floor;
offset = true;
offs = 100;
cost = 0;

off_x = 0;
off_y = 0;

chance = irandom(5);

switch(chance){
	case 0: //Potion
	case 1:
		type = item_type.potion;
		item = irandom(potions.count);
		cost = 2;
		
	break;
	/*case 1: //Chess Piece
		type = item_type.chess_piece;
		item = irandom(chessP.count);
		cost = 2 + item * 2;
		
	break;
	case 2: //Food
		type = item_type.food;
		item = irandom(food.count);
		cost = 4 + irandom(item);
		
	break;*/
	case 3: //Tool and weapon
	case 4:
		type = item_type.tl_n_wep;
		item = irandom(tl_n_wep.count);
		cost = 10 + (item div 5) * 2;
		
	break;
	case 2:
	case 5: //Heart
		type = item_type.heart;
		item = 0;
		cost = 1;
		
	break;
}

amount = irandom_range(1,scr_inv_item_stack_size(type));

if(type == item_type.heart){
	cost += amount;
}

scr_interactable_init(32,16,48,16,4);