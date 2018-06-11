/// @description Insert description here
// You can write your code in this editor
scr_interactable_step();

if(interacted){
	if(global.coins >= cost){
		global.coins -= cost;
		
		scr_spawn_item(type, item, amount, x, y, true, false);
	
		instance_destroy();
	}else {
		interacted = false;
	}
}