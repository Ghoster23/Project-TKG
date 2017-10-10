scr_get_input();

if interact_key and distance_to_object(global.body) < 30{
	global.level++;
	game_restart();
}