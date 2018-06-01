{
	outline_start(1,c_white,sprite_index,image_index,4);
	
	if(argument_count == 1 and argument[0] != null){
		script_execute(argument[0]);
	}else {
		draw_self();
	}

	outline_end();
}