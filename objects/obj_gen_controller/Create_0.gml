scr_unique_inst();
global.gen = true;
once       = false;

//Gen Cursor
gx = room_width/2;
gy = room_height/2;

//Gen Count
roomgenerated = 0;
roomstogenerate = 16;

global.ds_roomgrid = ds_grid_create(4,64);
available_rooms    = ds_list_create();

for(i = 0; i < 64; i++){
	global.ds_roomgrid[# 0, i] = (i div 8) * 10 + i mod 8;
	global.ds_roomgrid[# 1, i] = "NULL";
	global.ds_roomgrid[# 2, i] = false;
	global.ds_roomgrid[# 3, i] = [0,0,0,0];
	
}

global.ds_roomgrid[# 0, 36] = 44;
global.ds_roomgrid[# 1, 36] = "Start";
global.ds_roomgrid[# 2, 36] = true;

ds_list_add(available_rooms,43);
ds_list_add(available_rooms,45);
ds_list_add(available_rooms,34);
ds_list_add(available_rooms,54);

//Control Vars
comp    = 0;

//generate perlin noise grid to map the floor
//makes a seed
global.gen_seed = round(random_range(1000000,10000000));

blockSize = 32;
width     = room_width / blockSize;
height    = room_height / blockSize;

floor_grid = ds_grid_create(width, height);

for(var i = 0; i < width; i++){
    for(var j = 0; j < height; j++){
        var zz = scr_perlinnoise2d(i,j,100);
        floor_grid[# i,j] = zz;
    }
}

//give it that smooth edgefinish
ds_grid_filter_gaussian(floor_grid,0.8);

//"posterise" the noise to appear solid spots	

var w = width;
var h = height;

for (var i=0; i<w; i++)
{
    for (var j=0; j<h; j++){
        var value = (ds_grid_get(floor_grid,i,j));
		
		if(value>-1 and value<36){
			ds_grid_add(floor_grid,i,j,"red")
		}
		else if(value>35 and value<51){
			ds_grid_add(floor_grid,i,j,"green")
		}
		else if(value>50 and value<101){
			ds_grid_add(floor_grid,i,j,"blue")
		}
		else{
			ds_grid_add(floor_grid,i,j,"error")
		}
		
    }
}

//finally, lets set all the tiles under the wall to copy the tiles next to them 

//horizontal lines
for (var i=0; i<h-1; i++)
{
	//if its a upper line wall 
	if(i mod 13 == 2){
		//copy whats underneath to fill that line
		for (var j=0; j<w; j++){
			var tile = string((ds_grid_get(floor_grid,j,i-1)));
			ds_grid_set(floor_grid,j,i,tile);
		}
	}
	
	//if its a bottom line wall
	else if(i mod 13 == 12){
		//copy whats above to fill that line
		for (var j=0; j<w; j++){
			var tile = string((ds_grid_get(floor_grid,j,i+1)));
			ds_grid_set(floor_grid,j,i,tile);
		}
	}
	
}

//vertical lines 
for (var j=0; j<w; j++){
	
	//if its a left line wall
	if(j mod 21 == 0){
		//copy whats to the right to fill that line
		for (var i=0; i<h; i++){
			var tile = string((ds_grid_get(floor_grid,j+1,i)));
			ds_grid_set(floor_grid,j,i,tile);
		}
	}
	
	//if its a left line wall
	if(j mod 21 == 20){
		//copy whats to the right to fill that line
		for (var i=0; i<h; i++){
			var tile = string((ds_grid_get(floor_grid,j-1,i)));
			ds_grid_set(floor_grid,j,i,tile);
		}
	}
}


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
global.rm_item_id  = 0;
global.rm_sp_id    = 0;
global.rm_boss_id  = 0;

comp = 0;

instance_create_layer( 0, 0, "IF", obj_room_controller);
comp += 7;

instance_create_layer( 0, 0, "PS", obj_minimap_controller);
comp += 7;

instance_create_layer( 0, 0, "IF", obj_AI_controller);
comp += 10;

if(!instance_exists(obj_inventory_controller)){
	instance_create_layer( 0, 0, "IF", obj_inventory_controller);
}
comp += 12;