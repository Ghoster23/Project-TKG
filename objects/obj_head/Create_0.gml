scr_get_input();
flash=false;
offset = true;
offs = 17;

//play torch sound
if !audio_is_playing(snd_dungeon){
	audio_play_sound(snd_dungeon,1,true);
}

sprite_index = global.char_hsprs[global.char];