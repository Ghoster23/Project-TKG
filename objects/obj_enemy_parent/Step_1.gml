//Statuses check
for(var i = 0; i < status_count; i++){
	var status = status_list[| i];
	
	if(status[1] > 0){
		status[1] = scr_status_check(status[0],status[1]);
	}
	
	
}