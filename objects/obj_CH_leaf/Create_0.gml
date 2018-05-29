event_inherited();
p_x = global.body.x;
p_y = global.body.y;
once = false;
go = true;
des = false;

alarm[2] = 3 * room_speed;

image_speed = 0;
image_index = irandom_range(0,35);

stat[stats.atk] = 1;
damage = 1;
divi = stats.def;

scr_pausable_init(3);