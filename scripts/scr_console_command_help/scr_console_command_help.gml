var command = argument0; 

var len = array_length_1d(command_list);

for(var i  = 0; i< len; i++){
	if(command_list[i] == command){
		console_text += "help: " + command_help[i] + "\n"
		exit;
	}
}

console_text += "#Cannot get help because command does not exist#\n"