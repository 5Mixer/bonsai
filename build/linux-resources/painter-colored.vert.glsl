#version 110
#ifdef GL_ARB_shading_language_420pack
#extension GL_ARB_shading_language_420pack : require
#endif

uniform mat4 projectionMatrix;

attribute vec3 vertexPosition;
varying vec4 fragmentColor;
attribute vec4 vertexColor;

void main()
{
    gl_Position = projectionMatrix * vec4(vertexPosition, 1.0);
    fragmentColor = vertexColor;
}

