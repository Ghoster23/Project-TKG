part_type_color3(pt_2, c1, c2, c3);

count += 0.01;
count  = count mod 360;

image_xscale = 1 + abs(sin(count))*0.11;
image_yscale = 1 + abs(sin(count))*0.11;

image_angle  = cos(count*3)*2.4;

if(fade == true){
	c1_r=scr_aproach(c1_r,ct_r,8);
	c1_g=scr_aproach(c1_g,ct_g,8);
	c1_b=scr_aproach(c1_b,ct_b,8);

	c1=make_color_rgb(c1_r,c1_g,c1_b);

	c2_r=scr_aproach(c2_r,ct_r,8);
	c2_g=scr_aproach(c2_g,ct_g,8);
	c2_b=scr_aproach(c2_b,ct_b,8);

	c2=make_color_rgb(c2_r,c2_g,c2_b);

	c3_r=scr_aproach(c3_r,ct_r,8);
	c3_g=scr_aproach(c3_g,ct_g,8);
	c3_b=scr_aproach(c3_b,ct_b,8);

	c3=make_color_rgb(c3_r,c3_g,c3_b);
}