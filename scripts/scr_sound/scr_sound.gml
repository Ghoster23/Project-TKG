var snd = argument[irandom(argument_count-1)];
pitch=random_range(1, 1.1);
audio_play_sound(snd,1,false);
audio_sound_pitch(snd,pitch);

//scr_sound(sound1,sound2, etc); //up to 15 sounds