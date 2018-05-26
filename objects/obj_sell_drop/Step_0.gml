/// @description Insert description here
// You can write your code in this editor
scr_get_input();

if distance_to_object(global.body) < 24 {
	if interact_key and cost <= global.coins{
		global.coins -= cost;
		
		scr_spawn_item(type, item, amount, x, y, true, false);
	}
}