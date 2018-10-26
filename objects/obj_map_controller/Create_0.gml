/// @description Initialize vars
scr_unique_inst();

#region Draw variables
//Widths and Height
map_wd = sprite_get_width( spr_ig_map);
map_hg = sprite_get_height(spr_ig_map);

rm_wd  = sprite_get_width( spr_mm_rm);
rm_hg  = sprite_get_height(spr_mm_rm);

rm_offx  = sprite_get_xoffset(spr_mm_rm);
rm_offy  = sprite_get_yoffset(spr_mm_rm);
#endregion

state = 0;

//Current and Prev Regions
global.region = 0;
p_region      = 0;

//Dungeons
global.dungeon = noone;

#region Dungeon list
region_count = instance_number(obj_dungeon_controller) + 1;

var dn_list = ds_list_create();
	
with(obj_dungeon_controller){
	ds_list_add(dn_list, id);
}

global.dungeons = array_create(region_count - 1, 0);
borders         = array_create(region_count - 1, 0);

for(var i = 0; i < region_count - 1; i++){
	var dg  = dn_list[| i];
	var lvl = dg.level;
	var zon = dg.zone;
	
	global.dungeons[lvl+zon] = dg;
	
	borders[lvl+zon] = [dg.x,dg.y,dg.x+dg.gen_col*global.roomwd,dg.y+dg.gen_row*global.roomhg];
}

ds_list_destroy(dn_list);
#endregion

#region Dungeon data
dungeon_layout = -1;

dg_col = 0;
dg_row = 0;

dg_space = 0;

global.room_change = false;
c_rid = 0;
#endregion