scr_get_input();
///scr_slowdown

if impact = true and global.thrown = true and phy_rotation > 0 {
    speed -= 1;
}

if phy_rotation < 0{
    speed = 0;
}

if impact = true and global.thrown = true  and  place_meeting(x, y, obj_body){
    instance_destroy();
    instance_create_layer(x,y,obj_sword_t.layer,obj_sword);
}

if impact = true and global.thrown = true and abs(phy_speed_x) > 0 {
    phy_speed_x += sign(phy_speed_x)*-.1;
} 

if impact = true and global.thrown = true and abs(phy_speed_y) >0 {
    phy_speed_y += sign(phy_speed_y)*-.1;
} 




