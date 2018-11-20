///@param command_string

var command_string = argument0;

var command = "";
var arguments_string = "";
var len = string_length(command_string);

for(var i = 0; i <= len; i++){
	
	if(string_char_at(command_string,i) == "?"){
		
		command = string_copy(command_string,0,i-1);
		scr_console_command_help(command);
		scr_scroll2max();
		exit;
		
	}
	
	if(string_char_at(command_string,i) == "("){
		
		command = string_copy(command_string,0,i-1);
		arguments_string = string_copy(command_string,i+1,len-(i+1));
		break;
		
	}
}

console_text += command_string + "\n";

var args;

switch(command){

	default:
		console_text += "#Command does not exist#\n"; 
	break;
	
	case "nada":
	break;

	case "quit":
		game_end();
	break;
	
	case "restart":
		room_restart();
	break;
	
	case "clear":
		console_text = "";
	break;
	
	
	case "get_mouse_coords":
		console_text += "(" + string(mouse_x) + "," + string(mouse_y) + ")\n";
		
	break;
	
	case "get_closest_id":
		args =  scr_string_split(arguments_string,",");
		console_text += string(args[0]) +"\n";
		var obj = instance_nearest(mouse_x,mouse_y,asset_get_index(args[0]));
		if(obj != noone){
			console_text += "requested instance id:" + string(obj.id) +"\n";
		}
		else{
			console_text += "#object not found# \n";
		}
		
	break;
	
	case "create_instance":
		args =  scr_string_split(arguments_string,",");
		instance_create_layer(real(args[0]),real(args[1]),"Instances", asset_get_index(args[2]));
	break;
	
	case "repeat":
		var comma       = string_pos(",",arguments_string);
		var n           = real(string_copy(arguments_string, 0, comma-1));
		var arg_command = string_copy(arguments_string, comma+1, string_length(arguments_string)-(comma));
		console_text += arg_command + "\n";	
		repeat(n){
			scr_console_execute_command(arg_command);
		}
		
	break;
	
	
	case "list_macros":
		var list = scr_console_macros(0);
		console_text += list + "\n";
	break;
	
	case "create_instance_at_cursor":
		args =  scr_string_split(arguments_string,",");
		instance_create_layer(mouse_x,mouse_y,"Instances", asset_get_index(args[0]));
	break;
	
	case "pause":
		if(obj_ig_menu_controller.state != "debug"){
			obj_ig_menu_controller.state = "debug";
			console_text +="Game is paused!!\n";
		}
		else{
			obj_ig_menu_controller.state = "closed";
			console_text +="Game is not paused!!\n";
		}
		
	break;
	
	case "killall_active":
	
		var n = ds_list_size(global.act_enemy_list);
		repeat(n){
			var inst = ds_list_find_value(global.act_enemy_list, 0);
			with(inst){
				instance_destroy();
			}
			ds_list_delete(global.act_enemy_list,0);
		}
		console_text +="Killed " + string(n) + " enemie(s)\n";
		
	break;
	
}

scr_scroll2max();



