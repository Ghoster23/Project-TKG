{
var j = 0;
var st_count = global.body.status_count;
var st_list  = global.body.status_list;

for(var i = 0; i < st_count; i++){
	var entry = st_list[| i];
	
	var status = entry[0];
	var count  = entry[1];
	var spr    = status_spr[status];
	
	var sw = sprite_get_width(spr);
	var sh = sprite_get_height(spr);
	
	if(t){
		draw_sprite_ext(spr, 13 - 13 * (t / prev_t), xx + (j * sw) * m, yy div 2 - (sh div 2) * m, m, m, 0, c_white, 1);
		j++;
	}
}
}