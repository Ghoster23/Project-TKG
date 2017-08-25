if global.frozen=true{ 
    exit;
}

if point_in_rectangle(mouse_x,mouse_y,x,y,x+91,y+21){
	image_index=1;
	if mouse_check_button_pressed(mb_left){
		show_debug_message("Clear");
		image_index=0;
		
		id_counter=0;
		for(i=0;i<9;i+=1){
			for(j=0;j<19;j+=1){
			    global.square_ID[id_counter].block_ID[0]=0;
			    global.square_ID[id_counter].block_ID[1]=0;
				global.square_ID[id_counter].sprite_index=spr_space;
				global.square_ID[id_counter].image_index=0;
			    id_counter+=1
			}
		}
	}
}
else{
	image_index=0;
}