switch state{

	case "play":
		if !instance_exists(obj_pointer){
			instance_create_layer(303,267,"Instances",obj_pointer);
		}
		else{
			obj_pointer.x=303;
			obj_pointer.y=267;
		}
		if scr_GUI_button(305,258,342-305,275-258) or global.key_active[key_id.m_confirm]{
			obj_tittleart.fade = true;
			obj_whiteout.fade  = "out";
			alarm[0]=room_speed*1.5;
		}
		if global.key_active[key_id.m_down]{
			state="options";
		}
		if global.key_active[key_id.m_up]{
			state="quit";
		}
	break;
	
	case "options":
		if !instance_exists(obj_pointer){
			instance_create_layer(291,298,"Instances",obj_pointer);
		}
		else{
			obj_pointer.x=291;
			obj_pointer.y=298;
		}
		if scr_GUI_button(294,289,354-294,306-289) or global.key_active[key_id.m_confirm]{
			alarm[1]=room_speed*0.2;
		}
		if global.key_active[key_id.m_down]{
			state="quit";
		}
		if global.key_active[key_id.m_up]{
			state="play";
		}
	break;
	
	case "quit":
		if !instance_exists(obj_pointer){
			instance_create_layer(303,331,"Instances",obj_pointer);
		}
		else{
			obj_pointer.x=303;
			obj_pointer.y=331;
		}
		if scr_GUI_button(304,323,338-304,337-323) or global.key_active[key_id.m_confirm] {
			alarm[2]=room_speed*0.2;
		}
		if global.key_active[key_id.m_down]{
			state="play";
		}
		if global.key_active[key_id.m_up]{
			state="options";
		}
	break;

}


if scr_GUI_h_button_check(305,258,342-305,275-258) != 0{
	state="play";
}
if scr_GUI_h_button_check(294,289,354-294,306-289) != 0{
	state="options";
}
if scr_GUI_h_button_check(304,323,338-304,337-323) != 0{
	state="quit";
}