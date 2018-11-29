input = false;
text = "";

if(instance_exists(obj_console) and obj_console.selected){
	for(var i = 0; i < key_id.count; i++){
		global.key_active[i] = false;
	}
	
}else {
	for(var i = 0; i < key_id.count; i++){
		var bind = global.key_binds[i];
	
		if(bind == mb_left || bind == mb_right || bind == mb_middle){
			if(i < key_id.interact){
				global.key_active[i] = mouse_check_button(bind);
			}
			else {
				global.key_active[i] = mouse_check_button_pressed(bind);
			}
		}
		else {
			if(i < key_id.interact){
				global.key_active[i] = keyboard_check(bind);
			}
			else {
				global.key_active[i] = keyboard_check_pressed(bind);
			}
		}
	
		if(global.key_active[i]){
			text += scr_keyname(bind) + "\n";
		}
	}
}

#region Gamepad handling
	if(global.gamepad){

		//since gamepad has been detected check for the eventuallity of being unpplugged
		global.gamepad = gamepad_is_connected(0);
		if(!global.gamepad){
			exit;
		}
	
		//button handling
		global.key_active[key_id.interact] = gamepad_button_check_released(0,gp_face1);     //A
		global.key_active[key_id.consume]  = gamepad_button_check_released(0,gp_face2);     //B
		global.key_active[key_id.utilize]  = gamepad_button_check_released(0,gp_face3);     //Y
		global.key_active[key_id.skill_1]  = gamepad_button_check_released(0,gp_face4);     //X
		
		global.key_active[key_id.skill_2] = gamepad_button_check(0,gp_shoulderl);           //buttonleft
		global.key_active[key_id.skill_1] = gamepad_button_check(0,gp_shoulderr);           //buttonright
		global.key_active[key_id.dash]    = gamepad_button_check(0,gp_shoulderlb) or 
										    gamepad_button_check(0,gp_shoulderrb);          //triggerleft
		
		global.key_active[key_id.inv]  = gamepad_button_check_released(0,gp_select);        //select
		global.key_active[key_id.menu] = gamepad_button_check_released(0,gp_start);         //start
		
		global.key_active[key_id.m_up]      = gamepad_button_check_released(0,gp_padu);     //pad up
		global.key_active[key_id.m_down]    = gamepad_button_check_released(0,gp_padd);     //pad down
		global.key_active[key_id.m_left]    = gamepad_button_check_released(0,gp_padl);     //pad left
		global.key_active[key_id.m_right]   = gamepad_button_check_released(0,gp_padr);     //pad right
		global.key_active[key_id.m_confirm] = gamepad_button_check_released(0,gp_face1);    //confirm
		
		//axis handling
		xaxis = gamepad_axis_value(0,gp_axislh);
		yaxis = gamepad_axis_value(0,gp_axislv);
		if(xaxis > 0){
			global.key_active[key_id.right] = true;
		}
		if(xaxis < 0){
			global.key_active[key_id.left] = true;
		}
		if(yaxis < 0){
			global.key_active[key_id.up] = true;
		}
		if(yaxis > 0){
			global.key_active[key_id.down] = true;
		}
	}
#endregion

if(global.key_active[key_id.right]    ||
   global.key_active[key_id.down]     ||
   global.key_active[key_id.left]     ||
   global.key_active[key_id.up]       ||
   global.key_active[key_id.dash]     ||
   global.key_active[key_id.skill_1]  ||
   global.key_active[key_id.skill_2]  ||
   global.key_active[key_id.consume]  ||
   global.key_active[key_id.utilize]  ||
   global.key_active[key_id.interact] ){
	input = true;
}