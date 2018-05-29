///@description Checks status effects on entity
for(var i = 0; i < status_count; i++){
	var status = status_list[| i];
	var count  = status[2] - 1;
		
	if(count > 0){
		scr_status_effect_ongoing(status[0]);
		status_list[| i] = [status[0],status[1],count,status[3]];
		
	}else {
		scr_status_delete_from_list(i);
		i--;
	}
}