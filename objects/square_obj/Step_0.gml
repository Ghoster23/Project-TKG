if global.frozen=true{ 
    exit
    }

if mouse_check_button_pressed(mb_left)==true and point_in_rectangle(mouse_x,mouse_y,x,y,x+32,y+32){
    
    block_ID[0]=global.selected_block[0];
    block_ID[1]=global.selected_block[1];
    
    if block_ID[0]==0{
        sprite_index=spr_space
        image_index=block_ID[1]
        }
    else if block_ID[0]==1{
        sprite_index=spr_terrain
        image_index=block_ID[1]
        }
    else if block_ID[0]=2{
        sprite_index=spr_enemy
        image_index=block_ID[1]
        }
    else if block_ID[0]=3{
        sprite_index=spr_cosmetic
        image_index=block_ID[1]
        }
	else if block_ID[0]=4{
        sprite_index=spr_traps
        image_index=block_ID[1]
        }
	else if block_ID[0]=5{
        sprite_index=spr_misc
        image_index=block_ID[1]
        }
    show_debug_message("self_id: "+string(self_ID))
    show_debug_message("block_id: "+string(block_ID))

}

if mouse_check_button_pressed(mb_right)==true and point_in_rectangle(mouse_x,mouse_y,x,y,x+32,y+32){
    block_ID[0]=0
    block_ID[1]=0
    sprite_index=spr_space
    image_index=0
    show_debug_message("self_id: "+string(self_ID))
    show_debug_message("block_id: "+string(block_ID))       
}

