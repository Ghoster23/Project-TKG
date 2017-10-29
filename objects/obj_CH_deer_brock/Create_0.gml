event_inherited();
randomize();

offset = true;

creator = obj_CH_deer_state;

image_speed = 0;

f_x = creator.f_x;
f_y = creator.f_y;

shadow = instance_create_layer(f_x,f_y-16,"BH",obj_CH_deer_brocks);
shadow.creator = self;

height = f_y - phy_position_y;
offs = height;

hp = 300 + irandom(100);