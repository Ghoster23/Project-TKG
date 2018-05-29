event_inherited();
image_speed = 0;

flash = false;

image_index = 0;

offset = true;
offs = 5;

skullrot = 0;
rotinc= 0;
phy_fixed_rotation = true;
impact = false;

zzero     =    30;
speedzero =     0;
t         = 0.001;
a         =  -100;
stop      = false;
bounce    = false;
z         = zzero;
zmax      = zzero + ((speedzero*speedzero)/(2*-a));
phy_linear_damping=0.5;

draw_script = scr_skull_throw;
