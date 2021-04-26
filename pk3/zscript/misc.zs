///////////PARTICULAS////////////////
class PlasmaShotgunParticle : Actor{
	default{
		+NOCLIP;
		+NOGRAVITY;
		+FLOAT;
		translation 2;
		renderstyle "Add";
	}
	states{
		Spawn:
			APLS A	 2 bright{
				A_FadeOut(0.1,FTF_REMOVE);
			}
			Loop;
	}
}