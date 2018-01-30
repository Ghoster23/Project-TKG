image_speed=0.9;
fade=false;
x=640/2;
y=360/2;
count =0;


//1 shine
global.pt_1 = part_type_create();
part_type_shape(global.pt_1, pt_shape_square);
//spr_1_part = sprite_add("1.png", 1, 0, 0, 10, 10);
part_type_sprite(global.pt_1, spr_morpho, 1, 0, 0);
part_type_size(global.pt_1, 0.2, 0.2, 0, 0.5);
part_type_scale(global.pt_1, 0.3, 0.30);
part_type_orientation(global.pt_1, 0, 308, 0, 200, 0);
part_type_color3(global.pt_1, c_white, c_white, c_white);
part_type_alpha3(global.pt_1, 0.5, 1, 1);
part_type_blend(global.pt_1, true);
part_type_life(global.pt_1, 80, 100);
part_type_speed(global.pt_1, 0, 0, 0, 0.05);
part_type_direction(global.pt_1, 242, 248, 0, 50);
part_type_gravity(global.pt_1, 0, 0);

//1
c1= 12615680;
c1_r=color_get_red(c1);
c1_g=color_get_green(c1);
c1_b=color_get_blue(c1);


c2=10485760;
c2_r=color_get_red(c2);
c2_g=color_get_green(c2);
c2_b=color_get_blue(c2);


c3=0;
c3_r=color_get_red(c3);
c3_g=color_get_green(c3);
c3_b=color_get_blue(c3);


//TARGET COLOR 
ct_r=44;    //red
ct_g=204;   //green
ct_b=226;   //blue


global.pt_2 = part_type_create();
part_type_sprite(global.pt_2, spr_circle, 1, 0, 0);
part_type_size(global.pt_2, 2, 2, 0.03, 0.40);
part_type_scale(global.pt_2, 1, 1);
part_type_orientation(global.pt_2, 43, 50, 0, 0, 0);
part_type_color3(global.pt_2, c1,c2,c3);
part_type_alpha3(global.pt_2, 1, 1, 1);
part_type_blend(global.pt_2, 0);
part_type_life(global.pt_2, 130,131);
part_type_speed(global.pt_2, 0, 3, 0, 0);
part_type_direction(global.pt_2, 90, 90, 0, 0);
part_type_gravity(global.pt_2, 0, 0);

//star
global.pt_star = part_type_create();
part_type_shape(global.pt_star, pt_shape_disk);
part_type_size(global.pt_star, 0.8, 0.8, -0.05, 0);
part_type_scale(global.pt_star, 0.09, 0.09);
part_type_orientation(global.pt_star, 0, 0, 0, 0, 0);
part_type_color3(global.pt_star, 16777215, 16777215, 16777215);
part_type_alpha3(global.pt_star, 1, 1, 1);
part_type_blend(global.pt_star, 1);
part_type_life(global.pt_star, 80, 80);
part_type_speed(global.pt_star, 15, 15, 0, 0);
part_type_direction(global.pt_star, 318, 318, 0, 0);
part_type_gravity(global.pt_star, 0, 255);

//trail
global.pt_trail = part_type_create();
part_type_shape(global.pt_trail, pt_shape_disk);
part_type_size(global.pt_trail, 0.3, 0.3, -0.05, 0);
part_type_scale(global.pt_trail, 0.09, 0.09);
part_type_orientation(global.pt_trail, 0, 0, 0, 0, 0);
part_type_color3(global.pt_trail, 16777215, 16777215, 16777215);
part_type_alpha3(global.pt_trail, 1, 1, 1);
part_type_blend(global.pt_trail, 1);
part_type_life(global.pt_trail, 80, 80);
part_type_speed(global.pt_trail, 7, 15, 0, 0);
part_type_direction(global.pt_trail, 318, 318, 0, 0);
part_type_gravity(global.pt_trail, 0, 255);

//Creating Emitters
global.pe_1 = part_emitter_create(global.ps);
global.pe_2 = part_emitter_create(global.ps_if);
global.pe_star = part_emitter_create(global.ps);

part_type_step(global.pt_star, 5, global.pt_trail);

//Adjusting Emitter positions. Starting Emitter Streams or Bursts.

part_emitter_region(global.ps, global.pe_1, 0, 640, 0, 380, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(global.ps, global.pe_1, global.pt_1, 1);

part_emitter_region(global.ps_if, global.pe_2, 0, 640, 300, 360, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(global.ps_if, global.pe_2, global.pt_2, 1);

part_emitter_region(global.ps, global.pe_star, -320, 320, -100, -50, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(global.ps, global.pe_star, global.pt_star, -30);





