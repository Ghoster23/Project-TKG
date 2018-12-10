scr_InitSubMenu();

if(not instance_exists(obj_inventory_controller)){
	instance_create_layer(x,y,layer,obj_inventory_controller);
}

//spawn player
switch global.lvl_room_type{
	//down
	case 0:
	case 4:
	case 5:
	case 9:
	case 10:
	case 12:
	case 13:
	case 14:
		var xx = 10*32+16;
		var yy = 12*32;
	break;
	//left
	case 1:
	case 6:
	case 8: 
	case 11:
		var xx = 1*32;
		var yy = 7*32+16;
	break;
	//up
	case 2:
	case 7:
		var xx = 10*32+16;
		var yy = 3*32;
	break;
	//right
	case 3:
		var xx = 20*32;
		var yy = 7*32+16;
	break;

}

scr_char_stats();
with obj_game_controller {
	global.body = bodies[global.char];
}

scr_spawn_player(xx,yy,"Instances");

mp_grid = mp_grid_create(0,0,room_width/32,room_height/32,32,32);
mp_path = path_add();

dungeon = id;
generator = id;

gen_col = 0;
gen_row = 0;

col = 0;
row = 0;

type = global.lvl_room_type;

#region Content
_rm = noone;

_rm_insts = [];
_rm_count = 0;

_rm_walls = -1;

_rm_decor = [];
_rm_d_cnt = 0;

doors = [0,0,0,0];
fillin = [ noone, noone, noone, noone];
#endregion

#region Generate perlin noise grid to map the floor
//makes a seed
gen_seed = round(random_range(1000000,10000000));

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
#endregion

scr_room_gen(x,y,"temp",0);

_rm = instance_create_layer(x,y,layer,obj_dungeon_room);

//Room Controller
scr_room_init(_rm);

global.current_col = 0;
global.current_row = 0;