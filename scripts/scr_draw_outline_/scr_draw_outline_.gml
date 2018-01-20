{
var col = argument0;
var alp = argument1;
shader_set(sh_white);
draw_sprite_ext(self.sprite_index,self.image_index,x+1,y+1,self.image_xscale,self.image_yscale,0,col,alp);
draw_sprite_ext(self.sprite_index,self.image_index,x-1,y+1,self.image_xscale,self.image_yscale,0,col,alp);
draw_sprite_ext(self.sprite_index,self.image_index,x+1,y-1,self.image_xscale,self.image_yscale,0,col,alp);
draw_sprite_ext(self.sprite_index,self.image_index,x-1,y-1,self.image_xscale,self.image_yscale,0,col,alp);
draw_sprite_ext(self.sprite_index,self.image_index,x,y+1,self.image_xscale,self.image_yscale,0,col,alp);
draw_sprite_ext(self.sprite_index,self.image_index,x+1,y,self.image_xscale,self.image_yscale,0,col,alp);
draw_sprite_ext(self.sprite_index,self.image_index,x,y-1,self.image_xscale,self.image_yscale,0,col,alp);
draw_sprite_ext(self.sprite_index,self.image_index,x-1,y,self.image_xscale,self.image_yscale,0,col,alp);
shader_reset();
}