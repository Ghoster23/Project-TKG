/// @description 9_Slice_Box
/// @argument    sprite
/// @argument    x1
/// @argument    y1
/// @argument    x2
/// @argument    y2
{
var sprite = argument0;
var size   = sprite_get_width(sprite)/3;
var x1     = argument1;
var y1     = argument2;
var x2     = argument3;
var y2     = argument4;

var scale  = argument5;

var s_size = size * scale;

var wd     = x2 - x1;
var hg     = y2 - y1;

var col    = wd / s_size - 2;
var row    = hg / s_size - 2;

var e_row  = row - floor(row);
var e_col  = col - floor(col);

row = row - e_row;
col = col - e_col;

var rt = (row mod 2 == 0);
var ct = (col mod 2 == 0);
var mr = row div 2;
var mc = col div 2;

/* Center */
draw_sprite_part_ext(sprite, 0, size, size, size, size, x1 + s_size, y1 + s_size, ((wd - (s_size * 2)) / s_size) * scale, ((hg - (s_size * 2)) / s_size) * scale, c_white, 1);

/* Corners */
//UP LEFT
draw_sprite_part_ext(sprite, 0,        0,        0, size, size,          x1,          y1, scale, scale, c_white, 1);

//UP RIGHT
draw_sprite_part_ext(sprite, 0, size * 2,        0, size, size, x2 - s_size,          y1, scale, scale, c_white, 1);

//DOWN LEFT
draw_sprite_part_ext(sprite, 0,        0, size * 2, size, size,          x1, y2 - s_size, scale, scale, c_white, 1);

//DOWN RIGHT
draw_sprite_part_ext(sprite, 0, size * 2, size * 2, size, size, x2 - s_size, y2 - s_size, scale, scale, c_white, 1);

/* Frame */
var off = s_size;

for(var i = 0; i < col; i++){
	if(ct){
		if(i == mc - 1 || i == mc){
			//UP
			draw_sprite_part_ext(sprite, 0, size,        0, size, size, x1 + off,          y1, scale * (1 + e_col / 2), scale, c_white, 1);

			//DOWN
			draw_sprite_part_ext(sprite, 0, size, size * 2, size, size, x1 + off, y2 - s_size, scale * (1 + e_col / 2), scale, c_white, 1);
			
			off += s_size * (1 + e_col / 2);
		}
		else {
			//UP
			draw_sprite_part_ext(sprite, 0, size,        0, size, size, x1 + off,          y1, scale, scale, c_white, 1);

			//DOWN
			draw_sprite_part_ext(sprite, 0, size, size * 2, size, size, x1 + off, y2 - s_size, scale, scale, c_white, 1);
			
			off += s_size;
		}
	}else {
		if(i == mc){
			//UP
			draw_sprite_part_ext(sprite, 0, size,        0, size, size, x1 + off,          y1, scale * (1 + e_col), scale, c_white, 1);

			//DOWN
			draw_sprite_part_ext(sprite, 0, size, size * 2, size, size, x1 + off, y2 - s_size, scale * (1 + e_col), scale, c_white, 1);
			
			off += s_size * (1 + e_col);
		}
		else {
			//UP
			draw_sprite_part_ext(sprite, 0, size,        0, size, size, x1 + off,          y1, scale, scale, c_white, 1);

			//DOWN
			draw_sprite_part_ext(sprite, 0, size, size * 2, size, size, x1 + off, y2 - s_size, scale, scale, c_white, 1);
			
			off += s_size;
		}
	}
}

if(col == 0 && e_col > 0){
	//UP
	draw_sprite_part_ext(sprite, 0, size,        0, size, size, x1 + off,          y1, scale * e_col, scale, c_white, 1);

	//DOWN
	draw_sprite_part_ext(sprite, 0, size, size * 2, size, size, x1 + off, y2 - s_size, scale * e_col, scale, c_white, 1);
}

off = s_size;

for(var i = 0; i < row; i++){
	if(rt){
		if(i == mr - 1 || i == mr){
			//Right
			draw_sprite_part_ext(sprite, 0, size * 2, size, size, size, x2 - s_size, y1 + off, scale, scale * (1 + e_row / 2), c_white, 1);

			//LEFT
			draw_sprite_part_ext(sprite, 0,        0, size, size, size,          x1, y1 + off, scale, scale * (1 + e_row / 2), c_white, 1);
			
			off += s_size * (1 + e_row / 2);
		}
		else {
			//Right
			draw_sprite_part_ext(sprite, 0, size * 2, size, size, size, x2 - s_size, y1 + off, scale, scale, c_white, 1);

			//LEFT
			draw_sprite_part_ext(sprite, 0,        0, size, size, size,          x1, y1 + off, scale, scale, c_white, 1);
			
			off += s_size;
		}
	}else {
		if(i == mr){
			//Right
			draw_sprite_part_ext(sprite, 0, size * 2, size, size, size, x2 - s_size, y1 + off, scale, scale * (1 + e_row), c_white, 1);

			//LEFT
			draw_sprite_part_ext(sprite, 0,        0, size, size, size,          x1, y1 + off, scale, scale * (1 + e_row), c_white, 1);
			
			off += s_size * (1 + e_row);
		}
		else {
			//Right
			draw_sprite_part_ext(sprite, 0, size * 2, size, size, size, x2 - s_size, y1 + off, scale, scale, c_white, 1);

			//LEFT
			draw_sprite_part_ext(sprite, 0,        0, size, size, size,          x1, y1 + off, scale, scale, c_white, 1);
			
			off += s_size;
		}
	}
}

if(row == 0 && e_row > 0){
	//Right
	draw_sprite_part_ext(sprite, 0, size * 2, size, size, size, x2 - s_size, y1 + off, scale, scale * e_row, c_white, 1);

	//LEFT
	draw_sprite_part_ext(sprite, 0,        0, size, size, size,          x1, y1 + off, scale, scale * e_row, c_white, 1);
}
}