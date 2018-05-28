/// @description Initialize vars
scr_unique_inst();

//Widths and Height
map_wd = sprite_get_width( spr_ig_map);
map_hg = sprite_get_height(spr_ig_map);

rm_wd  = sprite_get_width( spr_mm_rm);
rm_hg  = sprite_get_height(spr_mm_rm);

rm_offx  = sprite_get_xoffset(spr_mm_rm);
rm_offy  = sprite_get_yoffset(spr_mm_rm);

///GUI
c  = display_get_gui_width()  / 2;
c_ = display_get_gui_height() / 2;

//Scale
m = display_get_gui_width() / global.roomwd;
r = m * 1.8;

//Current room
current_room = [global.ds_roomgrid[# 0, 36],global.ds_roomgrid[# 1, 36],global.ds_roomgrid[# 2, 36]];

mm_os_show = true;