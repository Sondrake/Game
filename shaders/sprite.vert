#version 140

in vec2 position;
in vec3 color;
in vec2 tex_coords;

out vec2 v_tex_coords;
out vec3 v_color;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main() {
    gl_Position = projection * view * model * vec4(position, 0.0f, 1.0f);
    v_tex_coords = tex_coords;
    v_color = color;
}