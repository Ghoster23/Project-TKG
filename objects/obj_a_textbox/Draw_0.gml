if visible==true{
	//draw text box
	yscale=(offset/boxHeight);
	draw_sprite_ext( spr_textbox, 0, x, y, 1, yscale,0,c_white,1 );

	//draw text
	draw_set_font(fnt_text);
	draw_text(x,y,npc_name); //drawn name
}





