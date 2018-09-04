{
var str = argument0;

if(!is_string(str)){ return str; }


//show_debug_message("Begin parsing...");

var res;
var i = 0;
var c = string_char_at(str,i);

var v = ord(string_upper(c));

if(v == 45){
	c = string_char_at(str,2);
	v = ord(c);
}

//Is it an array
if(c == "["){
	i+=2;
	c = string_char_at(str,i);
	var j = 0;
	
	//show_debug_message("Array - ");
	
	while(c != "]"){
		var s_str = c;
		i++;
		c = string_char_at(str,i);
			
		while(c != "," && c != "]" && c != ""){
			s_str += c;
			i++;
			c = string_char_at(str,i);
		}
			
		res[j] = scr_parse_string(s_str);
		j++;
		
		if(c == ","){ 
			i++;
			c = string_char_at(str,i);
		}
	}
}
//Is it an asset
else if(65 <= v && v <= 90){
	//show_debug_message("Asset");
	res = asset_get_index(str);
	
	if(res == -1){ res = str; }
}
//Is it a number
else if(48 <= v && v <= 57){
	res = real(str);
}

//show_debug_message("Parsing finished.");
return res;
}