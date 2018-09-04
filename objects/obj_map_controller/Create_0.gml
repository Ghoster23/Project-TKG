/// @description Initialize vars
scr_unique_inst();

//Widths and Height
map_wd = sprite_get_width( spr_ig_map);
map_hg = sprite_get_height(spr_ig_map);

rm_wd  = sprite_get_width( spr_mm_rm);
rm_hg  = sprite_get_height(spr_mm_rm);

rm_offx  = sprite_get_xoffset(spr_mm_rm);
rm_offy  = sprite_get_yoffset(spr_mm_rm);

//Current room
current_room = [global.ds_roomgrid[# 0, 36],global.ds_roomgrid[# 1, 36],global.ds_roomgrid[# 2, 36]];