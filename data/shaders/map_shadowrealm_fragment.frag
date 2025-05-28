uniform sampler2D u_Tex0;
varying vec2 v_TexCoord;
varying vec2 v_WorldPos;
uniform vec2 u_Resolution;
uniform float u_Time;

// Shadow realm parameters
const float GRAYSCALE_STRENGTH = 0.8;      // How much to desaturate (0-1)
const float INVERT_STRENGTH = 0.5;         // How much to invert colors (0-1)
const float VIGNETTE_DARKNESS = 0.85;      // How dark the vignette gets
const float VIGNETTE_SIZE = 0.7;           // Size of vignette (smaller = larger effect)
const float SHADOW_WAVER = 0.3;            // Strength of shadow wavering
const vec3 SHADOW_COLOR = vec3(0.05, 0.0, 0.1); // Dark purple shadow color

// Noise functions
float hash(float n) {
    return fract(sin(n) * 43758.5453);
}

// 2D noise
float noise2d(vec2 p) {
    vec2 i = floor(p);
    vec2 f = fract(p);
    f = f * f * (3.0 - 2.0 * f);
    
    float n = i.x + i.y * 57.0;
    return mix(
        mix(hash(n), hash(n + 1.0), f.x),
        mix(hash(n + 57.0), hash(n + 58.0), f.x),
        f.y
    );
}

// Calculate vignette effect
float vignette(vec2 uv, float size, float smoothness) {
    uv = uv * 2.0 - 1.0;
    float radialDist = length(uv) / size;
    return smoothstep(1.0, 1.0 - smoothness, radialDist);
}

// Shadow tendrils effect
float shadowTendrils(vec2 position, float time) {
    // Create animated shadow tendrils
    vec2 pos = position * 0.01;
    
    // Add slow movement
    pos.x += time * 0.05;
    pos.y -= time * 0.03;
    
    // Create base tendril pattern
    float shadow = noise2d(pos);
    
    // Add secondary smaller details
    shadow += noise2d(pos * 2.0 + vec2(time * 0.2)) * 0.5;
    
    // Create contrast in the shadows
    shadow = smoothstep(0.4, 0.6, shadow);
    
    return shadow * SHADOW_WAVER;
}

void main() {
    // Sample original texture
    vec4 color = texture2D(u_Tex0, v_TexCoord);
    
    // Calculate strong vignette
    float vig = vignette(v_TexCoord, VIGNETTE_SIZE, 0.6);
    vig = pow(vig, 2.0); // Sharpen vignette edge
    
    // Shadow tendril effect
    float shadowEffect = shadowTendrils(v_WorldPos, u_Time);
    
    // Convert to grayscale
    float luminance = dot(color.rgb, vec3(0.299, 0.587, 0.114));
    vec3 grayscale = vec3(luminance);
    
    // Apply partial color inversion
    vec3 inverted = 1.0 - color.rgb;
    
    // Mix the inverted and grayscale effects
    vec3 colorEffect = mix(grayscale, inverted, INVERT_STRENGTH);
    
    // Apply shadow color to dark areas
    colorEffect = mix(colorEffect, SHADOW_COLOR, (1.0 - luminance) * 0.6);
    
    // Apply color effects
    color.rgb = mix(color.rgb, colorEffect, GRAYSCALE_STRENGTH);
    
    // Apply shadow tendrils (darker in tendril areas)
    color.rgb *= 1.0 - shadowEffect * 0.3;
    
    // Apply vignette (strong shadows on edges)
    color.rgb *= mix(1.0 - VIGNETTE_DARKNESS, 1.0, vig);
    
    // Overall darkening
    color.rgb *= 0.7;
    
    // Add subtle purple tint to shadows
    color.rgb = mix(color.rgb, SHADOW_COLOR, (1.0 - luminance) * 0.3);
    
    gl_FragColor = color;
} 