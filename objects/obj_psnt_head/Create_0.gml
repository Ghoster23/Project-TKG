event_inherited();
image_speed = 0;
draw_script=scr_psnt_draw;
body = instance_nearest(x,y,obj_psnt_body)

flash = false;

//get vars from body
face = body.face;
hair = body.hair;
skin_color = body.skin_color;
hair_color = body.hair_color;

//set sprites

//here we set the head to the respective skin color
sprite_index = spr_psnt_head;
image_index = skin_color;
//here we set the face, hair sprite    
hairf_sprite = spr_psnt_hf;
hairs_sprite = spr_psnt_hs;
hairb_sprite = spr_psnt_hb;

facef_sprite = spr_psnt_ff;
faces_sprite = spr_psnt_fs;
eyebrowf_sprite = spr_psnt_ef;
eyebrows_sprite = spr_psnt_es;

faceh_sprite = spr_psnt_f_damage;

//initialize these vars
facing = "down";

//set thingies for the depth
offset = true;
offs = 10;