/// @description Insert description here
// You can write your code in this editor
		
		
//draw grid fo debuggin' 
var sx = room_width/2+672/2;
var sy = room_height/2+416/2;
	
var w = ds_grid_width(floor_grid);
var h = ds_grid_height(floor_grid);

for (var i=0; i<w; i++)
{
    for (var j=0; j<h; j++){
        var value = (ds_grid_get(floor_grid,i,j));
        
		draw_point_color(sx+i,sy+j,make_color_hsv(0,0,value));
		
		if(value=="red"){
			draw_point_color(sx+i,sy+j,c_red);
		}
		else if(value=="green"){
			draw_point_color(sx+i,sy+j,c_green);
		}
		else if(value=="blue"){
			draw_point_color(sx+i,sy+j,c_blue);
		}
		else{
			draw_point_color(sx+i,sy+j,c_yellow);
		}
		
    }
}