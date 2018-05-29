var npc = argument0

//handle voices

switch npc{
	case "Adam":
		var snd=snd_vocal1;
	break;
	
	case "jason":
		var snd=snd_vocal2;
	break;
	case "luna":
		var snd = snd_vocal3;
	break;
	default:
		var snd=snd_vocal2;
	break;

}


//play sounds
if audio_is_playing(snd){
	audio_stop_sound(snd);
}

var pitch=random_range(1, 1.1);
var ind=irandom_range(0,6);

sound_id=audio_play_sound(snd,1,false);
audio_sound_set_track_position(sound_id,ind);
audio_sound_pitch(sound_id,pitch);

return snd;

