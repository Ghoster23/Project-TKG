input = false;

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
	
	/*if(global.key_active[i]){
		text += scr_keyname(bind) + "\n";
	}*/
}

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