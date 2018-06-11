var b = scr_GUI_h_button(426,232,555,259,-1,false,"",0,0);

if(b){
	image_index=1;
	if(b == 1){
		event_perform_object(obj_charselect_ctrl,ev_keypress,vk_enter);
	}
}
else{
	image_index=0;
}