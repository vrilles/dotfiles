#version 330

in vec2 texcoord;
uniform sampler2D tex;
uniform float opacity;

vec4 default_post_processing(vec4 c);

vec4 window_shader() {
	vec2 texsize = textureSize(tex, 0);
	vec4 color = texture2D(tex, texcoord / texsize, 0);

	// luminance
	float luminance = dot(color.rgb, vec3(0.2126, 0.7152, 0.0722));

	// blend
	color.rgb = mix(color.rgb, vec3(luminance), 0.95);

	// apply
	color = vec4(color.rgb * opacity, color.a * opacity);

	return default_post_processing(color);
}
