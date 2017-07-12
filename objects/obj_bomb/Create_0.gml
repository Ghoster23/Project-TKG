event_inherited();
dir=obj_hspider.player_dir;
impact = false;
explode = false;
physics_apply_impulse(x, y, lengthdir_x(10, dir ),lengthdir_y(10, dir ));
image_speed=0;
phy_fixed_rotation=true;
image_speed=0;
alarm[0]=room_speed*2;
alarm[1]=room_speed*0.5;

prev_image_speed = 0;
prev_rotation = 0;

for(i = 0; i < 2; i += 1){	
	alarms[i] = -1;
}
