/// @description Inicialise the enemy
event_inherited();
draw_script=scr_psnt_draw;

image_speed=.4;
solid = false;
visible = false;

flash = false;
cr_cd = false;
cd_arrow = false;
damaged = false;
stun = false;

shoot = false;
go = false;
start = false;
tell = 0;

path = path_add();

//get number of specific parts so its cool to add more later and it wont ruin anything 
n_faces=sprite_get_number(spr_psnt_ff);
n_hairs=sprite_get_number(spr_psnt_hf);
n_skin_colors=sprite_get_number(spr_head);

//values that need to be manually updated if changed to account for more 
n_body_types = 4; 
n_hair_colors = 7;
n_body_colors = 4;

//pick the phisical characteristics at random
face = irandom(n_faces-1);
hair = irandom(n_hairs-1);
skin_color = irandom(n_skin_colors-1);
body_type = irandom(n_body_types-1);
hair_color = irandom(n_hair_colors-1);
body_color = irandom(n_body_colors-1);

//set sprites for body

//get string for body type
var b_type;
b_type[0] ="b1";
b_type[1] ="b2";
b_type[2] ="b3";
b_type[3] ="b4";

bodyf_sprite=asset_get_index("spr_psnt_"+b_type[body_type]+"f");
bodys_sprite=asset_get_index("spr_psnt_"+b_type[body_type]+"s");
bodyb_sprite=asset_get_index("spr_psnt_"+b_type[body_type]+"b");
body_dead_sprite =asset_get_index("spr_psnt_"+b_type[body_type]+"_dead");

sprite_index = bodyf_sprite;

//create head
head=instance_create_layer(x,y,layer,obj_psnt_head);
with head{
	body = instance_nearest(x,y,obj_psnt_arch_body);
	//get vars from body
	face = body.face;
	hair = body.hair;
	skin_color = body.skin_color;
	hair_color = body.hair_color;
	
	image_index = skin_color;
	
}

//create weapon
weapon = instance_create_layer(x,y,layer,obj_e_bow);
weapon.skin_color = skin_color;

//Stats
e_mhp = 20;
e_hp = 20;
e_atk = 5;
e_satk = 1;
e_def = 2;
e_sdef = 2;
e_spd = 3;

//States
state = 0;
state_change = false;
prev_state = 0;
atk_cd = false;
ini_point_x = x;
ini_point_y = y;
dir_change = true;
i_dir = 0;
if instance_exists(global.body){
	dir = point_direction(x,y,global.body.x,global.body.y);
}
prev_state = 0;
d = 0;
d_ = 0;
offset_x = 0;
offset_y = 0;
hspd = 0;
vspd = 0;

for(i = 0; i < 7; i += 1){	
	alarms[i] = -1;
}