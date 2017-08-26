if mouse_check_button_pressed(mb_left){

	local_selected=global.selected_block 
	switch(local_selected[0]){
	case(0):
	    sprite_index=spr_space
	    break;
	case(1):
	    sprite_index=spr_terrain
	    image_index=local_selected[1]
	    break;
	case(2):
	    sprite_index=spr_enemy
	    image_index=local_selected[1]
	    break;
	case(3):
	    sprite_index=spr_cosmetic
	    image_index=local_selected[1]
	    break;
	case(4):
	    sprite_index=spr_traps
	    image_index=local_selected[1]
	    break;
	}

}