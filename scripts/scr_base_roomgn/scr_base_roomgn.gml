{
var gx = argument0;
var gy = argument1;

#region Walls
var r = [];
var u = [];
var l = [];
var d = [];

r[0] = instance_create_layer(gx+global.roomwd-32,                  gy, "Instances", obj_wall_right_up);
r[1] = instance_create_layer(gx+global.roomwd-32,           gy+176+96, "Instances", obj_wall_right_down);

u[0] = instance_create_layer(             gx+368,                  gy, "Instances", obj_wall_up_right);
u[1] = instance_create_layer(              gx+32,                  gy, "Instances", obj_wall_up_left);

l[0] = instance_create_layer(                 gx,                  gy, "Instances", obj_wall_left_up);
l[1] = instance_create_layer(                 gx,           gy+176+96, "Instances", obj_wall_left_down);

d[0] = instance_create_layer(             gx+368, gy+global.roomhg-64,        "PS", obj_wall_down_right);
d[1] = instance_create_layer(                 gx, gy+global.roomhg-64,        "PS", obj_wall_down_left);
#endregion

#region Fillins
fillin[2] = instance_create_layer(                 gx,           gy+176+32, "Instances", obj_wall_left_fillin);
fillin[1] = instance_create_layer(             gx+304,                  gy, "Instances", obj_wall_up_fillin);
fillin[3] = instance_create_layer(          gx+304-16, gy+global.roomhg-64,        "PS", obj_wall_down_fillin);
fillin[0] = instance_create_layer(gx+global.roomwd-32,           gy+176+32, "Instances", obj_wall_right_fillin);
#endregion

#region Floor
var gxtile = gx/32;
var gytile = gy/32;

var flr = instance_create_layer(gx+(global.roomwd/2),gy+(global.roomhg/2)+31,"Floor",obj_floor);

flr.gxtile=gxtile;
flr.gytile=gytile;
#endregion

_rm_walls = [r,u,l,d,flr];
}