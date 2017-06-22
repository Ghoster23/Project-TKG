depth = -y;
x = phy_position_x;
y = phy_position_y;

if(place_meeting(x,y,obj_swing)){
    if(d_cd = false){
        global.b_hp -= global.p_atk div global.b_def;
        d_cd = true;
        alarm[4] = 1 * room_speed;
    }
}

///Determine action state
if(distance_to_object(obj_body) > 364){
    state = 0;
}else if(distance_to_object(obj_body) > 160 && distance_to_object(obj_body) < 364){
    state = 1;
}else if(distance_to_object(obj_body) <=160  && d_alarm == false && c_alarm == false){
    state = 2;
    d_alarm_start += 1;
}else if(distance_to_object(obj_body) <= 160 && d_alarm == true){
    state = 0;
}else if(distance_to_object(obj_body) <= 160 && c_alarm == true){
    state = 1;
}

if(d_alarm_start == 1){
    alarm[0] = 1 * room_speed;
}

///Action state based changes
switch(state){
    case 0:
        global.b_spd = 0;
        image_speed = 0;
    break;
    case 1:
        global.b_spd = 0.75;
        image_speed = 0.3;
        phy_position_x += sign(obj_body.x - x)*global.b_spd;
        phy_position_y += sign(obj_body.y - y)*global.b_spd;
    break;
    case 2:
        global.b_spd = 10;
        image_speed = 0;
        image_index = 3;
        
        //Get direction
        dir = point_direction(x,y,obj_body.x,obj_body.y);

        //Get hspd and vspd
        hspd = lengthdir_x(global.b_spd,dir);
        vspd = lengthdir_y(global.b_spd,dir);
   
        //Move
        phy_position_x += hspd;
        phy_position_y += vspd;
    break;
}
           

///Phase
if(global.b_hp <= 35){
        global.b_spd = 18;
        state = 3;
        
        //Get direction
        dir = point_direction(x,y,global.bx,global.by);

        //Get hspd and vspd
        hspd = lengthdir_x(global.b_spd,dir);
        vspd = lengthdir_y(global.b_spd,dir);

        //Move
        phy_position_x += hspd;
        phy_position_y += vspd;
        
        if(distance_to_point(global.bx,global.by)) > 5{
            instance_destroy();
            instance_create(global.bx + 64, global.by, obj_tumey_2);
            instance_create(global.bx - 64, global.by, obj_tumey_2);
            
        }
}

