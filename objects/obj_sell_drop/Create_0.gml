randomize();
image_speed = 0;

off_x = 0;
off_y = 0;

chance = irandom(99) + 1;

if(chance <= 40){
	sprite_index = spr_heart;
	x += 8;
	y += 8;
	
	image_index = irandom_range(1,4);
              
}else {
	sprite_index = spr_potion_flask;
	
	image_index = irandom_range(0,3);

	type = irandom_range(0,60);

	if(type < 30){
		//Elixir of Life - Regen
		color = c_red;
		cost = 2;
		
	}else if(type < 40){
		//Midas Favourite - Coins are the only possible drop but are more common
		color = c_yellow;
		cost = 4;
		
	}else if(type < 50){
		//Crystal Clear - Spot Mimics
		color = c_teal;
		cost = 3;
		
	}else if(type < 53){
		//Nighshade Juice - OHKO for next hit
		color = c_fuchsia;
		cost = 20;
		image_index = 1;
		
	}else if(type < 55){
		//Immunaization of the Void - Cures all status and gives immunity for its duration
		color = c_purple;
		cost = 8;
		
	}else if(type < 57){
		//Compass Concoction - Directs you to the special room
		color = c_navy;
		cost = 5;
		
	}else if(type <= 59){
		//Mango Brew - Invulnerabillity
		color = c_orange;
		cost = 10;
		
	}else {
		//Ambrosia
		color = scr_char_color();
		cost = 10000;
	}
	
	x += 16;
	y += 16;
	off_x = -8;
	off_y = -8;
	
}

switch sprite_index {
	case spr_heart:
		cost = 5 * image_index;
		
	break;
	
	case spr_potion_flask:
		cost = cost * (image_index + 1);
				
	break;
}