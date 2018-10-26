{
var ar = argument0;
var lc = argument1;
var lr = argument2;

if(is_array(ar)){
	var msg = "[ ";
	
	var len = array_length_1d(ar);
	
	for(var i = 0; i < len; i++){
		var e = ar[i];
		
		if(is_array(e)){
			msg += scr_create_debug_message_array(e,lr,lr);
		}else {
			msg += string(e);
		}
		
		if(i != len - 1){
			msg += "; ";
		}
		
		if(lc){
			msg += "\n";
		}
	}
	
	return msg+"]";
}
}