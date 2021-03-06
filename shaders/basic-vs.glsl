#version 330

layout(location = 0)in vec3 position;
layout(location = 1)in vec3 color;
layout(location = 2)in vec2 normalTexel;

uniform mat4 u_proj_matrix;
uniform mat4 u_model_matrix;

smooth out vec4 theColor;
smooth out vec2 theNormalTexel;

void main()
{
	gl_Position = u_proj_matrix * u_model_matrix * vec4(position, 1.0);
	theColor = vec4(color, 1.0);
	theNormalTexel = normalTexel;
}
