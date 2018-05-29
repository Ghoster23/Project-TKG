/// @description Insert description here
// You can write your code in this editor
event_inherited();

offset = true;
offs = 100000000000000000;

text_scroll_speed=1;
text_break=false;
text_break_time=0.4;
letter=0;
yscale=1;
answered=false;
tag=0;
i=0;
typing=true;
max_i = ds_grid_height(global.dialg_grid);
type = ds_grid_get(global.dialg_grid, 0,i);
npc_name = ds_grid_get(global.dialg_grid, 1,i);
text=ds_grid_get(global.dialg_grid, 2,i);
boxWidth=sprite_get_width(spr_textbox);
boxHeight=sprite_get_height(spr_textbox);
stringHeight=string_height(text);
