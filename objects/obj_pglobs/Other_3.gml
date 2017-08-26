/// @description Insert description here
// You can write your code in this editor
if ds_exists(global.fallen_items,ds_type_list) {
	ds_list_clear(global.fallen_items);
	ds_list_destroy(global.fallen_items);
	
}