///@credit iAmMortos
// GM efficient Auto-tile sprite script
// Original script by Taylor Lopez
// See the original script on Git Hub: https://github.com/iAmMortos/autotile

tile = argument0;

grid=obj_gen_controller.floor_grid;

with(tile)
{   
    u = 0;  // up
    r = 0;  // right
    d = 0;  // down
    l = 0;  // left
    ul = 0; // up-left
    ur = 0; // up-right
    dr = 0; // down-right
    dl = 0; // down-left
    
    // Check adjacent side existence
	if (ds_grid_get(grid,tx,ty-1)==type) u = 1;
	if (ds_grid_get(grid,tx+1,ty)==type) r = 2;
	if (ds_grid_get(grid,tx,ty+1)==type) d = 4;
    if (ds_grid_get(grid,tx-1,ty)==type) l = 8;
	
    // Check corner existence
	if (ds_grid_get(grid,tx-1,ty-1)==type) ul = 1;
	if (ds_grid_get(grid,tx+1,ty-1)==type) ur = 2;
	if (ds_grid_get(grid,tx+1,ty+1)==type) dr = 4;
	if (ds_grid_get(grid,tx-1,ty+1)==type) dl = 8;
    
    edges = u + r + d + l;
    corners = 0;

    if (u && l) corners += ul;    
    if (u && r) corners += ur;
    if (d && r) corners += dr;
    if (d && l) corners += dl;
    
    switch(edges)
    {
        case 0: image_index = 0; break;
        case 1: image_index = 1; break;
        case 2: image_index = 2; break;
        case 3:
            switch(corners)
            {
                case 0: image_index = 3; break;
                case 2: image_index = 4; break;
            }
        break;
        case 4: image_index = 5; break;
        case 5: image_index = 6; break;
        case 6:
            switch(corners)
            {
                case 0: image_index = 7; break;
                case 4: image_index = 8; break;
            }
        break;
        case 7:
            switch(corners)
            {
                case 0: image_index = 9; break;
                case 2: image_index = 10; break;
                case 4: image_index = 11; break;
                case 6: image_index = 12; break;
            }
        break;
        case 8: image_index = 13; break;
        case 9:
            switch(corners)
            {
                case 0: image_index = 14; break;
                case 1: image_index = 15; break;
            }
        break;
        case 10: image_index = 16; break;
        case 11:
            switch(corners)
            {
                case 0: image_index = 17; break;
                case 1: image_index = 18; break;
                case 2: image_index = 19; break;
                case 3: image_index = 20; break;
            }
        break;
        case 12:
            switch(corners)
            {
                case 0: image_index = 21; break;
                case 8: image_index = 22; break;
            }
        break;
        case 13:
            switch(corners)
            {
                case 0: image_index = 23; break;
                case 1: image_index = 24; break;
                case 8: image_index = 25; break;
                case 9: image_index = 26; break;
            }
        break;
        case 14:
            switch(corners)
            {
                case 0: image_index = 27; break;
                case 4: image_index = 28; break;
                case 8: image_index = 29; break;
                case 12: image_index = 30; break;
            }
        break;
        case 15:
            switch(corners)
            {
                case 0: image_index = 31; break;
                case 1: image_index = 32; break;
                case 2: image_index = 33; break;
                case 3: image_index = 34; break;
                case 4: image_index = 35; break;
                case 5: image_index = 36; break;
                case 6: image_index = 37; break;
                case 7: image_index = 38; break;
                case 8: image_index = 39; break;
                case 9: image_index = 40; break;
                case 10: image_index = 41; break;
                case 11: image_index = 42; break;
                case 12: image_index = 43; break;
                case 13: image_index = 44; break;
                case 14: image_index = 45; break;
                case 15: image_index = 46; break;
            }
        break;
    }
}