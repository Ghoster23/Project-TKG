/// @arg thickness
/// @arg surface
/// @arg OPTIONAL_accuracy
/// @arg OPTIONAL_tolerance
var _sur = argument[1];

shader_set(sh_outline_fluid);

var _tex = surface_get_texture(_sur);

var _w = texture_get_texel_width(_tex);
var _h = texture_get_texel_height(_tex);

shader_set_uniform_f(uni_size, _w, _h);

shader_set_uniform_f(uni_thick, argument[0]);

var acc;
if (argument_count<=2) acc = 16;
else acc = argument[2];

shader_set_uniform_f(uni_acc, acc);

var tol;
if (argument_count<=3) tol = 0;
else tol = argument[3];

shader_set_uniform_f(uni_tol, tol);

var uvs = texture_get_uvs(_sur);

shader_set_uniform_f(uni_uvs, uvs[0], uvs[1], uvs[2], uvs[3]);
