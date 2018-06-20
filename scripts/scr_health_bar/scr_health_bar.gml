{
var hp = global.body.stat[stats.hp];
var ar = global.body.stat[stats.arm];


var hw = sprite_get_width(spr_HUD_heart);
var hh = sprite_get_height(spr_HUD_heart);

var hi = 0;

for(var i = 0; i < global.body.stat[stats.mhp] div 4; i++){
	var ch = 0;
	
	if       hp >= 4 {
		ch = 4;
			
	}else if hp >  0 {
		ch = hp;
			
	}else if hp == 0 {
		ch = 0;
			
	}
		
	draw_sprite_ext(spr_HUD_heart,  ch, xx + (i * hw) * m, yy div 4 - (hh div 2) * m, m, m, 0, c_white, 1);
	
	hp -= ch;
	hi  = i;
}

for(var i = 0; i < global.body.stat[stats.arm]; i++){	
	draw_sprite_ext(spr_HUD_armor,  ch, xx + (i * hw) * m, yy div 4 - (hh div 2) * m, m, m, 0, c_white, 1);
	
	hp -= ch;
}
}