/// @description Insert description here
// You can write your code in this editor

var view = instance_nearest(x,y,obj_view);

if(view == noone){
	exit;
}

var dis2camera = point_distance(view.x,view.y,x,y);

if(dis2camera <= global.roomwd + 50){
	room_active = true;
}
else{
	room_active = false;
}

radius = base_radius + irandom_range(-5,5);