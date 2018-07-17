{
var inst = argument0;

//angle and distance from center of light to center of object
var bbox_width = inst.bbox_right - inst.bbox_left;
var angle2center  = point_direction(x, y, inst.bbox_left+bbox_width/2, inst.bbox_bottom);
var dist2center   = point_distance(x, y, inst.bbox_left+bbox_width/2, inst.bbox_bottom);

//initialise vector to hold 4 points
var points = [[0,0],[0,0],[0,0],[0,0]];

var offsetfix = (inst.y - inst.sprite_yoffset) + inst.sprite_height - inst.bbox_bottom

//------> point_1 and point_2 are easy and never change <-------

//1>>>(bottom left)
points[0,0] = inst.bbox_left;
points[0,1] = inst.bbox_bottom - offsetfix;


//2>>>(bottom right)
points[1,0] = inst.bbox_right
points[1,1] = inst.bbox_bottom - offsetfix;



//------> point_3 and point_4 can be found from the line <-------
//         that intersects down the middle of the object

//begin by determining aux point
var shadow_len = clamp((radius - dist2center*1.3),20,120);

var a1 = point_direction(x, y, points[0,0], points[0,1]);
var a2 = point_direction(x, y, points[1,0], points[1,1]);;

var shadow_amp = clamp(point_distance(points[0,0] + lengthdir_x(shadow_len,a1),
				                points[0,1] + lengthdir_y(shadow_len,a1),
								points[1,0] + lengthdir_x(shadow_len,a2),
								points[1,1] + lengthdir_y(shadow_len,a2)),20,200);
								
var aux_xx = inst.bbox_left+bbox_width/2 + lengthdir_x(shadow_len,angle2center);
var aux_yy = inst.bbox_bottom + lengthdir_y(shadow_len,angle2center);

//3>>>(top left)
points[2,0] = aux_xx +shadow_amp/2;

points[2,1] = aux_yy;

//4>>>(top right)
points[3,0] = aux_xx - shadow_amp/2;

points[3,1] = aux_yy 

return points;
}