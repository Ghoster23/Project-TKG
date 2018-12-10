once = false;

state = 0;

dungeon = noone;

gen_rooms = [-1];

sp_places = [-1];

#region Gen parameters
level = 0;

rm_count = 0;
rm_gened = 0;

specials = [ 0];

fin = -1;

gen_col = 0;
gen_row = 0;

start_col = 0;
start_row = 0;
#endregion

gx = x;
gy = y;

rm = noone;

rm_connected = 0;
rm_built     = 0;

pros_rms = 0;

rm_min = [7,7];
rm_max = [0,0];

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