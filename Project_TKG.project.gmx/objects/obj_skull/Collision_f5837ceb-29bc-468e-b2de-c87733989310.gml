var dir = point_direction(obj_kb.x,obj_kb.y,x,y);
var x_f = lengthdir_x(30,dir);
var y_f = lengthdir_y(30,dir);
    

physics_apply_impulse(x,y,x_f,y_f);

