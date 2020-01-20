#version 110
#ifdef GL_ARB_shading_language_420pack
#extension GL_ARB_shading_language_420pack : require
#endif

uniform sampler2D tex;

varying vec4 fragmentColor;
varying vec2 texCoord;

void main()
{
    gl_FragData[0] = vec4(fragmentColor.xyz, texture2D(tex, texCoord).x * fragmentColor.w);
}

