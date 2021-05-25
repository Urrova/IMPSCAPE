void main(){
    vec2 uv = TexCoord.xy;
    vec4 tex_color;
    tex_color.r = texture(InputTexture, vec2(uv.x + displacement, uv.y)).x;
    tex_color.g = texture(InputTexture, vec2(uv.x, uv.y)).y;
    tex_color.b = texture(InputTexture, vec2(uv.x - displacement, uv.y)).z;
    tex_color.a = texture(InputTexture, vec2(uv.x, uv.y)).a;
    FragColor.rgba = tex_color;
}

