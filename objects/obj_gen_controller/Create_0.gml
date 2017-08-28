global.gen = true;
once = false;

//Gen Cursor
gx = room_width/2;
gy = room_height/2;

//Gen Count
roomgenerated = 0;
roomstogenerate = 16;

global.ds_roomgrid = ds_grid_create(4,64);

for(i = 0; i < 64; i++){
	global.ds_roomgrid[# 0, i] = (i div 8) * 10 + i mod 8;
	global.ds_roomgrid[# 1, i] = "NULL";
	global.ds_roomgrid[# 2, i] = false;
	global.ds_roomgrid[# 3, i] = [0,0,0,0];
}

global.ds_roomgrid[# 0, 36] = 44;
global.ds_roomgrid[# 1, 36] = "Start";
global.ds_roomgrid[# 2, 36] = true;

//Control Vars
confirm = false;

attempts = 0;

up = false;
down= false;
right = false;
left = false;

///Base Room
instance_create_layer(gx+(global.roomwd div 2),gy+(global.roomhg div 2),"IF",obj_view);
instance_create_layer(gx+global.roomwd/2+64,gy+48,"Instances",obj_torch);
instance_create_layer(gx+global.roomwd/2-96,gy+48,"Instances",obj_torch);
instance_create_layer(gx,gy,"Instances",obj_wall_left);
instance_create_layer(gx,gy,"Instances",obj_wall_up);
instance_create_layer(gx,gy+global.roomhg-32,"Instances",obj_wall_down);
instance_create_layer(gx+global.roomwd-32,gy,"Instances",obj_wall_right);
instance_create_layer(gx+global.roomwd/2,gy+global.roomhg/2+31,"Floor",obj_floor);

//Player
instance_create_layer(gx+global.roomwd/2,gy+global.roomhg/2,"Instances",global.body);

//Room counts
for(var i = 0; i < 8; i += 1;){
    for(var j = 0; j < 8; j += 1;){
        l[i,j] = false;
    }
}