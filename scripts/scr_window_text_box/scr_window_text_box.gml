///@argument x1
///@argument y1
///@argument x2
///@argument y2
///@argument max_char
///@argument xscale_optional
///@argument yscale_optional
{
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;

var max_char = argument4;

var xs = 1;
if(argument_count > 5){ xs = argument[5]; }

var ys = 1;
if(argument_count > 6){ ys = argument[6]; }

draw_rectangle(x1, y1, x2, y2, true);

switch input_state {
	case 0:
		if(scr_window_button(x1, y1, x2, y2,"",xs,ys)){
			input_state = !input_state;
			keyboard_string = text;
		}
	break;
	
	case 1:
		if(string_length(keyboard_string) < max_char){
			text = keyboard_string;
		}
		
		if(scr_clicked_out(x1, y1, x2, y2)){
			input_state = !input_state;
			keyboard_string = "";
		}
	break;
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);
		
draw_text_transformed( x1, y1, text, xs, ys, 0);
}