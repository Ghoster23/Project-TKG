if place_meeting(x,y,obj_swing){
    alarm[0]=0.02*room_speed;
	flash=true;
}
if place_meeting(x,y,obj_explosion){
	scr_sound(snd_hit_barrel);
    alarm[0]=0.04*room_speed;
	die=true;
	flash=true;
}