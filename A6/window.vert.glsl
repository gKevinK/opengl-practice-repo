#version 430 core
layout (location = 0) in vec2 aPos;
layout (location = 1) in vec2 aTexCoord;

out vec2 TexCoord;

uniform float x;
uniform float y;
uniform float w;
uniform float h;

void main()
{
    gl_Position = vec4(aPos.x, aPos.y, -1.0, 1.0); 
    TexCoord = aTexCoord;
}