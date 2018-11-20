{
var err_id = argument0;
var err_sc = argument1;
var err_pr = argument2;

var err_tx = "";

err_tx += " -- " + string(object_get_name(object_index)) + " " + string(id) + " --\n";
err_tx += " -- Event Type: " + string(event_type) + " Event SubType: " + string(event_number) + " --\n";

if(err_sc){ err_tx += " -- In script " + string(err_pr[0]) + " --\n"; }

var i = 0 + err_sc;

switch(err_id){
	case 0: //Argument count
		err_tx += err_pr[i] + " must receive ";
		i++;
		
		if(is_array(err_pr[i])){
			err_tx += string(err_pr[i,0]) + " to " + string(err_pr[i,1]);
		}else {
			err_tx += string(err_pr[i]);
		}
		
		err_tx += "argument(s).";
	break;
	
	case 1: //Object dependency
		err_tx += "No instance of " + err_pr[i] + " exists.";
	break;
}

err_tx += "\n";

obj_console.console_text += err_tx;
}