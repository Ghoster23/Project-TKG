ty = obj_body.y;
tx = obj_body.x;
alarm[0] = 8 * room_speed;

phy_fixed_rotation = true;

//CL
if(global.alarm_zz == true && global.alarm_rp == true){
    physics_apply_impulse(x, y, lengthdir_x(10, point_direction(x,y,tx,ty))*0.10,lengthdir_y(10, point_direction(x,y,tx,ty))*0.10);
    }
//RP
if(global.alarm_zz == true && global.alarm_cl == true){
    physics_apply_impulse(x, y, lengthdir_x(10, point_direction(x,y,tx,ty))*0.20,lengthdir_y(10, point_direction(x,y,tx,ty))*0.20);
    }


