///@param dx
///@param dy
///@param scale
{
var dx    = argument0;
var dy    = argument1;
var scale = argument2;

var sl_sd = 32 * scale;

///Check Quick Slots
for(var i = 0; i < 3; i++){
	var type = inventory[# 0, i + 12];
			
	var xx = dx + 111 * scale;
	var yy = dy + (14 + i * 37) * scale;
			
	if(type != -1){
		var item   = inventory[# 1, i + 12];
		var amount = inventory[# 2, i + 12];
			
		scr_draw_item(type, item, amount, xx, yy, scale, scale, 1);
	}
	
	if(obj_ig_menu_controller.state == "inv"){
		if(mouse_moved and 
			xx < mx and mx < xx + sl_sd and yy < my and my < yy + sl_sd){
			selected = i + 12;
		}
		
		if(i + 12 == selected){
			draw_circle(xx + sl_sd / 2, yy + sl_sd / 2, sl_sd/2, true);
		}
	}else {
		if(13 + selected_tl == 12 + i){
			draw_circle(xx + sl_sd / 2, yy + sl_sd / 2, sl_sd/2, true);
		}

		#region Key-Bind tag
		switch i {
			case 0:
				xx += 40 * scale;
				yy +=  8 * scale;
		
				var kid = global.key_binds[key_id.consume];
				scr_boxed_text(xx,yy,c_white,c_black,scale/2,font_chsl_tags,scr_keyname(kid),spr_HUD_key);
			break;
		
			case 1:
				xx += 40 * scale;
				yy += 28 * scale;
			
				var kid = global.key_binds[key_id.utilize];
				scr_boxed_text(xx,yy,c_white,c_black,scale/2,font_chsl_tags,scr_keyname(kid),spr_HUD_key);
			break;
		}
		#endregion
	}
}

}