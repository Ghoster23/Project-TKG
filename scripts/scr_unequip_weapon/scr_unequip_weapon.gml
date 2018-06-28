{
var wep = -1;
var amt = -1;

with global.body {
	wep = weapon.item;
	amt = weapon.amount;
	
	instance_destroy(weapon);
	
	weapon = scr_create_weapon(x,y,layer,global.weapon,id);
}

if(amt < 1){
	scr_inv_set_pos(-1,-1,-1,obj_inventory_controller.tool_slot);
}else {
	scr_inv_set_pos(item_type.weapons,wep,amt,obj_inventory_controller.tool_slot);
}

obj_inventory_controller.equip = false;
}