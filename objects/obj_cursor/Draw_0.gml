/// @description Insert description here
// You can write your code in this editor
switch(room){
	case rm_level:
	case rm_lvl_editor_test:
		if(not global.pause){
			draw_sprite_ext(spr_cursor,0,x,y,1, 1,c_rot,c_white,1);
			c_rot ++;
		}
	break;
	
	default:
	break;
}