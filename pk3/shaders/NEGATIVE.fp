/////SHADER NEGATIVO/////

void main(){
	vec4 pcolor = texture(InputTexture, TexCoord);
	
	//Resta el color de pcolor a 1.0 para hacerlo negativo
	FragColor.r = 1.0-pcolor.r;
	FragColor.g = 1.0-pcolor.g;
	FragColor.b = 1.0-pcolor.b;
}