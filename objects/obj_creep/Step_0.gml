//Poison status
if place_meeting(x,y,obj_body) and global.st_poison == false and cr_cd == false{
    global.st_poison = true;
    global.st_poison_d = 15;
    cr_cd = true;
    alarm[1] = 1 * room_speed;
}

a = alarm[0] / 100;

image_xscale = a;
image_yscale = a;

