randomize();
event_inherited();
image_speed = 0;
image_index = irandom_range(0,13);

solid = false;
visible = true;
once = false;

spd = 8;

if(room == rm_CH_boss){
    master = obj_CH_deer_state;
}

//Falling spot
if instance_exists(master){
    x1 = master.x_s;
    y1 = master.y_s;
    x2 = master.x_e;
    y2 = master.y_e;

}else {
    instance_destroy();

}

f_x = irandom_range(x1,x2);
f_y = irandom_range(y1,y2);

instance_create_layer(f_x,f_y,"Instances",obj_fln_rock_shadow);

phy_position_x = f_x;



