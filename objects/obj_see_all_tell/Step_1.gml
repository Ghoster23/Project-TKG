if(!booted){
	if(marked != noone){
		x = marked.x - marked.sprite_xoffset + marked.sprite_width  / 2;
		y = marked.y - marked.sprite_yoffset + marked.sprite_height / 2;
		visible = true;
		booted  = true;
	}
}