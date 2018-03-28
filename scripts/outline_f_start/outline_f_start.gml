/// @arg thickness
/// @arg OPTIONAL_sprite
/// @arg OPTIONAL_index
/// @arg OPTIONAL_accuracy
/// @arg OPTIONAL_tolerance
var _spr;
if (argument_count<=1) _spr = sprite_index;
else _spr = argument[1];

var _ind;
if (argument_count<=2) _ind = image_index;
else _ind = argument[2];

shader_set(sh_outline_fluid);

var _tex = sprite_get_texture(_spr, _ind);

var _w = texture_get_texel_width(_tex);
var _h = texture_get_texel_height(_tex);

shader_set_uniform_f(uni_size, _w, _h);

shader_set_uniform_f(uni_thick, argument[0]);

var acc;
if (argument_count<=3) acc = 16;
else acc = argument[3];

shader_set_uniform_f(uni_acc, acc);

var tol;
if (argument_count<=4) tol = 0;
else tol = argument[4];

shader_set_uniform_f(uni_tol, tol);

var uvs = sprite_get_uvs(_spr, _ind);

shader_set_uniform_f(uni_uvs, uvs[0], uvs[1], uvs[2], uvs[3]);
