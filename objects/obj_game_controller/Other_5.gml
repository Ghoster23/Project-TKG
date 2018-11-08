switch room {
	case rm_level:
		if(ds_exists(global.act_enemy_list,ds_type_list)){
			ds_list_destroy(global.act_enemy_list);
		}
	break;
	
	case rm_lvl_editor_test:
		if(ds_exists(global.act_enemy_list,ds_type_list)){
			ds_list_destroy(global.act_enemy_list);
		}
	break;
}