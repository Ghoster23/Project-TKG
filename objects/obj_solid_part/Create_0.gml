event_inherited();

init = false;
image_speed=0;
dir = 0;

phy_fixed_rotation = true;


pick_up = false;

z         = 0;
zzero     = 0;
speedzero = irandom_range(10,30);
t         = 0;
a         = -20;
stop      = false;
bounce    = false;
zmax=zzero + ((speedzero*speedzero)/(2*-a));
phy_linear_damping=0.5;

modulator=1;
draw_script = scr_thing_jump;

fallingpit = false;

rotation = 0;
angle = 0;