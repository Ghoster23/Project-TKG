instance_create_layer(x+2,y+16,"IF",obj_CH_leaf);
instance_create_layer(x-2,y+16,"IF",obj_CH_leaf);
instance_create_layer(x+6,y+16,"IF",obj_CH_leaf);
instance_create_layer(x-6,y+16,"IF",obj_CH_leaf);
instance_create_layer(x+10,y+12,"IF",obj_CH_leaf);
instance_create_layer(x-10,y+12,"IF",obj_CH_leaf);
instance_create_layer(x+14,y+8,"IF",obj_CH_leaf);
instance_create_layer(x-14,y+8,"IF",obj_CH_leaf);
instance_create_layer(x+16,y+4,"IF",obj_CH_leaf);
instance_create_layer(x-16,y+4,"IF",obj_CH_leaf);


if pat == "w"{
	alarm[9] = 0.15 * room_speed;
}