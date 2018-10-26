scr_unique_inst();

//Widths and Height
mm_wd = sprite_get_width( spr_HUD_minimap);
mm_hg = sprite_get_height(spr_HUD_minimap);

rm_wd  = sprite_get_width(spr_HUD_mm_rm) - 2;
rm_hg  = sprite_get_width(spr_HUD_mm_rm) - 2;

rm_offx = 0;
rm_offy = 0;

m = 0;
	
gui_WD = 0;
gui_HG = 0;

sqr_layout = [-1];

for(var i = 0; i < 9; i++){
	sqr_layout[i] = -1;
}