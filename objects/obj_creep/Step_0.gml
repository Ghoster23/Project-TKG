//Poison status
if place_meeting(x,y,obj_body) and global.st_poison == false and cr_cd == false and global.pause == false{
    global.st_poison = true;
    global.st_poison_d = 15;
    cr_cd = true;
    alarm[1] = 1 * room_speed;
}

if global.pause == false{
	if alarm_0 != 0{
		alarm[0] = alarm_0;
		alarm_0 = 0;
	}
	
	if alarm_1 != 0{
		alarm[1] = alarm_1;
		alarm_1 = 0;
	}

a = alarm[0] / 100;

image_xscale = a;
image_yscale = a;

}

if global.pause == true{
	alarm_0 = alarm[0];
	alarm[0] = 0;
	alarm_1 = alarm[1];
	alarm[1] = 0;
}