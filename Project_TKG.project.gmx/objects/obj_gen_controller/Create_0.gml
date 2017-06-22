//Measurements
global.roomwd = 544;
global.roomhg = 416;
once = false;

//Gen Cursor
gx = room_width/2;
gy = room_height/2;

//Gen Count
roomgenerated = 0;
roomstogenerate = 16;

//Control Vars
confirm = false;

up = false;
down= false;
right = false;
left = false;

///Base Room
instance_create(gx+global.roomwd/2+64,gy+32,obj_torch);
instance_create(gx+global.roomwd/2-96,gy+32,obj_torch);
instance_create(gx,gy,obj_wall_left);
instance_create(gx,gy,obj_wall_up);
instance_create(gx,gy+global.roomhg-32,obj_wall_down);
instance_create(gx+global.roomwd-32,gy,obj_wall_right);
instance_create(gx+global.roomwd/2,gy+global.roomhg/2+31,obj_floor);

global.l[4,4] = true

//Player
instance_create(gx+global.roomwd/2,gy+global.roomhg/2,obj_body);

//View
instance_create(room_width/2+global.roomwd/2,room_height/2+global.roomhg/2,obj_view);

//Room counts
for(var i = 0; i < 8; i += 1;){
    for(var j = 0; j < 8; j += 1;){
        global.l[i,j] = false;
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



