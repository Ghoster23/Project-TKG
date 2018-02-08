{
var hp = global.hp;

for(var i = 0; i < global.maxhp div 4; i++){
	if(i < 5){
		o = sprite_get_height(spr_heart) + 4;
		
		if hp >= 4{
			draw_sprite_ext(spr_heart,  4,xx + (i * 18.5) * m, yy - o * m, m, m, 0, c_white, 1);
			hp -= 4;
		}else if hp > 0{
			draw_sprite_ext(spr_heart, hp,xx + (i * 18.5) * m, yy - o * m, m, m, 0, c_white, 1);
			hp -= hp;
		}else if hp == 0{
			draw_sprite_ext(spr_heart,  0,xx + (i * 18.5) * m, yy - o * m, m, m, 0, c_white, 1);
		}
	}else {
		var j = i - 5;
		
		if hp >= 4{
			draw_sprite_ext(spr_heart,  4,xx + (j * 18.5) * m, yy, m, m, 0, c_white, 1);
			hp -= 4;
		}else if hp > 0{
			draw_sprite_ext(spr_heart, hp,xx + (j * 18.5) * m, yy, m, m, 0, c_white, 1);
			hp -= hp;
		}else {
			draw_sprite_ext(spr_heart,  0,xx + (j * 18.5) * m, yy, m, m, 0, c_white, 1);
		}
	}
}
}