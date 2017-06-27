/// @description Inicialise the enemy
event_inherited();
instance_create_layer(x,y,obj_psnt_arch_body.layer,obj_psnt_arch_head);
image_speed=.4;
solid = false;
visible = false;
trigger = false;
flash = false;
cr_cd = false;
cd_arrow = false;
damaged = false;
alt = 1;
shoot = false;
go = false;
gender = instance_nearest(x,y,obj_psnt_arch_head).gender;
opt = instance_nearest(x,y,obj_psnt_arch_head).opt;
instance_create_layer(x,y,obj_psnt_arch_body.layer,obj_e_bow);

if gender == 0{
    sprite_index = spr_peasent_f_f;
}else {
    sprite_index = spr_peasent_m_f;
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
p_state = 0;
atk_cd = false;
ini_point_x = x;
ini_point_y = y;
dir_change = false;
i_dir = 0;
dir = point_direction(x,y,obj_body.x,obj_body.y);
p_state = 0;
d = 0;
d_ = 0;
offset_x = 0;
offset_y = 0;

