if(global.key_active[key_id.menu] or
   scr_GUI_button(hc-17*m,creatures_y1+creatures_height+18*m,hc+17*m,creatures_y1+creatures_height+28*m)){
	instance_create_layer(x,y,layer,obj_options_controller);
	instance_destroy();
}

mousex = obj_cursor.x;
mousey = obj_cursor.y;

if global.key_active[key_id.m_click] {
	offx=c-63*m;
	
	if mousex > offx+0 and mousex <offx+7*m {
		level = 0;
	}
	else if mousex > offx+7*m and mousex <= offx+18*m    {
		level = 1;
	}
	else if mousex > offx+18*m and mousex <= offx+30*m   {
		level = 2;
	}
	else if mousex > offx+30*m and mousex <= offx+42*m   {
		level = 3;
	}
	else if mousex > offx+42*m and mousex <= offx+54*m   {
		level = 4;
	}
	else if mousex > offx+54*m and mousex <= offx+66*m   {
		level = 5;
	}
	else if mousex > offx+66*m and mousex <= offx+78*m   {
		level = 6;
	}
	else if mousex > offx+78*m and mousex <= offx+90*m   {
		level = 7;
	}
	else if mousex > offx+90*m and mousex <= offx+102*m  {
		level = 8;
	}
	else if mousex > offx+102*m and mousex <= offx+114*m {
		level = 9;
	}
	else if mousex > offx+114*m and mousex <= offx+125*m {
		level = 10;
	}
	else {
		level = "none";
	}
	
	if mousey > master_y1+(master_height) and mousey < (master_y1+(master_height)+12*m) and level != "none"    {
		global.masterVolume = scr_volume("b",level);
		audio_master_gain(global.masterVolume);
		show_debug_message("mastervolume level: "+string(level));
	}
	else if mousey > (music_y1+(music_height)) and mousey < (music_y1+(music_height)+12*m) and level != "none" {
		global.musicVolume  = scr_volume("b",level);
		audio_group_set_gain(ag_music,global.musicVolume,0);
		show_debug_message("musicvolume level: "+string(level));
	}
	else if mousey > (effects_y1+(effects_height)) and mousey < (effects_y1+(effects_height)+12*m) and level != "none" {
		global.effectsVolume=scr_volume("b",level);
		audio_group_set_gain(ag_soundfx,global.effectsVolume,0);
		show_debug_message("effectsvolume level: "+string(level));
	}
	else if mousey > (ambient_y1+(ambient_height)) and mousey < (ambient_y1+(ambient_height)+12*m) and level != "none" {
		global.ambientVolume = scr_volume("b",level);
		audio_group_set_gain(ag_ambient,global.ambientVolume,0);
		show_debug_message("ambientvolume level: "+string(level));
	}
	else if mousey > (creatures_y1+(creatures_height)) and mousey < (creatures_y1+(creatures_height)+12*m) and level != "none" {
		global.creatureNoise = scr_volume("b",level);
		audio_group_set_gain(ag_creatures,global.creatureNoise,0);
		show_debug_message("creaturenoise level: "+string(level));
	}
}

switch state {

	case "master":
		if global.key_active[key_id.m_left]  {
			global.masterVolume = scr_limmit(global.masterVolume-0.2,0,2);
		}
		if global.key_active[key_id.m_right] {
			global.masterVolume = scr_limmit(global.masterVolume+0.2,0,2);
		}
		if global.key_active[key_id.m_up]  {
			state = "music";
		}
		if global.key_active[key_id.m_up]    {
			state = "creatures";
		}
		break;
	
	case "music":
		if global.key_active[key_id.m_left]  {
			global.musicVolume = scr_limmit(global.musicVolume-0.2,0,2);
		}
		if global.key_active[key_id.m_right] {
			global.musicVolume = scr_limmit(global.musicVolume+0.2,0,2);
		}
		if global.key_active[key_id.m_up]  {
			state = "effects";
		}
		if global.key_active[key_id.m_up]    {
			state = "master";
		}
		break;
	
	case "effects":
		if global.key_active[key_id.m_left]  {
			global.effectsVolume = scr_limmit(global.effectsVolume-0.2,0,2);
		}
		if global.key_active[key_id.m_right] {
			global.effectsVolume = scr_limmit(global.effectsVolume+0.2,0,2);
		}
		if global.key_active[key_id.m_up]  {
			state = "ambient";
		}
		if global.key_active[key_id.m_up]    {
			state = "music";
		}
		break;
	
	case "ambient":
		if global.key_active[key_id.m_left]  {
			global.ambientVolume = scr_limmit(global.ambientVolume-0.2,0,2);
		}
		if global.key_active[key_id.m_right] {
			global.ambientVolume = scr_limmit(global.ambientVolume+0.2,0,2);
		}
		if global.key_active[key_id.m_up]  {
			state = "creatures";
		}
		if global.key_active[key_id.m_up]    {
			state = "effects";
		}
		break;
		
	case "creatures":
		if global.key_active[key_id.m_left]  {
			global.creatureNoise = scr_limmit(global.creatureNoise-0.2,0,2);
		}
		if global.key_active[key_id.m_right] {
			global.creatureNoise = scr_limmit(global.creatureNoise+0.2,0,2);
		}
		if global.key_active[key_id.m_up]  {
			state = "master";
		}
		if global.key_active[key_id.m_up]    {
			state = "ambient";
		}
		break;
}

if point_in_rectangle(mousex,mousey,master_x1,master_y1,master_x2,master_y2)             {
	state = "master";
}
if point_in_rectangle(mousex,mousey,music_x1,music_y1,music_x2,music_y2)                 {
	state = "music";
}
if point_in_rectangle(mousex,mousey,effects_x1,effects_y1,effects_x2,effects_y2)         {
	state = "effects";
}
if point_in_rectangle(mousex,mousey,ambient_x1,ambient_y1,ambient_x2,ambient_y2)         {
	state = "ambient";
}
if point_in_rectangle(mousex,mousey,creatures_x1,creatures_y1,creatures_x2,creatures_y2) {
	state = "creatures";
}