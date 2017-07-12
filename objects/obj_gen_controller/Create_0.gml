//Measurements
global.roomwd = 672;
global.roomhg = 416;
once = false;

//Gen Cursor
gx = room_width/2;
gy = room_height/2;

//Gen Count
roomgenerated = 0;
roomstogenerate = 16;

global.ds_roomgrid = ds_grid_create(3,17);

global.ds_roomgrid[# 0, 0] = [4,4];
global.ds_roomgrid[# 1, 0] = "Start";
global.ds_roomgrid[# 2, 0] = true;

//Control Vars
confirm = false;

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
instance_create_layer(gx+global.roomwd/2,gy+global.roomhg/2,"Instances",obj_body);

//Room counts
for(var i = 0; i < 8; i += 1;){
    for(var j = 0; j < 8; j += 1;){
        l[i,j] = false;
    }
}

broom = 1;
broomc = 0;

roomsp = 1;
roomspc = 0;

///Room specifics
roomequip = 1;
roomequipc = 0;

roomtpa = 6;
roomtpac = 0;
roomtpb = 6;
roomtpbc = 0;

roomst = 1;
roomstc = 0;



