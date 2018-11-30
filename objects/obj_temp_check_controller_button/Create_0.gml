/// @description Insert description here
// You can write your code in this editor

m = global.gui_WD / global.roomwd;
hc = global.gui_WD / 2;
vc = global.gui_HG / 2;
c1 = (hc*10/18);

ww = sprite_get_bbox_left(sprite_index) - sprite_get_bbox_right(sprite_index);
hh = sprite_get_bbox_bottom(sprite_index) - sprite_get_bbox_top(sprite_index);
off = 96;
sep = 28;

//stuff
me_width  = ww*m;
me_height = hh*m; 
me_x1 = c1;
me_y1 = (off+sep*2) * m;
me_x2 = me_x1 + me_width;
me_y2 = me_y1 + me_height;