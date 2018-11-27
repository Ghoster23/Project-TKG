///@param gx
///@param gy
///@param grid
{
var gx = argument0;
var gy = argument1;

var grid = argument2;

///Base Room
scr_base_roomgn(gx,gy);

var gxtile = gx / 32; 
var gytile = gy / 32;

for(var i = 0; i < 9; i++){
	for(var j = 0; j < 19; j++){
		var object = grid[# j, i];
		var offset = 0;
		
		var floor_tile = ds_grid_get(generator.floor_grid,gxtile+j+1,gytile+i+2);
		
		if(is_array(object)){
			var obj_ind  = object[0];
			var obj_lyr  = object[1];
			var obj_name = object_get_name(obj_ind);
			
			#region Determine offset
			for(var q = 1; q < 6; q++){
				for(var t = 0; t < menuText[q,0]; t++){
					if menuText[q,t+1] == obj_name{
						category = q;
					}
				}
			}
			
			if(category == 2){
				offset = 16;
			}
			#endregion
			
			#region Create instance
			var x_pos = gx + 32 + j * 32;
			var y_pos = gy + 96 + i * 32;
			
			var inst = instance_create_layer( x_pos + offset, y_pos + offset, obj_lyr, obj_ind);
			_rm_insts[_rm_count] = inst;
			_rm_count++;
			#endregion
			
			#region Alternate sprites based on ground
			if(floor_tile == "blue"){
				switch obj_ind {
					case obj_rock:
						inst.sprite_index = spr_grassyrock;
					break;
					
					case obj_crate:
						inst.sprite_index = spr_grassycrate;
					break;
					
					case obj_barrel:
						inst.sprite_index = spr_grassybarrel;
					break;
					
					case obj_vase:
						inst.sprite_index = spr_grassyvase;
					break;
				}
			}
			#endregion
			
			//Add fluid tile
			//if(object_get_parent(obj_ind) != obj_above_ground_parent){
			//	instance_create_layer( x_pos, y_pos, "BH", obj_fluid_tile);
			//}
			
		}else{
			//Add fluid tile
			//instance_create_layer( gx+32+j*32, gy+96+i*32, "BH", obj_fluid_tile);
			
			//Floor decor
			switch floor_tile {
				case "blue": 
					if(irandom_range(0,10) mod 2 == 0){
						_rm_insts[_rm_count] = instance_create_layer(gx+32+j*32 + 16,gy+96+i*32 + 21,"Instances",obj_grassblade);
						_rm_count++;
					}
				break;
		
				default:
				break;
			}
		}
	}
}
}