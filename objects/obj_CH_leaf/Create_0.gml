p_x = obj_body.x;
p_y = obj_body.y;
once = false;
go = true;
des = false;

alarm[2] = 3 * room_speed;

image_speed = 0;
image_index = irandom_range(0,35);


if(instance_exists(obj_CH_tree_state)){
    pattern = obj_CH_tree_state.pat;
    phy_rotation = -(point_direction(x,y,obj_CH_tree_state.x,obj_CH_tree_state.y)-90);
    tree_dir = point_direction(obj_CH_tree_state.x,obj_CH_tree_state.y,x,y);
    s_x = obj_CH_tree_state.s_x;
    
}else if(instance_exists(obj_CH_deer_state)){
    pattern = obj_CH_deer_state.pat;
    phy_rotation = -(point_direction(x,y,obj_CH_deer_state.x,obj_CH_deer_state.y)-90);
    tree_dir = point_direction(obj_CH_deer_state.x,obj_CH_deer_state.y,x,y);
    s_x = obj_CH_deer_state.s_x;
}

hspd = 0;
vspd = 0;

xo = x;
yo = y;

for(i = 0; i < 3; i += 1){
	alarms[i] = -1;
}