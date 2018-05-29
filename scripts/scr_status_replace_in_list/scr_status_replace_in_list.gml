{
var pos    = argument0;
var status = argument1;
var count  = argument2;
var add    = argument3;

var s = ds_list_find_value(status_list,pos);

if(add){
	ds_list_replace(status_list,pos,
					[status,                //Status to replace with
					min(s[1],s[2] + count), //Starting val of count
					s[2] + count,           //Count
					s[3]]);                 //Visual effects obj
}else {
	ds_list_replace(status_list,pos,
					[status,         //Status to replace with
					count,           //Starting val of count
					count,           //Count
					s[3]]);          //Visual effects obj
}
}