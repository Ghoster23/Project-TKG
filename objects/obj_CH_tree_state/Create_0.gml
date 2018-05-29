event_inherited();
state = 0;
image_speed = 0;

i_x = x;
i_y = y;

stop = 0;

start = false;
once = false;
bene = true;
alarm[0] = 3 * room_speed;

phy_fixed_rotation = true;
inv = false;

//Stats
stat[stats.mhp]  = 100;
stat[stats.hp]   = 100;
stat[stats.atk]  =  10;
stat[stats.def]  =  10;
stat[stats.satk] =  10;
stat[stats.sdef] =  10;
stat[stats.spd]  =  3;

//Roots
ph = 0;

//Leaves
leaves = 1;

l1 = false;
l2 = false;
l3 = false;

a = 0;
b = 0;
c = 0;

pat = "f";
s_x = 180;
ss_x = 1;
mult = 1;

prev_image_speed = 0;

for(i = 0; i < 5; i += 1){
	alarms[i] = -1;
}