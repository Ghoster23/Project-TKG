switch(room){
	case rm_level:
		level_state = 0;
		
		if(not instance_exists(obj_draw_controller)){
			instance_create_layer(x,y,layer,obj_draw_controller);
		}
	
		//Level Global Variables Init
		#region Map
		//Region
		global.region = 0;
		
		//Current room
		global.current_col = 0;
		global.current_row = 0;
		#endregion
	break;
	
	case rm_lvl_editor_test:
		if(not instance_exists(obj_draw_controller)){
			instance_create_layer(x,y,layer,obj_draw_controller);
		}
		
		//Level Global Variables Init
		#region Map
		//Region
		global.region = 0;
		
		//Current room
		global.current_col = 0;
		global.current_row = 0;
		#endregion
		
		global.act_enemy_list = ds_list_create();
	break;
}