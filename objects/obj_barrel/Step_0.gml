/*if place_meeting(x,y,obj_greatswing){
    alarm[0]=0.02*room_speed;
	flash=true;
}*/
if place_meeting(x,y,obj_explosion_damage){
	var explosion = instance_nearest(x,y,obj_explosion);
	explosiondir=point_direction(explosion.x,explosion.y,x,y);
	scr_sound(snd_hit_barrel);
    alarm[0]=0.04*room_speed;
	die=true;
	flash=true;
}