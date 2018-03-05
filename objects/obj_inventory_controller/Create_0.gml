inventory = ds_grid_create(3,15);
ds_grid_set_region(inventory,0,0,2,14,-1);

scr_inv_types_init();

global.equiped = [-1,-1,-1];

holder     = 14;
tool_slot  = 13;
consumable = 12;

selected   = 0;

capacity = 9;

///Equipables
for(var i = 0; i < 16; i++){
	//Spawned
	global.equipable[i] = false;
		   
}

//Active
for(var i = 0; i < 3; i++){
	eq_active[i] = -1;
}

inv_wd  = sprite_get_width(spr_inventory);
inv_hg  = sprite_get_height(spr_inventory);

m = display_get_gui_width() / global.roomwd;
r = m * 2;
		
c  = display_get_gui_width()  / 2;
c_ = display_get_gui_height() / 2;
		
inv_x = 0;
inv_y = c_ / 2 - ((inv_hg + sprite_get_height(spr_quickslots)) / 2) * m;

prev_mx = 0;
prev_my = 0;
text = "";