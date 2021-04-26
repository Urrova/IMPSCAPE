class PlasmaShotgunBall : ArachnotronPlasma{
	default{
		translation 2;
	}
	states{
		Spawn:
			APLS AB 5 Bright{
				A_SpawnItem("PlasmaShotgunParticle");
			}
			Loop;
	}
}