// Inventory grid
inventory = ds_grid_create(3,16);

if(scr_unique_inst()) {exit;}

ds_grid_set_region(inventory,0,0,2,16,-1);

// Enums
scr_item_types_init();

// Slot IDs
holder     = 15;
tool_slot  = 13;
consumable = 12;
selected_tl = 0;

selected = 0;

equip = false;

capacity = 9;

///Equipables
for(var i = 0; i < equips.count; i++){
///FIXME	
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

///Stats & Equipment window
equip_wd = sprite_get_width( spr_gui_statsequips);
equip_hg = sprite_get_height(spr_gui_statsequips);

///GUI
hc = global.gui_WD / 2;
vc = global.gui_HG / 2;

//Scale
m = global.gui_WD / camera_get_view_width(view_camera[0]);
		
//Placements
///Inventory
inv_x =  8 * m;
inv_y = 52 * m;

//Quick Slots
qa_x = inv_x + 113 * m;
qa_y = inv_y + 30  * m;

///Stats & Equipment
equip_x = inv_x;
equip_y = inv_y + 128 * m;

prev_mx = 0;
prev_my = 0;
mouse_moved = false;

text = "";
click = false;