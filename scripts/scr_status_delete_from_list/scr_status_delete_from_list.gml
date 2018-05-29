{
var pos = argument0;
var s   = status_list[| pos];

var status = s[0];

var vfx = s[3];

if(vfx != noone){
	instance_destroy(vfx);
}

scr_status_effect_deactivate(status);
ds_list_delete(status_list,pos);
status_count--;
}