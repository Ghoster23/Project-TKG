if place_meeting(x,y,obj_swing) or place_meeting(x,y,obj_explosion){
	scr_sound(snd_hit_crate);
    alarm[0]=0.04*room_speed;
	flash=true;
}
