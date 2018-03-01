{
var j = 0;

for(var i = 0; i < 8; i++){
	var t      = global.status[i,0];
	var prev_t = global.status[i,1];
	var spr    = global.status[i,2];
	
	var sw = sprite_get_width(spr);
	var sh = sprite_get_height(spr);
	
	if(t){
		draw_sprite_ext(spr, 13 - 13 * (t / prev_t), xx + (j * sw) * m, yy div 2 - (sh div 2) * m, m, m, 0, c_white, 1);
		j++;
	}
}
}