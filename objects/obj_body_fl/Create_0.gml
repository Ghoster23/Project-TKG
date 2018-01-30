head = instance_create_layer(x,y-3,layer,obj_head);
hands = instance_create_layer(x,y,layer,obj_hands);
feet = instance_create_layer(x,y,layer,obj_feet);
weapon = instance_create_layer(x,y,layer,global.weapon);

upH = shader_get_uniform(sh_outline,"pH");
upW = shader_get_uniform(sh_outline,"pW");
texelW = texture_get_texel_width(sprite_get_texture(sprite_index,0));
texelH = texture_get_texel_width(sprite_get_texture(sprite_index,0));

///set a bunch of stuff
event_inherited();
scr_get_input();
state = scr_move_state;
hspd = 0;
vspd = 0;
len = 0;
xaxis = 0;
yaxis = 0;
dir = 0;
image_speed=0;
spr_side=1;
rotation = 0;
phy_fixed_rotation = true;

offset = true;
offs = 32;

head.offs += 32;
hands.offs += 32;
weapon.offs += 32;

spr_body = global.char_bsprs[global.char,3];

i_cd = false;


for(i = 0; i < 2; i++){
	alarms[i] = -1;
}