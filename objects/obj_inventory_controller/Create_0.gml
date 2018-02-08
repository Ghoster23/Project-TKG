inventory = ds_grid_create(3,14);
ds_grid_set_region(inventory,0,0,2,13,-1);

holder = [-1,-1,-1];

scr_inv_types_init();

global.equiped    = [-1,-1,-1];

                    /* Type - Specification - Amount*/
global.tool       = [    -1,             -1,      -1];
global.consumable = [    -1,             -1,      -1];

///Equipables
for(var i = 0; i < 16; i++){
	//Spawned
	global.equipable[i] = false;
		
	//Active
	eq_active[i] = false;   
}