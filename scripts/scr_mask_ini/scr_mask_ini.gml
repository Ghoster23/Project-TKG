///@Description Initialises the mask to allow masked drawing
display_w = display_get_gui_width();
display_h = display_get_gui_height();

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle(0, 0, display_w, display_h, false); //area where there shall not be light
draw_set_alpha(1);