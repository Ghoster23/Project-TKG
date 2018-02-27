dir = point_direction(global.body.phy_position_x,global.body.phy_position_y,mouse_x,mouse_y);

scr_spawn_item(2,2,2,global.body.phy_position_x+lengthdir_x(12,dir)-16,global.body.phy_position_y+lengthdir_y(12,dir)-16);