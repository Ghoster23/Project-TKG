inventory = ds_grid_create(3,13);
ds_grid_set_region(inventory,0,0,2,12,-1);

scr_inv_types_init();

global.equiped = [-1,-1,-1];

holder     = 12;
tool_slot  = 0;
consumable = 1;

selected   = 0;

capacity = 9;

///Equipables
for(var i = 0; i < 16; i++){
	//Spawned
	global.equipable[i] = false;
		
	//Active
	eq_active[i] = false;   
}

inv_wd  = sprite_get_width(spr_inventory);
inv_hg  = sprite_get_height(spr_inventory);