var dr = point_direction(global.body.x,global.body.y,x,y);
physics_apply_impulse(x,y,lengthdir_x(30,dr+90-20),lengthdir_y(30,dr+90-20));