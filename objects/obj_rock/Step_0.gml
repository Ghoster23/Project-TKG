if(place_meeting(x,y,obj_explosion_damage)){
	exploded = true;
}

if exploded {
	var explosion = instance_nearest(x,y,obj_explosion);
	explosiondir=point_direction(explosion.x,explosion.y,x,y);
	scr_sound(snd_hit_barrel);
    alarm[0]=0.04*room_speed;
	die=true;
	flash=true;
}