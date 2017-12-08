#version 430 core

layout(local_size_x = 1, local_size_y = 1) in;
layout(rgba32f, binding = 0) uniform image2D img;

void main() {
	vec4 pixel = vec4(0.0, 0.0, 0.0, 1.0);
	ivec2 coords = ivec2(gl_GlobalInvocationID.xy);

	int i = 1, j = 0;
	while (true) {
		if (j == 0) {
			i++;
			if (i == 10) {
				j = 1;
			}
		} else if (i > 0)
			i--;
		else
			break;
	}

	imageStore(img, coords, pixel);
}

