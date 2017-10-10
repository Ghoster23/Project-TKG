var j = 0;

for(var i = 0; i < 16; i++){
	if global.equiped[i] {
		if j <= 6{
			draw_sprite(spr_equip,i,x+48*j,y);
			j++;
		}else {
			draw_sprite(spr_equip,i,x+48*(j-7),y+48);
			j++;
		}
	}
}