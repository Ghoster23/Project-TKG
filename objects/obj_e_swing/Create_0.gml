image_speed = .5;
image_angle = point_direction(x,y,global.body.x,global.body.y);
creator = instance_nearest(x,y,obj_psnt_body);
cd = false;
prev_image_speed = 0;
e_atk = creator.e_atk;