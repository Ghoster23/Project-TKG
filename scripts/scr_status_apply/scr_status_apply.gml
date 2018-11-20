///@description Applies a status effect to an entity
///@param Status
///@param Count
///@param Entity
{
var status = argument0;
var count  = argument1;
var entity = argument2;

var applied = 0;

//Synergies
var wet     = -1;
var frozen  = -1;
var burning = -1;

with(entity){
	for(var i = 0; i < status_count; i++){
		var s = status_list[| i];
		if(s[0] == status){
			applied = i + 1;
			var c_count = s[2];
		}
		
		switch(s[0]){
			case statuses.wet:
				wet = i + 1;
			break;
			
			case statuses.frozen:
				frozen = i + 1;
			break;
			
			case statuses.burning:
				burning = i + 1;
			break;
		}
	}
	
	switch(status){
		//Non accumulating
		case statuses.wet:
			if(burning){
				scr_status_delete_from_list(burning-1);
				
			}else {
				if(not applied){
					scr_status_add_to_list(status,count);
				}else {
					scr_status_replace_in_list(applied-1,status,count,false);
				}
			}
		break;
		
		//Converting
		case statuses.frost:
			if(wet){
				s = status_list[| wet-1];
				scr_status_replace_in_list(wet-1,statuses.frozen,15,false);				
				scr_status_effect_activate(statuses.frozen,wet-1,s[3]);
				
			}else {
				if(not applied){
					scr_status_add_to_list(status,count);
				}else {
					scr_status_replace_in_list(applied-1,status,count,false);
				}
			}
		break;
		
		case statuses.burning:
			if(wet){
				scr_status_delete_from_list(wet-1);
				
			}else {
				if(not applied){
					scr_status_add_to_list(status,count);
				}else {
					scr_status_replace_in_list(applied-1,status,count,false);
				}
			}
		break;
		
		//Normal
		default:
			if(not applied){
				scr_status_add_to_list(status,count);
			}else {
				scr_status_replace_in_list(applied-1,status,count,true);
			}
		break;
	}
}
}