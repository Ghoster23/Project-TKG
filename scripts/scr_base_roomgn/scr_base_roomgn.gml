instance_create_layer(gx + (global.roomwd / 2) + 64,gy + 48,"Instances",obj_torch);
instance_create_layer(gx+global.roomwd/2-96,gy+48,"Instances",obj_torch);

instance_create_layer(gx,gy,"Instances",obj_wall_left_up);
instance_create_layer(gx,gy+176+32,"Instances",obj_wall_left_fillin);
instance_create_layer(gx,gy+176+96,"Instances",obj_wall_left_down);

instance_create_layer(gx,gy,"Instances",obj_wall_up_left);
instance_create_layer(gx+368,gy,"Instances",obj_wall_up_right);
instance_create_layer(gx+304,gy,"Instances",obj_wall_up_fillin);

instance_create_layer(gx,gy+global.roomhg-64,"PS",obj_wall_down_left);
instance_create_layer(gx+304,gy+global.roomhg-64,"PS",obj_wall_down_fillin);
instance_create_layer(gx+368,gy+global.roomhg-64,"PS",obj_wall_down_right);

instance_create_layer(gx+global.roomwd-32,gy,"Instances",obj_wall_right_up);
instance_create_layer(gx+global.roomwd-32,gy+176+32,"Instances",obj_wall_right_fillin);
instance_create_layer(gx+global.roomwd-32,gy+176+96,"Instances",obj_wall_right_down);


//lets generate that floor boiiii

//find first entry in the table
gxtile=gx/32; 
gytile=gy/32;

flr=instance_create_layer(gx+(global.roomwd/2),gy+(global.roomhg/2)+31,"Floor",obj_floor);
flr.gxtile=gxtile;
flr.gytile=gytile;

