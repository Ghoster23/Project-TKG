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
		type = item_type.potion;
		item = irandom(potions.count);
		cost = 2;
		
	break;
	case 1: //Chess Piece
		type = item_type.chess_piece;
		item = irandom(chessP.count);
		cost = 2 + item * 2;
		
	break;
	case 2: //Food
		type = item_type.food;
		item = irandom(food.count);
		cost = 4 + irandom(item);
		
	break;
	case 3: //Tool
		type = item_type.tool;
		item = irandom(tool.count);
		cost = 10 + item div 2;
		
	break;
	case 4: //Weapon
		type = item_type.weapons;
		item = irandom(weapons.count);
		cost = 10 + (item div 5) * 2;
		
	break;
	case 5: //Heart
		type = item_type.heart;
		item = 0;
		cost = 1;
		
	break;
}

amount = irandom(scr_inv_item_stack_size(type) - 1);

if(type == item_type.heart){
	cost += amount;
}