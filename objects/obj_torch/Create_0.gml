image_speed = 0;

r = 0;
flicker = true;
lit = true;
o = 0;

rm_cl = x div global.roomwd;
rm_rw = y div global.roomhg
dir = 1;
offset = 0;

if place_meeting(x+37,y,obj_wall_right){
    dir = 3;
    image_index = 2;
    offset = 10;
}
if place_meeting(x,y,obj_wall_up){
    dir = 2;
    image_index = 0;
}
if place_meeting(x-5,y,obj_wall_left){
    dir = 1;
    image_index = 1;
    offset = -10;
}
if place_meeting(x,y+37,obj_wall_down){
    dir = 0;
    image_index = 0;
}

em = part_emitter_create(global.ps_if); 
part_emitter_region(global.ps_if,em,x+15+offset,x+17+offset,y+8,y+10,ps_shape_rectangle,ps_distr_linear);

event_inherited();