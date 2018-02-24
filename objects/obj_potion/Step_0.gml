scr_get_input();

if distance_to_object(global.body) <= 8 and interact_key{
	image_index = scr_pickup_item(item_type.potion,type,image_index);
}