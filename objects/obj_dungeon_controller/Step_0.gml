switch state {
	case 0: ///Gen
		switch gen_state {
			case 0:
				generator = scr_create_generator( rm_count, gen_col, gen_row, start_col, start_row, level, specials);
				gen_state++;
			break;
			
			case 1:
				if(!instance_exists(generator)){
					state++;
				}
			break;
		}
	break;
	
	case 1: ///Run
	
	break;
	
	case 2: ///Destroy
	
	break;
}