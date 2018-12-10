///@param gx
///@param gy
///@param type
///@param grid
{
var gx = argument0;
var gy = argument1;

var gxtile = gx/32;
var gytile = gy/32;

var type = argument2;

var grid = argument3;

var fl_grid = generator.floor_grid;

//Generate the decor
#region Plants
var vegie;
/*
#region Phase one : the top wall
//case one the left most tree
if ((ds_grid_get(fl_grid,gxtile+1,gytile+2) == "blue") and 
	(ds_grid_get(fl_grid,gxtile+2,gytile+2) == "blue") and 
	(ds_grid_get(fl_grid,gxtile+3,gytile+2) == "blue")){
		vegie = instance_create_layer(gx,gy,"Instances",obj_wallvegetation);
		with vegie{
			num = 1;
		}
}
if ((ds_grid_get(fl_grid,gxtile+6,gytile+2) == "blue") and 
	(ds_grid_get(fl_grid,gxtile+7,gytile+2) == "blue") ){
	vegie = instance_create_layer(gx,gy,"Instances",obj_wallvegetation);
		with vegie{
			num = 2;
		}
}
if ((ds_grid_get(fl_grid,gxtile+10,gytile+2) == "blue") and 
	(ds_grid_get(fl_grid,gxtile+11,gytile+2) == "blue") and 
	(ds_grid_get(fl_grid,gxtile+12,gytile+2) == "blue")){
		vegie = instance_create_layer(gx,gy,"Instances",obj_wallvegetation);
		with vegie{
			num = 3;
		}
}
if ((ds_grid_get(fl_grid,gxtile+14,gytile+2) == "blue") and 
	(ds_grid_get(fl_grid,gxtile+15,gytile+2) == "blue") and 
	(ds_grid_get(fl_grid,gxtile+16,gytile+2) == "blue") and
	(ds_grid_get(fl_grid,gxtile+17,gytile+2) == "blue")){
		vegie = instance_create_layer(gx,gy,"Instances",obj_wallvegetation);
		with vegie{
			num = 4;
		}
}
#endregion

#region Phase two: the left right and bottom walls
if ((ds_grid_get(fl_grid,gxtile+1,gytile+10) == "blue") and 
	(ds_grid_get(fl_grid,gxtile+1,gytile+11) == "blue") and 
	(ds_grid_get(fl_grid,gxtile+1,gytile+12) == "blue")){
		vegie = instance_create_layer(gx,gy,"PS",obj_wallvegetation);
		with vegie{
			num = 5;
		}
}

if ((ds_grid_get(fl_grid,gxtile+17,gytile+10) == "blue") and 
	(ds_grid_get(fl_grid,gxtile+17,gytile+11) == "blue") and 
	(ds_grid_get(fl_grid,gxtile+17,gytile+12) == "blue")){
		vegie = instance_create_layer(gx,gy,"PS",obj_wallvegetation);
		with vegie{
			num = 6;
		}
}


if ((ds_grid_get(fl_grid,gxtile+1,gytile+10) == "blue") and 
	(ds_grid_get(fl_grid,gxtile+2,gytile+10) == "blue") and 
	(ds_grid_get(fl_grid,gxtile+3,gytile+10) == "blue")){
		vegie = instance_create_layer(gx,gy,"PS",obj_wallvegetation);
		with vegie{
			num = 7;
		}
}

if ((ds_grid_get(fl_grid,gxtile+4,gytile+10) == "blue") and 
	(ds_grid_get(fl_grid,gxtile+5,gytile+10) == "blue") and 
	(ds_grid_get(fl_grid,gxtile+6,gytile+10) == "blue") and
	(ds_grid_get(fl_grid,gxtile+7,gytile+10) == "blue") and
	(ds_grid_get(fl_grid,gxtile+8,gytile+10) == "blue")){
		vegie = instance_create_layer(gx,gy,"PS",obj_wallvegetation);
		with vegie{
			num = 8;
		}
}

if ((ds_grid_get(fl_grid,gxtile+13,gytile+10) == "blue") and 
	(ds_grid_get(fl_grid,gxtile+14,gytile+10) == "blue") and 
	(ds_grid_get(fl_grid,gxtile+15,gytile+10) == "blue") and
	(ds_grid_get(fl_grid,gxtile+16,gytile+10) == "blue") and
	(ds_grid_get(fl_grid,gxtile+17,gytile+10) == "blue")){
		vegie = instance_create_layer(gx,gy,"PS",obj_wallvegetation);
		with vegie{
			num = 9;
		}
}
#endregion
*/
#endregion

#region Wall Decor
var skip     = 0;
var ranvalue = 1;

for(var i = 0; i < 19; i++){
	//skip door or skip if it was a 2 tile thingy
	//if((i==8) or (i==9) or (i==10)) or skip == true{
	if skip >= 0{	
		skip -= 1;
		continue;
	}
	
	#region Check room type
	if((i == 8) or (i == 9) or (i == 10)){
		//if there isnt a door there
		if skip >= 0{	
			skip -= 1;
		}
		
		if(type==2 or type==6 or type==7 or type==9 or type==10 or type==11 or type==12 or type==14){
			continue;
		}
	}
	#endregion
	
	#region Check solids
	var object = grid[# i, 0];
	
	if(is_array(object)){
		var obj_ind  = object[0];
		var obj_lyr  = object[1];
		var obj_name = object_get_name(obj_ind);
			
		if(object_get_parent(obj_ind) == obj_solid_parent) or (object_get_parent(object_get_parent(obj_ind)) == obj_solid_parent){
			if skip >= 0{	
				skip -= 1;
			}
			continue;
		}
	}
	#endregion
	
	#region Decide size of decor piece
	//if it is the last bit before gap place a 1 tile thingy
	if(i == 7 or i == 18){
		ranvalue = 1;
	}
	else{
		ranvalue = irandom_range(1,2);
		
		//check if there isnt an object making it impossible to have a 2 tiler
		var object = grid[# i+1, 0];
		
		if(is_array(object)){ 
			var obj_ind = object[0];
				
			if(object_get_parent(obj_ind) == obj_solid_parent) or (object_get_parent(object_get_parent(obj_ind)) == obj_solid_parent){
				ranvalue = 1;
			}
		}
		
	}
	#endregion
	
	#region Create decor
	var decor = 0;
	
	switch(ranvalue){
		case 1:
			//decide what kind of 1 tile thing to put in there - (painting,banner,misc or bookcase)
			switch(irandom_range(0,10)){
				case 0:
				case 1:    //painting
					decor = obj_painting;	
				break;
				case 2:
				case 3:    //banner
					decor = obj_banner;	
				break;
				case 4:
				case 5:    //misc
					decor = obj_1tilemisc;	
				break;
				case 6:    //bookcase
					decor = obj_bookcase;	
				break;
				case 7:
				case 8:
				case 9:
					decor = 0;
					
					_rm_decor[_rm_d_cnt] = instance_create_layer(gx+32+32*i,gy+48,"Instances",obj_torch);
					_rm_d_cnt++;
					
					skip  = 1;
				break;
				default:
					decor = 0;
				break;
			}
			
			if(decor){
				var inst = instance_create_layer(gx+32+i*32,gy+32*3,"Instances",decor);
				_rm_decor[_rm_d_cnt] = inst;
				_rm_d_cnt++;
				
				with(inst){
					tile = 1;
				}
				
				skip = 1;
			}
		break;
			
		case 2:
			//decide what kind of 2 tile thing to put in there - (painting or bookcase)
			switch(irandom_range(0,10)){
				case 0:
				case 1://painting
					decor = obj_painting;	
				break;
				case 2://bookcase
					decor = obj_bookcase;	
				break;
				default:
					decor = 0;
				break;
			}
			
			if(decor){
				var inst = instance_create_layer(gx+32+i*32,gy+32*3,"Instances",decor);
				
				with(inst){
					tile = 2;
				}
				_rm_decor[_rm_d_cnt] = inst;
				_rm_d_cnt++;
			}
			skip = 2;
			break;
	}
	#endregion

}
#endregion
}