///scr_dash_state
obj_body.visible=false;
obj_head.visible=false;
if instance_exists(obj_sword) {
with (obj_sword)
   {
    instance_destroy();
   }
}


len = spd*3;

//get the hspd and vspd
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

// move
phy_position_x += hspd;
phy_position_y += vspd;

global.invuln = true;
