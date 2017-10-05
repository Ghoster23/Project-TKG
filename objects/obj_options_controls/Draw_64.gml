//draw_black rectangle
draw_set_valign(fa_top);
draw_set_font(font_ig_menu);

//draw_set_color(c_black);
//draw_set_alpha(1);
//draw_rectangle(c - 96 * m, (off + 48 -64) * m, c + 96 * m, (off + 160 + 64 ) * m, false);

draw_sprite_ext( spr_minimap, 0, 64 * m, 64 * m, m, m, 0, c_white, 1);

draw_set_alpha(1);

//draw the text

draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text_transformed(c, controls_y1,"Controls Options",m,m,0);
draw_line_width(controls_x1,controls_y2,controls_x2,controls_y2,2*m);
//draw_rectangle(controls_x1,controls_y1,controls_x2,controls_y2,true);
//----------------------------------------------------------------------

draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text_transformed(c1, up_key_y1,"Up key",m,m,0);
//draw_rectangle(up_key_x1,up_key_y1,up_key_x2,up_key_y2,true);

if !(listen_for_key==true and state=="up_key"){
	var text=scr_keyname(global.up_key_bind);
	var bx = (string_width_ext(text,2,200)*m)/2;
	draw_roundrect(ic1-(bx+2*m),up_key_y1,ic1+(bx+2*m),up_key_y2,false);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_text_transformed(ic1,up_key_y1,text,m,m,0);
}
//---------------------------------------------------------------------------

draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text_transformed(c1, left_key_y1,"Left key",m,m,0);
//draw_rectangle(left_key_x1,left_key_y1,left_key_x2,left_key_y2,true);

if !(listen_for_key==true and state=="left_key"){
	var text=scr_keyname(global.left_key_bind);
	var bx = (string_width_ext(text,2,200)*m)/2;
	draw_roundrect(ic1-(bx+2*m),left_key_y1,ic1+(bx+2*m),left_key_y2,false);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_text_transformed(ic1,left_key_y1,text,m,m,0);
}
//---------------------------------------------------------------------------

draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text_transformed(c1, down_key_y1,"Down key",m,m,0);
//draw_rectangle(down_key_x1,down_key_y1,down_key_x2,down_key_y2,true);

if !(listen_for_key==true and state=="down_key"){
	var text=scr_keyname(global.down_key_bind);
	var bx = (string_width_ext(text,2,200)*m)/2;
	draw_roundrect(ic1-(bx+2*m),down_key_y1,ic1+(bx+2*m),down_key_y2,false);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_text_transformed(ic1,down_key_y1,text,m,m,0);
}
//---------------------------------------------------------------------------

draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text_transformed(c1, right_key_y1,"Right key",m,m,0);
//draw_rectangle(right_key_x1,right_key_y1,right_key_x2,right_key_y2,true);

if !(listen_for_key==true and state=="right_key"){
	var text=scr_keyname(global.right_key_bind);
	var bx = (string_width_ext(text,2,200)*m)/2;
	draw_roundrect(ic1-(bx+2*m),right_key_y1,ic1+(bx+2*m),right_key_y2,false);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_text_transformed(ic1,right_key_y1,text,m,m,0);
}
//---------------------------------------------------------------------------

draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text_transformed(c1, attack_key_y1,"Ability 1",m,m,0);
//draw_rectangle(attack_key_x1,attack_key_y1,attack_key_x2,attack_key_y2,true);

if !(listen_for_key==true and state=="attack_key"){
	var text=scr_keyname(global.attack_key_bind);
	var bx = (string_width_ext(text,2,200)*m)/2;
	draw_roundrect(ic1-(bx+2*m),attack_key_y1,ic1+(bx+2*m),attack_key_y2,false);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_text_transformed(ic1,attack_key_y1,text,m,m,0);
}
//---------------------------------------------------------------------------

draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text_transformed(c1, mouse_r_y1,"Ability 2",m,m,0);
//draw_rectangle(mouse_r_x1,mouse_r_y1,mouse_r_x2,mouse_r_y2,true);

if !(listen_for_key==true and state=="mouse_r"){
	var text=scr_keyname(global.mouse_r_key_bind);
	var bx = (string_width_ext(text,2,200)*m)/2;
	draw_roundrect(ic1-(bx+2*m),mouse_r_y1,ic1+(bx+2*m),mouse_r_y2,false);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_text_transformed(ic1,mouse_r_y1,text,m,m,0);
}
//---------------------------------------------------------------------------

draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text_transformed(c1, dash_key_y1,"Ability 3",m,m,0);
//draw_rectangle(dash_key_x1,dash_key_y1,dash_key_x2,dash_key_y2,true);

if !(listen_for_key==true and state=="dash_key"){
	var text=scr_keyname(global.dash_key_bind);
	var bx = (string_width_ext(text,2,200)*m)/2;
	draw_roundrect(ic1-(bx+2*m),dash_key_y1,ic1+(bx+2*m),dash_key_y2,false);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_text_transformed(ic1,dash_key_y1,text,m,m,0);
}
//=============================================================//
//--------------------------//RIGHT//--------------------------//
//=============================================================//
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text_transformed(c2, interact_key_y1,"Interact key",m,m,0);
//draw_rectangle(interact_key_x1,interact_key_y1,interact_key_x2,interact_key_y2,true);

if !(listen_for_key==true and state=="interact_key"){
	var text=scr_keyname(global.interact_key_bind);
	var bx = (string_width_ext(text,2,200)*m)/2;
	draw_roundrect(ic2-(bx+2*m),interact_key_y1,ic2+(bx+2*m),interact_key_y2,false);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_text_transformed(ic2,interact_key_y1,text,m,m,0);
}
//---------------------------------------------------------------------------

draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text_transformed(c2, potion_key_y1,"Use Item",m,m,0);
//draw_rectangle(potion_key_x1,potion_key_y1,potion_key_x2,potion_key_y2,true);

if !(listen_for_key==true and state=="potion_key"){
	var text=scr_keyname(global.potion_key_bind);
	var bx = (string_width_ext(text,2,200)*m)/2;
	draw_roundrect(ic2-(bx+2*m),potion_key_y1,ic2+(bx+2*m),potion_key_y2,false);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_text_transformed(ic2,potion_key_y1,text,m,m,0);
}
//---------------------------------------------------------------------------

draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text_transformed(c2, mmap_key_y1,"Map key",m,m,0);
//draw_rectangle(map_key_x1,mmap_key_y1,mmap_key_x2,mmap_key_y2,true);

if !(listen_for_key==true and state=="mmap_key"){
	var text=scr_keyname(global.mmap_key_bind);
	var bx = (string_width_ext(text,2,200)*m)/2;
	draw_roundrect(ic2-(bx+2*m),mmap_key_y1,ic2+(bx+2*m),mmap_key_y2,false);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_text_transformed(ic2,mmap_key_y1,text,m,m,0);
}
//---------------------------------------------------------------------------

draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text_transformed(c2, os_mmap_key_y1,"Minimap",m,m,0);
//draw_rectangle(os_mmap_key_x1,os_mmap_key_y1,os_mmap_key_x2,os_mmap_key_y2,true);

if !(listen_for_key==true and state=="os_mmap_key"){
	var text=scr_keyname(global.os_mmap_key_bind);
	var bx = (string_width_ext(text,2,200)*m)/2;
	draw_roundrect(ic2-(bx+2*m),os_mmap_key_y1,ic2+(bx+2*m),os_mmap_key_y2,false);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_text_transformed(ic2,os_mmap_key_y1,text,m,m,0);
}
//---------------------------------------------------------------------------

draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text_transformed(c2, enter_key_y1,"Select",m,m,0);
//draw_rectangle(enter_key_x1,enter_key_y1,enter_key_x2,enter_key_y2,true);

if !(listen_for_key==true and state=="enter_key"){
	var text=scr_keyname(global.enter_key_bind);
	var bx = (string_width_ext(text,2,200)*m)/2;
	draw_roundrect(ic2-(bx+2*m),enter_key_y1,ic2+(bx+2*m),enter_key_y2,false);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_text_transformed(ic2,enter_key_y1,text,m,m,0);
}
//---------------------------------------------------------------------------

draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text_transformed(c2, menu_key_y1,"Menu/Back",m,m,0);
//draw_rectangle(menu_key_x1,menu_key_y1,menu_key_x2,menu_key_y2,true);

if !(listen_for_key==true and state=="menu_key"){
	var text=scr_keyname(global.menu_key_bind);
	var bx = (string_width_ext(text,2,200)*m)/2;
	draw_roundrect(ic2-(bx+2*m),menu_key_y1,ic2+(bx+2*m),menu_key_y2,false);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_text_transformed(ic2,menu_key_y1,text,m,m,0);
}
//---------------------------------------------------------------------------

draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text_transformed(c2, reset_y1,"Reset Controls",m,m,0);
draw_rectangle(reset_x1,reset_y1,reset_x2,reset_y2,true);

//---------------------------------------------------------------------------

draw_sprite_ext(spr_back,0,c,reset_y1+reset_height+20*m,m,m,0,c_white,1);



/*ajuda
draw_line_width(c,0,c,display_get_gui_height(),1*m);
draw_line_width(c1,0,c1,display_get_gui_height(),1*m);
draw_line_width(c2,0,c2,display_get_gui_height(),1*m);
draw_line_width(ic1,0,ic1,display_get_gui_height(),1*m);
draw_line_width(ic2,0,ic2,display_get_gui_height(),1*m);
*/

switch state{

	case "up_key":
		pointer_x=up_key_x1;
		pointer_y=up_key_y1+up_key_height/2-1;
		draw_sprite_ext(spr_pointer,-1,pointer_x,pointer_y,m,m,0,c_white,1);
		break;
	
	case "left_key":
		pointer_x=left_key_x1;
		pointer_y=left_key_y1+left_key_height/2-1;
		draw_sprite_ext(spr_pointer,-1,pointer_x,pointer_y,m,m,0,c_white,1);
		break;
	
	case "down_key":
		pointer_x=down_key_x1;
		pointer_y=down_key_y1+down_key_height/2-1;
		draw_sprite_ext(spr_pointer,-1,pointer_x,pointer_y,m,m,0,c_white,1);
		break;
		
	case "right_key":
		pointer_x=right_key_x1;
		pointer_y=right_key_y1+right_key_height/2-1;
		draw_sprite_ext(spr_pointer,-1,pointer_x,pointer_y,m,m,0,c_white,1);
		break;
		
	case "attack_key":
		pointer_x=attack_key_x1;
		pointer_y=attack_key_y1+attack_key_height/2-1;
		draw_sprite_ext(spr_pointer,-1,pointer_x,pointer_y,m,m,0,c_white,1);
		break;
		
	case "mouse_r":
		pointer_x=mouse_r_x1;
		pointer_y=mouse_r_y1+mouse_r_height/2-1;
		draw_sprite_ext(spr_pointer,-1,pointer_x,pointer_y,m,m,0,c_white,1);
		break;
		
	case "dash_key":
		pointer_x=dash_key_x1;
		pointer_y=dash_key_y1+dash_key_height/2-1;
		draw_sprite_ext(spr_pointer,-1,pointer_x,pointer_y,m,m,0,c_white,1);
		break;
		
	//--------------------------//RIGHT//--------------------------//
		
	case "interact_key":
		pointer_x=interact_key_x1;
		pointer_y=interact_key_y1+interact_key_height/2-1;
		draw_sprite_ext(spr_pointer,-1,pointer_x,pointer_y,m,m,0,c_white,1);
		break;
	
	case "potion_key":
		pointer_x=potion_key_x1;
		pointer_y=potion_key_y1+potion_key_height/2-1;
		draw_sprite_ext(spr_pointer,-1,pointer_x,pointer_y,m,m,0,c_white,1);
		break;
		
	case "mmap_key":
		pointer_x=mmap_key_x1;
		pointer_y=mmap_key_y1+mmap_key_height/2-1;
		draw_sprite_ext(spr_pointer,-1,pointer_x,pointer_y,m,m,0,c_white,1);
		break;
		
	case "os_mmap_key":
		pointer_x=os_mmap_key_x1;
		pointer_y=os_mmap_key_y1+os_mmap_key_height/2-1;
		draw_sprite_ext(spr_pointer,-1,pointer_x,pointer_y,m,m,0,c_white,1);
		break;
		
	case "enter_key":
		pointer_x=enter_key_x1;
		pointer_y=enter_key_y1+enter_key_height/2-1;
		draw_sprite_ext(spr_pointer,-1,pointer_x,pointer_y,m,m,0,c_white,1);
		break;
		
	case "menu_key":
		pointer_x=menu_key_x1;
		pointer_y=menu_key_y1+menu_key_height/2-1;
		draw_sprite_ext(spr_pointer,-1,pointer_x,pointer_y,m,m,0,c_white,1);
		break;
		
	case "reset":
		pointer_x=reset_x1;
		pointer_y=reset_y1+reset_height/2-1;
		draw_sprite_ext(spr_pointer,-1,pointer_x,pointer_y,m,m,0,c_white,1);
		break;

}

//flashy thing
if listen_for_key==true{
	if vis == true{
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_color(c_white);
		if pointer_x>=c{
			draw_text_transformed(ic2,pointer_y,"Press Key",m,m,0);
		}
		else{
			draw_text_transformed(ic1,pointer_y,"Press Key",m,m,0);
		}
	}
}