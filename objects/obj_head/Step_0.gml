sprite_index = global.char_hsprs[global.char];

//find if there is a torch

if instance_exists(obj_torch){
	
	var torch = noone;  //Clear initial closest object
	var c_dis = 600; //Maximum distance to check

	with (obj_torch) {
		if (lit == true) {
			var dis = point_distance(x, y, other.x, other.y);
			if (dis < c_dis) {
				torch = id;
				c_dis = dis;
			}
		}
	}

	//handle the sound
	var distan_max=200;
	var distan=distance_to_object(torch);

	if distan > distan_max{		//if player is too far away
		if audio_is_playing(snd_torch){
			audio_pause_sound(snd_torch);
		}
	}
	else{		//if player is close
		if !audio_is_playing(snd_torch){
			audio_play_sound(snd_torch,1,true);
		}
		if audio_is_paused(snd_torch){
			audio_resume_sound(snd_torch);
		}
		//handle the falloff
		var vol = (distan_max - distan)/distan;
		audio_sound_gain(snd_torch,vol,0)
	
	}
}