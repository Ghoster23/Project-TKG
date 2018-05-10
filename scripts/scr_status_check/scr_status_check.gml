///@description Checks status effects on entity
for(var i = 0; i < status_count; i++){
	var status = status_list[| i];
	var count  = status[2] - 1;
	
	if(count > 0){
		scr_status_effect(status[0],status[1]);
		status_list[| i] = [status[0],status[1],count];
	}else {
		ds_list_delete(status_list,i);
		status_count--;
	}
}