//Get hspd and vspd
hspd = lengthdir_x(10,dir);
vspd = lengthdir_y(10,dir);

if place_meeting(x,y+vspd,obj_wall_down) or
   place_meeting(x,y,obj_wall_left) or
   place_meeting(x,y,obj_wall_up) or
   place_meeting(x+8,y,obj_wall_right) {
   
   imp = instance_create_layer(phy_position_x,phy_position_y,layer,obj_sword_projectile_impact);
   imp.phy_rotation = phy_rotation;
   
   instance_destroy();
}

//Move
phy_position_x += hspd;
phy_position_y += vspd;