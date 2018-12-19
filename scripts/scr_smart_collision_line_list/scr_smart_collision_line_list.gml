///@param x1
///@param y1
///@param x2
///@param y2
///@param obj
///@param precise
///@param notme
///@param blocks
{
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;

var col = argument4;
var pre = argument5;
var ntm = argument6;

var blocks = argument7;

var list = ds_list_create();

var count = collision_line_list(x1,y1,x2,y2,col,pre,ntm,list,true);

var res = noone;

if(count > 0){
	var first = list[| 0];
	
	var xx = first.x;
	var yy = first.y;
	
	if(is_array(blocks)){
		var blk_c = array_length_1d(blocks);
		
		for(var i = 0; i < blk_c; i++){
			var blk = collision_line(x1,y1,x,y,blocks[i],pre,ntm);
			
			if(blk != noone){
				break;
			}
		}
	}else {
		var blk = collision_line(x1,y1,x,y,blocks,pre,ntm);
	}
}

if(blk != noone){
	res = first;
}

ds_list_destroy(list);
return res;
}