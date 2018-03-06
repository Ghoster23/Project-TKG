event_inherited();

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

type   = item_type.equipable;
item   = irandom(equips.count);
amount = 1;

while global.equipable[item] {
	item = irandom(equips.count);
	attempts++;
	
	if(attempts >= equips.count * 2){
		break;
	}
}

global.equipable[item] = true;

image_index = item;

pedestal = -1;