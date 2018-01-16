scr_unique_inst();
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
instance_create_layer(gx+(global.roomwd div 2),gy+(global.roomhg div 2)-16,"IF",obj_view);

scr_base_roomgn();

//Player
instance_create_layer(gx+global.roomwd/2,gy+global.roomhg/2,"Instances",global.body);

//Room counts
for(var i = 0; i < 8; i += 1;){
    for(var j = 0; j < 8; j += 1;){
        l[i,j] = false;
    }
}

//Unique Rooms
global.rm_store_id = 0;
global.rm_item_id = 0;
global.rm_sp_id = 0;
global.rm_boss_id = 0;

//Fluids
global.fluid_grid = -1;

comp = 0;

instance_create_layer(0,0,"IF",obj_room_controller);
comp += 7;
instance_create_layer(0,0,"PS",obj_minimap_controller);
comp += 7;