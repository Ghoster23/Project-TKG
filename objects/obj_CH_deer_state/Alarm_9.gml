instance_create_layer(x,y+16,"IF",obj_CH_leaf);
instance_create_layer(x+4,y+16,"IF",obj_CH_leaf);
instance_create_layer(x-4,y+16,"IF",obj_CH_leaf);
instance_create_layer(x+8,y+14,"IF",obj_CH_leaf);
instance_create_layer(x-8,y+14,"IF",obj_CH_leaf);
instance_create_layer(x+12,y+10,"IF",obj_CH_leaf);
instance_create_layer(x-12,y+10,"IF",obj_CH_leaf);
instance_create_layer(x+16,y+6,"IF",obj_CH_leaf);
instance_create_layer(x-16,y+6,"IF",obj_CH_leaf);
instance_create_layer(x+16,y,"IF",obj_CH_leaf);
instance_create_layer(x-16,y,"IF",obj_CH_leaf);

if pat == "w"{
	alarm[8] = 0.15 * room_speed;
}