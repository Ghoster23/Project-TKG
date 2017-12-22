//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D Palette;

uniform float Offset;

void main()
{
    vec4 ref = texture2D(gm_BaseTexture, v_vTexcoord);
	vec2 uv_coord = vec2(ref.r, Offset);
	vec4 new_color = texture2D(Palette, uv_coord);
	gl_FragColor = new_color;
}
