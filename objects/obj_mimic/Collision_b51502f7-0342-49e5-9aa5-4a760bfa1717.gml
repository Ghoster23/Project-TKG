///@description Get knocked back
if state == 1{
	if instance_exists(obj_kb){
	    var dir = point_direction(obj_kb.x,obj_kb.y,x,y);
	}else {
	    var dir = point_direction(kb_x,kb_y,x,y);
	}

	var x_f = lengthdir_x(30,dir);
	var y_f = lengthdir_y(30,dir);
    

	physics_apply_impulse(x,y,x_f,y_f);
}