/// @description Insert description here
// You can write your code in this editor
if(sprite_index==skeli_pophead){
	state = "aim";
	alarm_set(8,aimtime);
}
if(sprite_index==skeli_pickup){
	state = "chase";
	with(skullt){
		instance_destroy();
		skullt = noone;
	}
}