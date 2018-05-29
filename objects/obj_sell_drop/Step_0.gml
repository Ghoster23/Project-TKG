/// @description Insert description here
// You can write your code in this editor
scr_get_input();

scr_interactable_step();

if(interacted){
	if(global.coins >= cost){
		global.coins -= cost;
		
		scr_spawn_item(type, item, amount, x, y, false, false);
	
		instance_destroy();
	}
}