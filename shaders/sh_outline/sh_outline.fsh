//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float pH;
uniform float pW;

void main()
{
	vec2 offsetx;
	offsetx.x = pW;
	vec2 offsety;
	offsety.y = pH;
	
	float originAlpha = sign(texture2D(gm_BaseTexture, v_vTexcoord).a);
	float alpha = originAlpha;
	
	alpha += ceil(texture2D(gm_BaseTexture,v_vTexcoord + offsetx).a);
	alpha += ceil(texture2D(gm_BaseTexture,v_vTexcoord - offsetx).a);
	alpha += ceil(texture2D(gm_BaseTexture,v_vTexcoord + offsety).a);
	alpha += ceil(texture2D(gm_BaseTexture,v_vTexcoord - offsety).a);
	alpha += ceil(texture2D(gm_BaseTexture,v_vTexcoord + offsetx + offsety).a);
	alpha += ceil(texture2D(gm_BaseTexture,v_vTexcoord - offsetx + offsety).a);
	alpha += ceil(texture2D(gm_BaseTexture,v_vTexcoord + offsety - offsety).a);
	alpha += ceil(texture2D(gm_BaseTexture,v_vTexcoord - offsety - offsety).a);
	
    gl_FragColor = (v_vColour * (1.0 - originAlpha)) + texture2D(gm_BaseTexture, v_vTexcoord);
	gl_FragColor.a = alpha;
}
