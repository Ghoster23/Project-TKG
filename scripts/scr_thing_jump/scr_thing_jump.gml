
var ratio = 1 / (1 + abs(z) / 31);
//draw_sprite_ext(spr_player_shadow,0,x+16,y+16,ratio,ratio,0,c_white,1);

if(phy_speed <= 6 and z <= 3){
	modulator=scr_aproach(modulator,1,0.04);
	 
}else{
	modulator = power( exp(1) , -0.2*abs(z)-1 ) + 1;  
}

draw_sprite_ext(sprite_index,image_index,x - (sprite_width*(clamp(modulator,1,1.3)-1))/2, (y - z) + (sprite_width*(clamp(modulator,1,1.3)-1))/2 ,clamp(modulator,1,1.3),image_yscale+(1-clamp(modulator,1,1.3)),0,c_white,image_alpha);