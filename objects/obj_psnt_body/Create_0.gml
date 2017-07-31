/// @description Inicialise the enemy
event_inherited();
instance_create_layer(x,y,layer,obj_psnt_head);
solid = false;
visible = false;
trigger = false;
flash = false;
cd_swing = false;
damaged = false;
alt = 1;
swing = false;
go = false;
prev_image_speed = 0;

xx = x;
yy = y;
pos = 1;
path = path_add();

head = instance_nearest(x,y,obj_psnt_head);

gender = head.gender;
opt = head.opt;
weapon = instance_create_layer(x,y,layer,obj_e_melee);

if gender == 0{
    sprite_index = spr_peasent_f_f;
	head.sprite_index = spr_peasent_hf_f;
}else {
    sprite_index = spr_peasent_m_f;
	head.sprite_index = spr_peasent_h_f
}

//Stats
e_mhp = 20;
e_hp = 20;
e_atk = 5;
e_satk = 0;
e_def = 5;
e_sdef = 5;
e_spd = 3;

//States
state = 0;
state_change = false;
prev_state = 0;

//Idle
ini_point_x = x;
ini_point_y = y;
dir_change = false;
i_dir = 0;

prev_state = 0;
d = 0;
d_ = 0;
offset_x = 0;
offset_y = 0;

for(i = 0; i < 6; i += 1){	
	alarms[i] = -1;
}