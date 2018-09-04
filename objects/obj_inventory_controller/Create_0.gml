scr_unique_inst();

// Inventory grid
inventory = ds_grid_create(3,15);
ds_grid_set_region(inventory,0,0,2,14,-1);

// Enums
scr_inv_types_init();

// Slot IDs
holder     = 14;
tool_slot  = 13;
consumable = 12;

selected   = 0;

equip = false;

capacity = 9;

///Equipables
for(var i = 0; i < equips.count; i++){
	
	//Spawned
	global.equipable[i] = false;
		   
}

global.equiped = [-1,-1,-1];

//Active
for(var i = 0; i < 3; i++){
	eq_active[i] = -1;
}

global.erase = false;

//Measurements
///Inventory window
inv_wd   = sprite_get_width( spr_gui_inventory);
inv_hg   = sprite_get_height(spr_gui_inventory);

///Quick Access window
qa_wd    = sprite_get_width( spr_gui_quickslots);
qa_hg    = sprite_get_height(spr_gui_quickslots);

///Stats & Equipment window
equip_wd = sprite_get_width( spr_equipslots);
equip_hg = sprite_get_height(spr_equipslots);

///GUI
hc = global.gui_WD  / 2;
vc = global.gui_HG / 2;

//Scale
m = global.gui_WD / global.roomwd;
r = m * 1.8;
		
//Placements
///Inventory
inv_x   = 0;
inv_y   = vc - ((inv_hg + qa_hg) / 2) * r;

///Quick Access
qa_x    = inv_x + (inv_wd / 2 - qa_wd / 2) * r;
qa_y    = inv_y + inv_hg * r;

///Stats & Equipment
equip_x = hc * 2 - inv_x - inv_wd * r;
equip_y = inv_y;

prev_mx = 0;
prev_my = 0;
text = "";
click = false;