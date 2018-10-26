switch state{

	case "play":
		if !instance_exists(obj_pointer){
			instance_create_layer(303,267,"Instances",obj_pointer);
		}
		else{
			obj_pointer.x=303;
			obj_pointer.y=267;
		}
		if scr_GUI_button(305 * global.cam_ratio, 258 * global.cam_ratio,
						  (342-305) * global.cam_ratio, (275-258) * global.cam_ratio) or
						  global.key_active[key_id.m_confirm]{
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
		if scr_GUI_button(294 * global.cam_ratio, 289 * global.cam_ratio,
						  (354-294) * global.cam_ratio, (306-289) * global.cam_ratio) or
						  global.key_active[key_id.m_confirm]{
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
		if scr_GUI_button(304 * global.cam_ratio,323 * global.cam_ratio,
						  (338-304) * global.cam_ratio, (337-323) * global.cam_ratio) or
						  global.key_active[key_id.m_confirm] {
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