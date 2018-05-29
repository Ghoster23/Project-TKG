  /// @description Insert description here
// You can write your code in this editor

if type=="end"{
	key=real(ds_grid_get(global.dialg_grid, 2,i));
	script=asset_get_index(ds_grid_get(global.dialg_grid, 1,i));
	script_execute(scr_resolves,key);
	instance_destroy();
}
else if type=="line"{
	
	
	if typing==false{
		if answered==true{
			answered=false;
			
			i=tag;
			typing=true;
			npc_name=ds_grid_get(global.dialg_grid, 1,i);
			text=ds_grid_get(global.dialg_grid, 2,i);
			
		}
		else if keyboard_check_pressed(ord("E")) or mouse_check_button_pressed(mb_left){
			i++;
			typing=true;
			if i<max_i{
				type=ds_grid_get(global.dialg_grid, 0,i);
				npc_name=ds_grid_get(global.dialg_grid, 1,i);
				text=ds_grid_get(global.dialg_grid, 2,i);
			}
		}
	}
	else{
		if keyboard_check_pressed(ord("E")) or mouse_check_button_pressed(mb_left){
			typing=false;
		}
	}
}
else if type=="question"{
	if typing==false{
		//hold on to the question and create the text box for the answers
		answer_text_box=instance_create_layer(x,y+120,"IF",obj_a_textbox);
		answer_text_box.i=i+1;
		answer_text_box.type="answer";
		type="answer";
	}
	else{
		if keyboard_check_pressed(ord("E")) or mouse_check_button_pressed(mb_left){
			typing=false;
		}
	}

}
else if type=="answer"{
	if answered==true{
		type="line";	
	}
}
else{
	show_debug_message("you got the type written wrong")
}