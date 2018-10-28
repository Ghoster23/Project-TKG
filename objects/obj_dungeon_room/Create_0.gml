image_speed = 0;

dungeon      = noone;
content_grid = [];

init = false;

wd = global.roomwd;
hg = global.roomhg;

hc_c = wd div 32;
vc_c = hg div 32;

///Connections
doors = [-1,-1,-1,-1]

corridors = [ noone, noone, noone, noone]

adj = [ noone, noone, noone, noone]

///Positioning
dun_col = 0;
dun_row = 0;

row = 0;
col = 0;

///Typing
type = 0;

///State
state = 5;
sub_state = 0;
cleared = false;