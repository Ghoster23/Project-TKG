/// @description shoot
bomb_x = x + lengthdir_x(20, player_dir);
bomb_y = y + lengthdir_y(20, player_dir);
instance_create_layer(bomb_x, bomb_y,layer,obj_bomb);
image_speed=0;
image_index=0;