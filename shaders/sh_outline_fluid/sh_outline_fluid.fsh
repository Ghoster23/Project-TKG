//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 size;
uniform float thick;
//uniform vec3 oColor;
uniform float accuracy;
uniform float tol;
uniform vec4 uvs;

const float rad_circle = 6.28319;

const vec3 cSlime = vec3(0.478, 0.780, 0.082);
const vec3 cWater = vec3(0.286, 0.773, 0.969);
const vec3 cBlood = vec3(0.400, 0.000, 0.020);
const vec3 cIce   = vec3(0.675, 0.867, 0.910);

void main()
{
    vec4 col     = texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
    bool outline = false;
 
    for(float i=1.0; i<=thick; i++){
        for(float d=0.0; d<rad_circle; d+=rad_circle/accuracy){
			vec2 check_pos = v_vTexcoord + i*vec2(cos(d)*size.x, -sin(d)*size.y);
            vec4 datPixel =  texture2D( gm_BaseTexture, check_pos);
            
			bool out_bound = check_pos.x < uvs.r || check_pos.y < uvs.g || check_pos.x > uvs.b || check_pos.y > uvs.a; 
			
            if(datPixel.a > tol && gl_FragColor.a <= tol && !out_bound){
                outline = true;
				
				if      (datPixel.r - cSlime.r < 0.001 && datPixel.g - cSlime.g < 0.001 && datPixel.b - cSlime.b < 0.001){
					gl_FragColor = vec4(0.024, 0.263, 0.212,0.5);
					
				}else if(datPixel.r - cWater.r < 0.001 && datPixel.g - cWater.g < 0.001 && datPixel.b - cWater.b < 0.001){
					gl_FragColor = vec4(0.580, 0.922, 0.969, 0.5);
					
				}else if(datPixel.r - cBlood.r < 0.001 && datPixel.g - cBlood.g < 0.001 && datPixel.b - cBlood.b < 0.001){
					gl_FragColor = vec4(0.235, 0.482, 0.118, 1.0);
					
				}else if(datPixel.r - cIce.r < 0.001 && datPixel.g - cIce.g < 0.001 && datPixel.b - cIce.b < 0.001){
					gl_FragColor = vec4(0.898, 0.965, 1.000, 0.5);
					
				}else {
					gl_FragColor = vec4(  1.0,   1.0,   1.0, 1.0);
					
				}
				break;
            }
        }
		if (outline) break;
    }
}