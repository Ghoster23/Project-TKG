event_inherited();
select = irandom(15);
image_speed = 0;
ox = x;
oy = y;
iy = y;
t = 0;
inc = 2;
amp = 4;

while global.equipable[select] {
	select = irandom(15);
}

global.equipable[select] = true;
image_index = select;