//if check controller was triggered check controllers connected
if(check_controller == true){
	check_controller = false;
	
	global.gamepad = gamepad_is_connected(0);
	if global.gamepad{
		gamepad_set_axis_deadzone(0, 0.3);
		obj_console.console_text += "Gamepad 0 detected\n";
	}
	else{
		obj_console.console_text += "No gamepad detected\n";
	}
}