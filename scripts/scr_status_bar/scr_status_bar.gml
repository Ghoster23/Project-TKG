{
var j = 5;

for(var i = 0; i < 8; i++){
	var t      = global.status[i,0];
	var prev_t = global.status[i,1];
	var spr    = global.status[i,2];
	
	if(t){
		draw_sprite_ext(spr, 13 - 13 * (t / prev_t), xx + ((j) * 18.5) * m, yy - (o + 2) * m, m, m, 0, c_white, 1);
		j++;
	}
}
}