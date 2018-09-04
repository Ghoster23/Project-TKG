if (global.key_active[key_id.menu] or 
	scr_GUI_button(hc-17*m,hc+17*m,controls_width+20*m,controls_height+30*m)){
	instance_activate_object(obj_menu);
	var thislayer = layer_background_get_id("buttons");
	layer_background_visible(thislayer,true);
	alarm[3]=0.2*room_speed;
	
	var thislayer = layer_background_get_id("blackout");
	layer_background_visible(thislayer,false);
}

switch state {

	case "audio":
		if(scr_GUI_button(audio_x1,audio_y1,audio_width,audio_height) or 
		global.key_active[key_id.m_confirm]){
			alarm[0] = room_speed * 0.2;
		}
		if global.key_active[key_id.m_down] {
			state = "video";
		}
		if global.key_active[key_id.m_up]   {
			state = "controls";
		}
	break;
	
	case "video":
		if(scr_GUI_button(video_x1,video_y1,video_width,video_height) or 
		global.key_active[key_id.m_confirm]){
			alarm[1] = room_speed * 0.2;
		}
		if global.key_active[key_id.m_down] {
			state = "controls";
		}
		if global.key_active[key_id.m_up]   {
			state = "audio";
		}
	break;
	
	case "controls":
		if(scr_GUI_button(controls_x1,controls_y1,controls_width,controls_height) or 
			global.key_active[key_id.m_confirm]){
			alarm[2] = room_speed * 0.2;
		}
		if global.key_active[key_id.m_down] {
			state = "audio";
		}
		if global.key_active[key_id.m_up]   {
			state = "video";
		}
	break;

}


if scr_GUI_h_button_check(audio_x1,audio_y1,audio_width,audio_height) != 0{
	state = "audio";
}
if scr_GUI_h_button_check(video_x1,video_y1,video_width,video_height) != 0{
	state = "video";
}
if scr_GUI_h_button_check(controls_x1,controls_y1,controls_width,controls_height) != 0{
	state = "controls";
}