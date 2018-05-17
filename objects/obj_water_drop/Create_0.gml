scr_fluid_converter_init(59,[1,1,1,3],true,true,false);

image_xscale = 1;
image_yscale = 1;

v      = 2;
e_time = 5;
rate   = (v - 1) / e_time;

wd_inc = rate * sprite_width  / 2;
hg_inc = rate * sprite_height / 2;

state = 0;