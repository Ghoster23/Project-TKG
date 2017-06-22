draw_self();
draw_sprite(spr_player_shadow, 1 , x, y);

if not place_meeting(x,y,obj_sword){
    if spr_side == 2 or spr_side == 3{
        draw_sprite(spr_hands, 1,x,y);
    }else {
        draw_sprite(spr_hands, 0,x,y);
    }
}

