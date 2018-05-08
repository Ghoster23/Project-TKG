///@description Applies a status effect to an entity
///@param Status
///@param Count
///@param Entity
{
var status = argument0;
var count  = argument1;
var entity = argument2;

ds_list_add(entity.status_list,[status,count]);
}