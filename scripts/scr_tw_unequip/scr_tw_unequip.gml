{
var wep = -1;
var amt = -1;

with global.body {
	wep = weapon.item;
	amt = weapon.amount;
	
	instance_destroy(weapon);
	
	weapon = noone;
}

with(obj_inventory_controller){
	scr_inv_set_pos(item_type.tl_n_wep,wep,amt,tool_slot + selected_tl);
}

return false;
}