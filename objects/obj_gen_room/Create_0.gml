image_speed = 0;
image_alpha = 0.5;
image_xscale = 3.5;
image_yscale = 3.5;

layer = layer_get_id("DECORTEMP");

scr_InitSubMenu();

state = 0;

start = false;

generator = noone;
order     = 0;

registered = false;

type = 0;

#region Dimensions
//Room
wd = global.roomwd;
hg = global.roomhg;

//Dungeons
gen_col = 0;
gen_row = 0;
#endregion

#region Positioning
col = x / wd;
row = y / hg;

prev_col = x;
prev_row = y;

prev = noone;
#endregion

#region Connections
adj = [ noone, noone, noone, noone];

doors = [ 0, 0, 0, 0];
#endregion

#region Content
_rm = noone;

_rm_insts = [];
_rm_count = 0;

_rm_walls = -1;

_rm_decor = [];
_rm_d_cnt = 0;

fillin = [ noone, noone, noone, noone];
#endregion