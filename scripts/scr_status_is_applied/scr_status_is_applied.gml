///@description Returns the count of the status to check if entity has it or 0 if not
///@param status_effect
///@param entity
{
var check  = argument0;
var entity = argument1;

if(instance_exists(entity)){
	with(entity){
		for(var i = 0; i < status_count; i++){
			var status = status_list[| i];
			var type   = status[0];
			var count  = status[2];

			if(type == check){
				show_debug_message(count);
				return count;
			}
		}
	}
}

return 0;
}