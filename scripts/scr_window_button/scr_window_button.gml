///@argument x1
///@argument y1
///@argument x2
///@argument y2
///@argument label
///@argument type_optional
///@argument tparam_optional
///@argument hover_optional
///@argument hparam_optional
///@argument xscale_optional
///@argument yscale_optional
{
if(argument_count < 5){ return; }

var x1 = argument[0];
var y1 = argument[1];
var x2 = argument[2];
var y2 = argument[3];

var label = argument[4];

var type = bt_type;
if(argument_count > 5){
	type = argument[5];
}

var tparam = bt_tparam;
if(argument_count > 6){
	tparam = argument[6];
}

var hover = bt_hover;
if(argument_count > 7){
	hover = argument[7];
}

var hparam = bt_hparam;
if(argument_count > 8){
	hparam = argument[8];
}

var xs = 1;
if(argument_count > 9){
	xs = argument[9];
}

var ys = 1;
if(argument_count > 10){
	ys = argument[10];
}

var res = 0;
var hov = false;

if(point_in_rectangle(obj_cursor.x,obj_cursor.y,x1,y1,x2,y2)){	
	if(mouse_check_button_released(mb_left)){
		res = 1;
	}
	hov = true;
}

#region Hover Begin
if(hov){
	switch hover {
		case 0: //Basic
			draw_set_alpha(hparam);
		break;
		
		case 1: //Outline
			switch type {
				case 0:
				break;
				
				case 1:
					outline_start(3, hparam, tparam);
				break;
				
				case 2:
					outline_start(3, hparam, tparam);
				break;
			}
		break;
		
		case 2:
			gpu_set_blendenable(false)
			gpu_set_colorwriteenable(false,false,false,true);
		break;
	}
}
#endregion

switch type {
	case 0: //Basic
		if(hover != 1 || not hov){
			draw_set_color(tparam);
			draw_rectangle(x1, y1, x2, y2, false);
			draw_set_color(c_white);
		}else {
			draw_set_color(tparam);
			draw_rectangle(x1, y1, x2, y2, false);
			draw_set_color(hparam);
			draw_rectangle(x1, y1, x2, y2, true);
			draw_set_color(c_white);
		}
	break;
	
	case 1: //Sprite
		draw_sprite_stretched(tparam, -1, 
							  x1 + (x2-x1)/2 - sprite_xoffset + sprite_width  / 2, 
							  y1 + (y2-y1)/2 - sprite_yoffset + sprite_height / 2, 
							  x2 - x1, 
							  y2 - y1);
	break;
	
	case 2: //9SB
		scr_9SB_ext(tparam, x1, y1, x2, y2, xs, ys);
	break;
}

#region Hover End
if(hov){
	switch hover {
		case 0: //Basic
			draw_set_alpha(1);
		break;
		
		case 1: //Outline
			shader_reset();
		break;
		
		case 2: //Draw over
			
		break;
	}
}
#endregion

draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x1 + (x2-x1)/2, y1 + (y2-y1)/2 - 2, label);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

return res;
}