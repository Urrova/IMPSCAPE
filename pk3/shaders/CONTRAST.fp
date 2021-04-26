void main()
{ 
    vec4 colour = texture2D(InputTexture,TexCoord);
	float brightness_amount = 0;
    FragColor = vec4( (colour.rgb+brightness_amount) * (1.0+contrast)/1.0, colour.a);
}
