switch(room){
	case rm_level:
		level_state = 0;
	
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
		#region Map
		//Region
		global.region = 0;
		
		//Current room
		global.current_col = 0;
		global.current_row = 0;
		#endregion
		
		global.act_enemy_list = ds_list_create();
	break;
	
	case rm_CH_boss:
		instance_create_layer(0,0,"Instances",obj_draw_controller);
		
	break;
}