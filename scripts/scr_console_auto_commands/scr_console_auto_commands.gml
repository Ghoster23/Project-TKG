str_bit = argument0;
var j = 0;
var biggest_w = string_width(command_list[0]);

auto_commands = -1;

for(var i = 0; i < number_of_commands; i++){
	
	if(string_width(command_list[i]) > biggest_w){
		biggest_w = string_width(command_list[i]);
	}
	
	if(string_count(str_bit, command_list[i]) != 0){
		auto_commands[j] = command_list[i];
		j++;
	}
}

auto_i = 0;
auto_commands_n = array_length_1d(auto_commands);

auto_popup_height = (auto_commands_n * string_height("Aa")) ;
auto_popup_width = biggest_w + text_padding*2;