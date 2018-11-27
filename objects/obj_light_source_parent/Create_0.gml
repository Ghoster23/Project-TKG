event_inherited();

draw_script = scr_draw_light;

room_active = false;

radius = 400;
base_radius = radius;
range = 5;

image_blend = c_white;

opacity = 0.5;

in_range = -1;

//defining a vertex format and buffer (what we pass to shader)
vertex_format_begin();
vertex_format_add_position();
vertex_format_add_color();
VertexFormat = vertex_format_end();

VBuffer = vertex_create_buffer();

surf = -1;

no_shadows = true;

LightPosRadius = shader_get_uniform(sh_light,"u_fLightPositionRadius");
