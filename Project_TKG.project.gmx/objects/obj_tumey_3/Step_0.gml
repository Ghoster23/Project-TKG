depth = -y;

phy_position_x += sign(obj_body.x - x)*global.b_spd;
phy_position_y += sign(obj_body.y - y)*global.b_spd;

if(place_meeting(x,y,obj_swing)){
    global.b_hp -= global.p_atk div global.b_def;
}

if(global.b_hp <= 0 && distance_to_object(obj_body) < 16){
    alarm[0] = 0.5 * room_speed;
    sprite_index = spr_tumey_3e;
}

