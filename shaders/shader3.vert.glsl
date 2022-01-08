// Automatically provided by three.js
//
// uniform mat4 modelMatrix;
// uniform mat4 modelViewMatrix;
// uniform mat4 projectionMatrix;
// uniform mat4 viewMatrix;
// uniform mat3 normalMatrix;
// uniform vec3 cameraPosition;
// uniform bool isOrthographic;
// attribute vec3 position;
// attribute vec3 normal;
// attribute vec2 uv;

// interpolate the normal and texture coordinates across the surface
varying vec3 v_normal;
varying vec2 v_texcoord;
uniform float t;

void main() {
    vec3 newNormal = vec3(-cos(position.x + t), 1.0, 0.5);
    newNormal = normalize(newNormal);
    v_normal = mat3(normalMatrix) * newNormal;

    v_texcoord = uv;

    float newZ =  sin(position.x + t);
    vec3 newPos = vec3(position.x, position.y, newZ);

    gl_Position = projectionMatrix * modelViewMatrix * vec4( newPos, 1.0 );
}