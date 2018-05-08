///@description Checks status effects on entity
for(var i = 0; i < status_count; i++){
	var status = status_list[| i];
	
	if(status[1] > 0){
		status[1] = scr_status_effect(status[0],status[1]);
		status_list[| i] = [status[0],status[1]];
	}else {
		ds_list_delete(status_list,i);
	}
}