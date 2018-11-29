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
	
	case "debug_overlay":
		db_overlay = !db_overlay;
		show_debug_overlay(db_overlay);
	break;
	
	case "get_mouse_coords":
		console_text += "(" + string(mouse_x) + "," + string(mouse_y) + ")\n";
		
	break;
	
	case "instance_get_id_closest":
		#region Command
		args = scr_string_split(arguments_string,",");
		
		if(array_length_1d(args) != 1){
			console_text += "Incorrect number of arguments.\n";
			break;
		}
		
		console_text += string(args[0]) +"\n";
		var obj = instance_nearest(mouse_x,mouse_y,asset_get_index(args[0]));
		if(obj != noone){
			console_text += "requested instance id:" + string(obj.id) +"\n";
		}
		else{
			console_text += "#object not found# \n";
		}
		#endregion
	break;
	
	case "create_instance":
		#region Command
		args =  scr_string_split(arguments_string,",");
		
		if(array_length_1d(args) != 3){
			console_text += "Incorrect number of arguments.\n";
			break;
		}
		
		instance_create_layer(real(args[0]),real(args[1]),"Instances", asset_get_index(args[2]));
		#endregion
	break;
	
	case "repeat":
		#region Command
		var comma       = string_pos(",",arguments_string);
		var n           = real(string_copy(arguments_string, 0, comma-1));
		var arg_command = string_copy(arguments_string, comma+1, string_length(arguments_string)-(comma));
		console_text += arg_command + "\n";	
		repeat(n){
			scr_console_execute_command(arg_command);
		}
		#endregion
	break;
	
	case "list_macros":
		var list = scr_console_macros(0);
		console_text += list + "\n";
	break;
	
	case "create_instance_at_cursor":
		#region Command
		args = scr_string_split(arguments_string,",");
		
		if(array_length_1d(args) != 1){
			console_text += "Incorrect number of arguments.\n";
			break;
		}
		
		var inst = instance_create_layer(mouse_x,mouse_y,"Instances", asset_get_index(args[0]));
		
		if(inst != noone and instance_exists(inst)){
			console_text += "Created instance " + string(inst.id) + ".";
		}
		#endregion
	break;
	
	case "pause":
		#region Command
		if(obj_ig_menu_controller.state != "debug"){
			obj_ig_menu_controller.state = "debug";
			console_text +="Game is paused!!\n";
		}
		else{
			obj_ig_menu_controller.state = "closed";
			console_text +="Game is not paused!!\n";
		}
		#endregion
	break;
	
	case "killall_active":
		#region Command
		var n = ds_list_size(global.act_enemy_list);
		repeat(n){
			var inst = ds_list_find_value(global.act_enemy_list, 0);
			with(inst){
				instance_destroy();
			}
			ds_list_delete(global.act_enemy_list,0);
		}
		console_text +="Killed " + string(n) + " enemie(s)\n";
		#endregion
	break;
	
	case "entity_stat_set":
		#region Command
		args = scr_string_split(arguments_string,",");
		
		if(array_length_1d(args) != 3){
			console_text += "Incorrect number of arguments.\n";
			break;
		}
		
		var trg = args[0];
		
		if(string_char_at(trg,0) == "o"){
			trg = asset_get_index(trg);
		}else {
			trg = int64(trg);
		}
		
		var stt = int64(args[1]);
		
		if(stt > 8){
			console_text += "Stat must be an int between 0 and 8.\n";
			break;
		}
		
		var val = real(args[2]);
		
		if(instance_exists(trg)){
			if((trg  < 100000 and not object_is_ancestor(trg,obj_entity_parent)) ||
			   (trg >= 100000 and not object_is_ancestor(trg.object_index,obj_entity_parent))){
				console_text += "The instance or type of entity specified is not an entity.\n";
				break;
			}
			
			with trg {
				stat[stt] = val;
				other.console_text += "Setting stat " + args[1] + 
										" of entity " + string(id) + 
										" to " + string(val) + "\n";
			}
		}else {
			console_text += "The instance or type of entity specified does not exist.\n";
		}
		#endregion
	break;
	
	case "info":
		#region Command
		args = scr_string_split(arguments_string,",");
		
		if(array_length_1d(args) != 1){
			console_text += "Incorrect number of arguments.\n";
			break;
		}
		
		scr_console_info(args[0]);
		#endregion
	break;
	
	case "create_item_at_cursor":
		#region Command
		args = scr_string_split(arguments_string,",");
		
		if(array_length_1d(args) != 3){
			console_text += "Incorrect number of arguments.\n";
			break;
		}
		
		var type = int64(args[0]);
		
		if(type >= item_type.count){
			console_text += "Non-existent item type.\n";
			break;
		}
		
		var item = int64(args[1]);
		
		if(item >= scr_item_type_count_items(type)){
			console_text += "Non-existent item.\n";
			break;
		}
		
		var amnt = int64(args[2]);
		
		if(amnt <= 0){
			console_text += "Amount should be more than 0.\n";
			break;
		}
		
		var inst = scr_spawn_item(type,item,amnt,mouse_x,mouse_y,true,0);
		
		console_text += "Item created - " + string(inst);
		#endregion
	break;
	
	case "list_items":
		#region Command
		args = scr_string_split(arguments_string,",");
		
		if(array_length_1d(args) != 1){
			console_text += "Incorrect number of arguments.\n";
			break;
		}
		
		var type = int64(args[0]);
		
		var n = scr_item_type_count_items(type);
		
		for(var i = 0; i < n; i++){
			console_text += string(i) + " - " + scr_item_get_name(type,i,0) + "\n";
		}
		#endregion
	break;
	
	case "activate_enemy":
		#region Command
			args = scr_string_split(arguments_string,",");
		
			if(array_length_1d(args) != 1){
				console_text += "Incorrect number of arguments.\n";
				break;
			}
			
			var iid = int64(args[0]);
			
			if(instance_exists(iid) and
			   ((iid >= 100000 and is_descended(iid.object_index, obj_enemy_parent)) or
				(iid  < 100000 and is_descended(iid,obj_enemy_parent)              ))){
				with iid {
					alarm[0] = 0.5 * room_speed;
					
					scr_add_to_active_list();
				}
			}
		#endregion
	break;
	
	case "instance_get_var":
	case "instance_set_var":
		#region Command
		args = scr_string_split(arguments_string,",");
		
		var c = (command == "instance_set_var");
		
		if((not c and array_length_1d(args) != 2) or (c and array_length_1d(args) != 3)){
			console_text += "Incorrect number of arguments.\n";
			break;
		}
			
		var iid = int64(args[0]);
		
		if(!instance_exists(iid)){
			console_text += "Instance does not exist.\n";
			break;
		}
		
		if(!variable_instance_exists(iid,args[1])){
			console_text += "The instance does not have this variable.\n";
			break;
		}
		
		if(c){
			variable_instance_set(iid,args[1],scr_parse_string(args[2]));
		}
		
		console_text += "Id: " + args[0] + " Var: " + args[1] + " Val: " + string(variable_instance_get(iid,args[1])) + "\n";
		#endregion
	break;
	
	case "instance_track_var":
		#region Command
		args = scr_string_split(arguments_string,",");
		
		if(array_length_1d(args) != 2){
			console_text += "Incorrect number of arguments.\n";
			break;
		}
			
		var iid = int64(args[0]);
		
		if(!instance_exists(iid)){
			console_text += "Instance does not exist.\n";
			break;
		}
		
		if(!variable_instance_exists(iid,args[1])){
			console_text += "The instance does not have this variable.\n";
			break;
		}
		
		with(obj_window_controller){
			var fnd = noone;
				
			#region Try to find a tracker
			with(obj_wnd_inst_track_vars){
				if(tr_inst == iid){
					fnd = id;
				}
			}
			#endregion
				
			if(fnd == noone){ //If none was found
				#region Create a tracker
				var inst = scr_window_create(obj_wnd_inst_track_vars);
				
				with(inst){
					tr_inst = iid;
					ds_list_add(tr_vars, args[1]);
					tr_cnt++;
					x = obj_cursor.x;
					y = obj_cursor.y;
				}
				#endregion
			}else {
				#region Add var to tracker
				if(ds_list_find_index(fnd.tr_vars,args[1]) != -1){
					other.console_text += "Variable is already being tracked.";
				}else {
					ds_list_add(fnd.tr_vars,args[1]);
					fnd.tr_cnt++;
					fnd.alarm[0] = -1;
				}
				#endregion
			}
		}
		#endregion
	break;
	
	case "instance_untrack_var":
		#region Command
		args = scr_string_split(arguments_string,",");
		
		if(array_length_1d(args) != 2){
			console_text += "Incorrect number of arguments.\n";
			break;
		}
			
		var iid = int64(args[0]);
		
		if(!instance_exists(iid)){
			console_text += "Instance does not exist.\n";
			break;
		}
		
		if(!variable_instance_exists(iid,args[1])){
			console_text += "The instance does not have this variable.\n";
			break;
		}
		
		var wnd = noone;
		
		with(obj_wnd_inst_track_vars){
			if(tr_inst == iid){
				wnd = id;
			}
		}
		
		if(wnd == noone){
			console_text += "No tracker exists for this instance.\n";
			break;
		}
		
		with(wnd){
			if(ds_list_find_index(tr_vars,args[1]) != -1){
				ds_list_delete(tr_vars,args[1]);
				other.console_text += "The variable has been untracked.";
			}else {
				other.console_text += "The variable is not being tracked.";
			}
		}
		
		#endregion
	break;
	
	case "check_controller":
		obj_input_controller.check_controller = true;
		console_text +="Checking Controller connection:\n";
	break;
}

scr_scroll2max();