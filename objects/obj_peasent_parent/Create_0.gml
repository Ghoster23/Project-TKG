event_inherited();

//get number of specific parts so its cool to add more later and it wont ruin anything 
n_faces = sprite_get_number(spr_psnt_ff);
n_hairs = sprite_get_number(spr_psnt_hf);
n_skin_colors = sprite_get_number(spr_psnt_head);

//values that need to be manually updated if changed to account for more 
n_body_types  = 4; 
n_hair_colors = 7;
n_body_colors = 4;

//pick the phisical characteristics at random
face       = irandom(n_faces-1);
hair       = irandom(n_hairs-1);
skin_color = irandom(n_skin_colors-1);
body_type  = irandom(n_body_types-1);
hair_color = irandom(n_hair_colors-1);
body_color = irandom(n_body_colors-1);

//get string for body type
var b_type;
b_type[0] ="b1";
b_type[1] ="b2";
b_type[2] ="b3";
b_type[3] ="b4";

//set sprites for body
bodyf_sprite = asset_get_index("spr_psnt_"+b_type[body_type]+"f");
bodys_sprite = asset_get_index("spr_psnt_"+b_type[body_type]+"s");
bodyb_sprite = asset_get_index("spr_psnt_"+b_type[body_type]+"b");
body_dead_sprite = asset_get_index("spr_psnt_"+b_type[body_type]+"_dead");

sprite_index = bodyf_sprite;

//create head
head = instance_create_layer(x,y,layer,obj_psnt_head);
head.body = id;

with head{
	//get vars from body
	face = other.face;
	hair = other.hair;
	skin_color = other.skin_color;
	hair_color = other.hair_color;
	
	image_index = skin_color;
}

feet = instance_create_layer(x,y,layer,obj_psnt_feet);
feet.owner = id;

wep_dir = 0;