//lock until macro is pressed
if !(keyboard_lastkey != vk_lcontrol and keyboard_check_pressed(vk_anykey)){
	return;
}

// ||\\//|| MACRO LIST ||\\//|| (this is the only thing you need to edit) 
var macros = ds_map_create();

ds_map_add(macros, vk_backspace, "clear()");
ds_map_add(macros, ord("Q"),     "quit()");
ds_map_add(macros, ord("K"),     "killall_active()");


//print the list of programmed macros
if(argument_count != 0){
	if(argument[0] == 0){
		
		//print list
		var list = "";			
		
		var _next = ds_map_find_first( macros );

		while ( !is_undefined( _next ) ) {
			var _string = scr_keyname(_next ) + " -> " + string( macros[? _next ] );
			list += _string + "\n";

			_next = ds_map_find_next( macros, _next );
		}
		ds_map_destroy(macros);
		return list;
	}
}

//execute desired macro
var command_string = macros[? keyboard_lastkey];
if(is_undefined(command_string)){
	console_text += "No macro registered for keycode: " + scr_keyname(keyboard_lastkey) + "\n";
	scr_scroll2max();
}
else{
	scr_console_execute_command(command_string);
}

ds_map_destroy(macros);