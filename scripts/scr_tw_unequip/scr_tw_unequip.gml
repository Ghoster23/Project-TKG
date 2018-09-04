{
var wep = -1;
var amt = -1;

with global.body {
	wep = weapon.item;
	amt = weapon.amount;
	
	instance_destroy(weapon);
	
	weapon = scr_create_tw(global.weapon, 1);
}

if(amt < 1){
	scr_inv_set_pos(-1,-1,-1,obj_inventory_controller.tool_slot);
}else {
	scr_inv_set_pos(item_type.tl_n_wep,wep,amt,obj_inventory_controller.tool_slot);
}

return false;
}