//dont draw yourself
/*
draw_text_ext_transformed(x,y,"physpeed: "+string(phy_speed),0,10000,0.4,0.4,0);
draw_text_ext_transformed(x,y+10,"z: "+string(z),0,10000,0.4,0.4,0);
draw_text_ext_transformed(x,y+20,"linear dampning: "+string(phy_linear_damping),0,10000,0.4,0.4,0);
draw_text_ext_transformed(x,y+30,"linear speed x: "+string(phy_linear_velocity_x),0,10000,0.4,0.4,0);
draw_text_ext_transformed(x,y+40,"linear speed y: "+string(phy_linear_velocity_y),0,10000,0.4,0.4,0);
if stop=true{
	draw_text_ext_transformed(x,y+50,"STOP",0,10000,0.4,0.4,0);
} 
