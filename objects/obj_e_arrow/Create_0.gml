event_inherited();

dir = point_direction(x,y,global.body.x,global.body.y);
offset=0;
go = false;
once = false;
phy_rotation = dir;

r = 0;
hspd = 0;
vspd = 0;

state = 0;

des = true;

divi = stats.def;
damage = 2;

owner = -1;