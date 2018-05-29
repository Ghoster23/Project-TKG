/// @description Insert description here
// You can write your code in this editor
if(room==rm_menu_1 and !audio_is_playing(music_gauntlet)){
	audio_play_sound(music_gauntlet,1000,true);
}

if(room==rm_level and audio_is_playing(music_gauntlet)){
	alarm_set(0,5*room_speed);	
	audio_sound_gain(music_gauntlet, 0, 5*room_speed);
}
if(room==rm_level){
	/*if(!audio_is_playing(snd_torch)){
		audio_play_sound(snd_torch,1,true);
	}
		
	
	with(global.body){
		var torch =  instance_nearest(x,y,obj_torch);
		var torchdist = distance_to_object(torch);
		var fire = instance_nearest(x,y,obj_blue_mage_fire)
		var firedist = distance_to_object(torch);
		if((torchdist < 200 and torch.lit == true) or (firedist <200 and fire.on==true)){
			audio_sound_gain(snd_torch, fire_dis, 5*room_speed);
		}
		else{
			audio_sound_gain(snd_torch, 0, 5*room_speed);
		}
	}*/
}
