///@description Applies a status effect to an entity
///@param Status
///@param Count
///@param Entity
{
var status = argument0;
var count  = argument1;
var entity = argument2;

var applied = false;

//Synergies
var wet    = -1;
var frozen = -1;

with(entity){
	for(var i = 0; i < status_count; i++){
		var s = status_list[| i];
		if(s[0] == status){
			applied = true;
			var c_count = s[2];
		}
		
		switch(s[0]){
			case statuses.wet:
				wet = i;
			break;
			
			case statuses.frozen:
				frozen = i;
			break;
		}
	}

	
	switch(status){			
		case statuses.wet:
			ds_list_add(status_list,[status,count,count]);
			scr_status_effect_activate(status);
			status_count++;
		break;
			
		case statuses.frost:
			if(wet){
				ds_list_replace(status_list,i,[statuses.frozen,5,5]);
				scr_status_effect_activate(statuses.frozen);
				
			}else {
				if(not applied){
					ds_list_add(status_list,[status,count,count]);
					scr_status_effect_activate(status);
					status_count++;
				}else {
					ds_list_replace(status_list,i,[status,min(s[1],c_count + count),c_count + count]);
				}
			}
		break;
		
		default:
			if(not applied){
				ds_list_add(status_list,[status,count,count]);
				scr_status_effect_activate(status);
				status_count++;
			}else {
				ds_list_replace(status_list,i,[status,min(s[1],c_count + count),c_count + count]);
			}
		break;
	}
}
}