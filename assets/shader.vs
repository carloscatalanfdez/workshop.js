attribute vec3 aVertexPosition;
attribute vec3 aNormalPosition;

varying vec4 vertexPosEye;
varying vec4 normalEye;

uniform mat4 uNormalMatrix;
uniform mat4 uMVMatrix;
uniform mat4 uMVPMatrix;
uniform mat4 uPMatrix;

void main(void) {
    gl_Position = uMVPMatrix * vec4(aVertexPosition, 1.0);
    vertexPosEye = uMVMatrix * vec4(aVertexPosition, 1.0);
    
    normalEye = uNormalMatrix * vec4(aNormalPosition, 1.0);
}
