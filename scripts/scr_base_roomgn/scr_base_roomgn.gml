//lets generate that floor boiiii

//find first entry in the table
gxtile=gx/32; 
gytile=gy/32;

//we have a 21*13 (32 pixel tiles) size sub grid for each room (floor => 19*9)
//lets lay down the right objects on the floor according to the floor_grid
for (var i=0; i<13; i++)
{
    for (var j=0; j<21; j++){
		
		 switch ds_grid_get(obj_gen_controller.floor_grid,gxtile+j,gytile+i){
			case "green": break;
			
			case "blue": 
				var tile = instance_create_layer(gx+32*j,gy+32*i,"floor",obj_tile_grass);
				tile.tx = gxtile+j;
				tile.ty = gytile+i;
				with(tile){
					type="blue";
					scr_autotile_floor(self);
				}
				
				break;
				
			case "red" : 
				var tile = instance_create_layer(gx+32*j,gy+32*i,"floor",obj_tile_stone);
				tile.tx = gxtile+j;
				tile.ty = gytile+i;
				with(tile){
					type="red";
					scr_autotile_floor(self);
				}
				break;
				
			default: show_debug_message("tile does not exist") break;
		 }
			
	}
}


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

//instance_create_layer(gx+(global.roomwd/2),gy+(global.roomhg/2)+31,"Floor",obj_floor);

