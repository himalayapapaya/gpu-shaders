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
    float radius = slider / 5.0;
    
    vec2 center1 = vec2(0.3,0.45);
    vec2 center2 = vec2(0.1,0.7);
    vec2 center3 = vec2(0.7,0.2);
    vec2 center4 = vec2(0.9,0.8);
    vec2 center5 = vec2(0.1,0.2);
    vec2 center6 = vec2(0.8,0.6);

    if (sqrt(((v_texcoord.x - center1.x) * (v_texcoord.x - center1.x)) + ((v_texcoord.y - center1.y) * (v_texcoord.y - center1.y))) > radius) {
       gl_FragColor = vec4(u_color, 1.0);
    } else {
        discard;
    }
    
    if (sqrt(((v_texcoord.x - center2.x) * (v_texcoord.x - center2.x)) + ((v_texcoord.y - center2.y) * (v_texcoord.y - center2.y))) > radius) {
       gl_FragColor = vec4(u_color, 1.0);
    } else {
        discard;
    }

    if (sqrt(((v_texcoord.x - center3.x) * (v_texcoord.x - center3.x)) + ((v_texcoord.y - center3.y) * (v_texcoord.y - center3.y))) > radius) {
       gl_FragColor = vec4(u_color, 1.0);
    } else {
        discard;
    }

    if (sqrt(((v_texcoord.x - center4.x) * (v_texcoord.x - center4.x)) + ((v_texcoord.y - center4.y) * (v_texcoord.y - center4.y))) > radius) {
       gl_FragColor = vec4(u_color, 1.0);
    } else {
        discard;
    }

    if (sqrt(((v_texcoord.x - center5.x) * (v_texcoord.x - center5.x)) + ((v_texcoord.y - center5.y) * (v_texcoord.y - center5.y))) > radius) {
       gl_FragColor = vec4(u_color, 1.0);
    } else {
        discard;
    }

    if (sqrt(((v_texcoord.x - center6.x) * (v_texcoord.x - center6.x)) + ((v_texcoord.y - center6.y) * (v_texcoord.y - center6.y))) > radius) {
       gl_FragColor = vec4(u_color, 1.0);
    } else {
        discard;
    }
}
