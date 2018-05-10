///@description Applies a status effect to an entity
///@param Status
///@param Count
///@param Entity
{
var status = argument0;
var count  = argument1;
var entity = argument2;

var applied = false;

for(var i = 0; i < entity.status_count; i++){
	var s = entity.status_list[| i];
	if(s[0] == status){
		applied = true;
		var c_count = s[2];
		break;
	}
}

if(applied){
	ds_list_replace(entity.status_list,i,[status,min(s[1],c_count + count),c_count + count]);
}else {
	ds_list_add(entity.status_list,[status,count,count]);
	entity.status_count++;
}
}