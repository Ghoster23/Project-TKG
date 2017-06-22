ty = obj_body.y;
tx = obj_body.x;
e_satk = obj_slm_b.e_satk;

phy_fixed_rotation = true;
physics_apply_impulse(x, y, lengthdir_x(2, point_direction(x,y,obj_body.x,obj_body.y))*0.5,lengthdir_y(2, point_direction(x,y,obj_body.x,obj_body.y))*0.5);



