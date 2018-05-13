event_inherited();

impact = false;
explode = false;

image_speed=0;
phy_fixed_rotation=true;
image_speed=0;
alarm[0]=room_speed*1.5;
event_perform(ev_alarm,1); //bomb delay currently null

prev_image_speed = 0;
prev_rotation = 0;

for(i = 0; i < 2; i += 1){	
	alarms[i] = -1;
}
