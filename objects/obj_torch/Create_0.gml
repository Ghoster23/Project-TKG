image_speed = 0;

r = 0;
flicker = true;
lit = true;
o = 0;

rm_cl = x div global.roomwd;
rm_rw = y div global.roomhg
dir = 1;
offset = 0;
once = false;

em = part_emitter_create(global.ps); 

event_inherited();