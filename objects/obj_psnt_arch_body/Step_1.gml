///@description Determine distance to player
if not global.pause{
	dis = distance_to_object(obj_body);
	dir = point_direction(x,y,obj_body.x,obj_body.y);
}