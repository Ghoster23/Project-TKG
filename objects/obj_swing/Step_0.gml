//follow the player for the duration of its life span
x += obj_body.hspd;
y += obj_body.vspd;


//knockback
if image_index = 1{
    instance_create_layer(x,y,layer,obj_kb);
}

if image_index = 3 {
    
    with(obj_kb){
        instance_destroy();
    }
	
	instance_destroy();
}
//sounds for hittin stuff

//hitting rocks
if place_meeting(x,y,obj_rock){
	if !audio_is_playing(snd_hit_rock){
		scr_sound(snd_hit_rock);
	}
}
//hitting down wall
if place_meeting(x,y,obj_wall_down) and obj_head.image_index==0{
	if !audio_is_playing(snd_hit_wall){
		scr_sound(snd_hit_wall);
	}
}
//hitting right wall
if place_meeting(x,y,obj_wall_right) and obj_head.image_index==1{
	if !audio_is_playing(snd_hit_wall){
		scr_sound(snd_hit_wall);
	}
}
//hitting up wall
if place_meeting(x,y,obj_wall_up) and obj_head.image_index==2{
	if !audio_is_playing(snd_hit_wall){
		scr_sound(snd_hit_wall);
	}
}
//hitting left wall
if place_meeting(x,y,obj_wall_left) and obj_head.image_index==3{
	if !audio_is_playing(snd_hit_wall){
		scr_sound(snd_hit_wall);
	}
}
