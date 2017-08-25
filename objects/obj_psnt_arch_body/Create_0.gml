/// @description Inicialise the enemy
event_inherited();
head = instance_create_layer(x,y,layer,obj_psnt_arch_head);
bow = instance_create_layer(x,y,layer,obj_e_bow);
image_speed=.4;
solid = false;
visible = false;

flash = false;
cr_cd = false;
cd_arrow = false;
damaged = false;

shoot = false;
go = false;
start = false;
tell = 0;

gender = head.gender;
opt = head.opt;

path = path_add();

if gender == 0{
    sprite_index = spr_peasent_f_f;
}else {
    sprite_index = spr_peasent_m_f;
}

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
dir = point_direction(x,y,obj_body.x,obj_body.y);
prev_state = 0;
d = 0;
d_ = 0;
offset_x = 0;
offset_y = 0;
hspd = 0;
vspd = 0;

for(i = 0; i < 6; i += 1){	
	alarms[i] = -1;
}