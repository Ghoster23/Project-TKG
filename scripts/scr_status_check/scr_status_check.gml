///@description Checks status effects on entity
for(var i = 0; i < status_count; i++){
	var status = status_list[| i];
	var count  = status[2] - 1;
		
	if(count > 0){
		scr_status_effect_activate(status[0]);
		status_list[| i] = [status[0],status[1],count];
		
	}else {
		scr_status_effect_deactivate(status[0]);
		ds_list_delete(status_list,i);
		status_count--;
		i--;
	}
}