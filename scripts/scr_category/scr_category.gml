local_selected = argument0;
square = argument1;

switch(local_selected[0]){
case(0):
    square.sprite_index=spr_space
    break;
case(1):
    square.sprite_index=spr_terrain
    square.image_index=local_selected[1]
    break;
case(2):
    square.sprite_index=spr_enemy
    square.image_index=local_selected[1]
    break;
case(3):
    square.sprite_index=spr_cosmetic
    square.image_index=local_selected[1]
    break;
case(4):
    square.sprite_index=spr_traps
    square.image_index=local_selected[1]
    break;
}