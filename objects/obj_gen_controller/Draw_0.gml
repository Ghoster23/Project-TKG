/// @description Insert description here
// You can write your code in this editor
		
	
//draw grid fo debuggin' 
var sx = room_width/2+672/4;
var sy = room_height/2+416/4;
	
var w = ds_grid_width(floor_grid);
var h = ds_grid_height(floor_grid);

gray=make_color_rgb(107,94,89);
green=make_color_rgb(30,124,70);
maroon=make_color_rgb(145,101,80);

draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);

for (var i=0; i<w; i++)
{
    for (var j=0; j<h; j++){
        var value = (ds_grid_get(floor_grid,i,j));
        
		//draw_circle_color(sx+i*2,sy+j*2,1.5,make_color_hsv(0,0,value),make_color_hsv(0,0,value),false);
		
		if(value=="red"){
			draw_circle_color(sx+i*2,sy+j*2,1.5,green,green,false);
		}
		else if(value=="green"){
			draw_circle_color(sx+i*2,sy+j*2,1.5,maroon,maroon,false);
		}
		else if(value=="blue"){
			draw_circle_color(sx+i*2,sy+j*2,1.5,gray,gray,false);
		}
		else{
			draw_circle_color(sx+i*2,sy+j*2,1.5,c_yellow,c_yellow,false);
		}
		
    }
}