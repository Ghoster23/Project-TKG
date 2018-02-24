scr_get_input();

if menu_key or (point_in_rectangle(mousex,mousey,c-17*m,controls_y1+controls_height+18*m,c+17*m,controls_y1+controls_height+28*m) and mouse_click){
	instance_activate_object(obj_menu);
	var thislayer = layer_background_get_id("buttons");
	layer_background_visible(thislayer,true);
	alarm[3]=0.2*room_speed;
	
	var thislayer = layer_background_get_id("blackout");
	layer_background_visible(thislayer,false);
}

switch state {

	case "audio":
		if (mouse_click and point_in_rectangle(mousex,mousey,audio_x1,audio_y1,audio_x2,audio_y2)) or enter_key {
			alarm[0] = room_speed*0.2;
		}
		if a_down {
			state = "video";
		}
		if a_up   {
			state = "controls";
		}
		break;
	
	case "video":
		if (mouse_click and point_in_rectangle(mousex,mousey,video_x1,video_y1,video_x2,video_y2)) or enter_key {
			alarm[1] = room_speed*0.2;
		}
		if a_down {
			state = "controls";
		}
		if a_up   {
			state = "audio";
		}
		break;
	
	case "controls":
		if (mouse_click and point_in_rectangle(mousex,mousey,controls_x1,controls_y1,controls_x2,controls_y2)) or enter_key {
			alarm[2] = room_speed*0.2;
		}
		if a_down {
			state = "audio";
		}
		if a_up   {
			state = "video";
		}
		break;

}


if point_in_rectangle(mousex,mousey,audio_x1,audio_y1,audio_x2,audio_y2) {
	state = "audio";
}
if point_in_rectangle(mousex,mousey,video_x1,video_y1,video_x2,video_y2) {
	state = "video";
}
if point_in_rectangle(mousex,mousey,controls_x1,controls_y1,controls_x2,controls_y2) {
	state = "controls";
}