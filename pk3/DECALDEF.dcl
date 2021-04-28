//Bola del jugador
generator impplayerball DoomImpScorch

//Agujero del cañon laser de MAP03 (parecido a uno de bfg).
decal GiantLaserCannonScorch 1001{
	pic BFGSCRC1
	shade "00 00 00"
	randomflipx
	randomflipy
	x-scale 4
	y-scale 4
}
decal GiantLaserCannonLightning1 1002{
	pic BFGLITE1
	shade "ff 0 0"
	fullbright
	randomflipx
	randomflipy
	x-scale 2
	y-scale 2
	lowerdecal GiantLaserCannonLightning
}
decal GiantLaserCannonLightning2 1003{
	pic BFGLITE2
	shade "ff 0 66"
	fullbright
	randomflipx
	randomflipy
	x-scale 2
	y-scale 2
	lowerdecal GiantLaserCannonLightning
}


////////////////////////////// Animated UAC Logo ////////////////////////////////
fader LetterFader{
	DecayStart 0
	DecayTime 0.25
}

stretcher LetterStretcher{
	GoalX 1.5
	GoalY 1.5
	StretchStart 0
	StretchTime 0.25
}

Combiner LetterAnimate{
	LetterFader
	LetterStretcher
}

//RED
decal RedU
{
   pic REDU
   x-scale 0.5
   y-scale 0.5
   add 1
   fullbright
   animator LetterAnimate
}

decal RedA
{
   pic REDA
   x-scale 0.5
   y-scale 0.5
   add 1
   fullbright
   animator LetterAnimate
}

decal RedC
{
   pic REDC
   x-scale 0.5
   y-scale 0.5
   add 1
   fullbright
   animator LetterAnimate
}

//GREEN
decal GreenU
{
   pic GREENU
   x-scale 0.5
   y-scale 0.5
   add 1
   fullbright
   animator LetterAnimate
}

decal GreenA
{
   pic GREENA
   x-scale 0.5
   y-scale 0.5
   add 1
   fullbright
   animator LetterAnimate
}

decal GreenC
{
   pic GREENC
   x-scale 0.5
   y-scale 0.5
   add 1
   fullbright
   animator LetterAnimate
}

//BLUE
decal BlueU
{
   pic BLUEU
   x-scale 0.5
   y-scale 0.5
   add 1
   fullbright
   animator LetterAnimate
}

decal BlueA
{
   pic BLUEA
   x-scale 0.5
   y-scale 0.5
   add 1
   fullbright
   animator LetterAnimate
}

decal BlueC
{
   pic BLUEC
   x-scale 0.5
   y-scale 0.5
   add 1
   fullbright
   animator LetterAnimate
}

//YELLOW
decal YellowU
{
   pic YELLOWU
   x-scale 0.5
   y-scale 0.5
   add 1
   fullbright
   animator LetterAnimate
}

decal YellowA
{
   pic YELLOWA
   x-scale 0.5
   y-scale 0.5
   add 1
   fullbright
   animator LetterAnimate
}

decal YellowC
{
   pic YELLOWC
   x-scale 0.5
   y-scale 0.5
   add 1
   fullbright
   animator LetterAnimate
}
