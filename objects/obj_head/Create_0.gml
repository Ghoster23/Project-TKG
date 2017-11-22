scr_get_input();

upH = shader_get_uniform(sh_outline,"pH");
upW = shader_get_uniform(sh_outline,"pW");
texelW = texture_get_texel_width(sprite_get_texture(sprite_index,0));
texelH = texture_get_texel_width(sprite_get_texture(sprite_index,0));

flash=false;
offset = true;
offs = 17;

//play torch sound
if !audio_is_playing(snd_dungeon){
	audio_play_sound(snd_dungeon,1,true);
}

sprite_index = global.char_hsprs[global.char];