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

var dtt = instance_create_layer(x1,y1,"Instances",obj_collision_detector);

var xx = x2;
var yy = y2;
var inst = noone;
var own = owner;

with dtt {
	var dir = degtorad(point_direction(x,y,x2,y2));
	var ix = cos(dir);
	var iy = sin(dir);
	
	while(distance_to_point(x2,y2) > 2){
		x += ix;
		y -= iy;
		
		inst = instance_place(x,y,col);
		
		if(inst != noone and inst != own){
			xx = x;
			yy = y;
			break;
		}
		
		if(is_array(blocks)){
			var len = array_length_1d(blocks);
			
			for(var i = 0; i < len; i++){
				inst = instance_place(x,y,col);
		
				if(inst != noone){
					xx = x;
					yy = y;
					break;
				}
				
				if(xx != x2){ break; }
			}
		}else {
			inst = instance_place(x,y,blocks);
		
			if(inst != noone){
				xx = x;
				yy = y;
				break;
			}
		}
	}
}

//instance_destroy(dtt);

return [xx,yy,inst];
}