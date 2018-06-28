{
switch(argument0){
	case active.frozone:
		if(variable_global_exists("act_enemy_list")){
			var len = ds_list_size(global.act_enemy_list);
			for(var i = 0; i < len; i++){
				var e = global.act_enemy_list[| i];
				
				if(instance_exists(e)){
					scr_status_apply(statuses.frozen,30,e);
				}
			}
		}
	break;
	default:
	break;
}
}