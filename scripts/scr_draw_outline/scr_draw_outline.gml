{
	outline_start(1,c_white,sprite_index,image_index,4);
	
	if(argument_count == 0){
		draw_self();
	}else if(argument[0] != null){
		script_execute(argument[0]);
	}

	outline_end();
}