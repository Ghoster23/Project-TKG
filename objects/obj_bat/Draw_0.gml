///@description Shadow and wooble

if flash==true{
	shader_set(sh_white);
	draw_self();
	shader_reset();
}

///Wooble
if global.pause == false and not dash{
	t = (t + inc) mod 360;
	shift = amp * sin(degtorad(t));
} 
draw_sprite(spr_player_shadow,1,x,y+40+shift);
