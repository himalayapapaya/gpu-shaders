// Automatically provided by three.js
//
// uniform mat4 viewMatrix;
// uniform vec3 cameraPosition;
// uniform bool isOrthographic;

varying vec3 v_normal;
varying vec2 v_texcoord;

uniform vec3 u_color;
uniform sampler2D u_colorTexture;
uniform vec3 u_ambient;
uniform float slider;

void main() {

    // calculate diffuse color by using uv coordinates and slider value
    vec4 diffuse;
    float u = v_texcoord.x;
    float v = v_texcoord.y;
    float numSquares = 5.0 + floor(slider * 15.0);
    u /= (1.0 / numSquares);
    u = floor(u);
    v /= (1.0 / numSquares);
    v = floor(v);
    float isBlack = 0.0;
    isBlack += u - (2.0 * floor(u / 2.0));
    isBlack += v - (2.0 * floor(v / 2.0));
    isBlack -= (2.0 * floor(isBlack / 2.0));
    if (isBlack == 0.0) {
        diffuse = vec4(0, 0, 0, 1);
    } else {
        diffuse = vec4(1, 1, 1, 1);
    }

    // final color is diffuse
    gl_FragColor = (diffuse);
}
