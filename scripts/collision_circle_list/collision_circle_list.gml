///@description collision_circle_list(x1,y1,radius,obj,prec,notme)
//
//  Returns a list data structure populated with the ids of instances 
//  colliding with a given circle, or noone if no instances found.
//
///@param x1
///@param y1          origin point, real
///@param radius      radius of the circle, real
///@param obj         object to check for collision (or all), real
///@param prec        true for precise collision checking, bool
///@param notme       true to ignore the calling instance, bool
{
    var x1,y1,radius,obj,prec,notme,dsid,i;
    x1     = argument0;
    y1     = argument1;
    radius = argument2;
    obj    = argument3;
    prec   = argument4;
    notme  = argument5;
    dsid   = ds_list_create();
	
    with (obj) {
        if (!notme || id != other.id) {
            i = collision_circle(x1,y1,radius,id,prec,false);
            if (i != noone) ds_list_add(dsid,i);
        }
    }
	
    if (ds_list_empty(dsid)) {
        ds_list_destroy(dsid);
        dsid = noone;
    }
	
    return dsid;
}