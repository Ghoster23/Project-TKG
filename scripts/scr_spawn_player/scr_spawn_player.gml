{
var xx = argument0;
var yy = argument1;

var lr = argument2;

var pl = instance_create_layer(xx,yy,lr,global.body);
array_copy(pl.stat,0,global.p_stats,0,stats.count);
pl.prev_hp = pl.stat[stats.hp];
}