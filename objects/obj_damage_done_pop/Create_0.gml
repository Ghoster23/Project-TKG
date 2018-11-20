spd = 3;
ang = random_range(0,pi*2);

y -= 12;

hspd = spd * cos(ang);
vspd = spd * sin(ang);

len = power(power(hspd,2) + power(vspd,2),0.5);

hspd =   1 * spd * hspd/len;
vspd = 0.5 * spd * vspd/len;

z = 0;

image_alpha = 1;

dmg = 0;

total = room_speed * 0.5;
alarm[0] = total;