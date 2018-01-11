event_inherited();
equipable_count = 15;

select = irandom(equipable_count);
image_speed = 0;
ox = x;
oy = y;
iy = y;
t = 0;
inc = 2;
amp = 4;
attempts = 0;

offs = 32;
offset = true;

while global.equipable[select] {
	select = irandom(equipable_count);
	attempts++;
	
	if(attempts >= equipable_count * 2){
		break;
	}
}

global.equipable[select] = true;
image_index = select;

pedestal = -1;