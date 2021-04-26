///////////////////////////ENEMY MARINES/////////////////////////////
class ShotgunMarineEnemy : MarineShotgun{
	Default{
		Health 70;
		Monster;
		+COUNTKILL;
		+NOINFIGHTING;
	}
	States{
		Missile:
		PLAY E 5 A_M_CheckAttack;
		PLAY F 10 Bright A_M_FireShotgun;
		Goto See;
	}
}

class PistolMarineEnemy : MarinePistol{
	Default{
		Health 70;
		Monster;
		+COUNTKILL;
		+NOINFIGHTING;
	}
	States{
		Missile:
		PLAY E 5 A_FaceTarget;
		PLAY F 6 Bright A_M_FirePistol(1);
		PLAY A 5 A_FaceTarget;
		PLAY A 2 A_M_Refire;
		PLAY A 3;
		Goto See;
	}
}

class FistMarineEnemy : MarineFist{
	Default{
		Health 70;
		Monster;
		+COUNTKILL;
		+NOINFIGHTING;
	}
	States{
		Melee:
		PLAY E 4 A_FaceTarget;
		PLAY E 4 A_M_Punch(1);
		PLAY A 9;
		PLAY A 0 A_M_Refire(1);
		Loop;
		PLAY A 5 A_FaceTarget;
		Goto See;
	}
}

class ChaingunMarineEnemy : MarineChaingun{
	Default{
		Health 70;
		Monster;
		+COUNTKILL;
		+NOINFIGHTING;
	}
	States{
		Missile:
			PLAY E 4 A_FaceTarget;
			PLAY FF 4 Bright A_M_FireCGun(1);
			PLAY FF 4 Bright A_M_FireCGun(0);
			PLAY A 0 A_M_Refire;
			Goto Missile+3;
			PLAY A 0;
			Goto See;
	}
}

class RocketMarineEnemy : MarineRocket{
	Default{
		Health 70;
		Monster;
		+COUNTKILL;
		+NOINFIGHTING;
	}
	States{
		Missile:
			PLAY E 8;
			PLAY F 6 Bright A_M_FireMissile;
			PLAY E 6;
			PLAY A 0 A_M_Refire;
			Loop;
			PLAY A 0;
			Goto See;
	}
}

class PlasmaMarineEnemy : MarinePlasma{
	Default{
		Health 70;
		Monster;	
		+COUNTKILL;
		+NOINFIGHTING;
	}
	States{
		Missile:
			PLAY E 2 A_FaceTarget;
			PLAY E 0 A_FaceTarget;
			PLAY F 8 Bright A_M_FirePlasma;
			PLAY A 0 A_M_Refire;
			Goto Missile+1;
			PLAY A 0;
			Goto See;
	}
}

//Una version menos poderosa del marin con el rifle de plasma
//Y para que sea mas variado tira tiros de aracnhotron
class SubPlasmaMarineEnemy : MarinePlasma{
	Default{
		Health 70;
		Monster;	
		+COUNTKILL;
		+NOINFIGHTING;
	}
	States{
		Missile:
			PLAY E 2 A_FaceTarget;
			PLAY E 0 A_FaceTarget;
			PLAY F 11 Bright A_BspiAttack;
			PLAY A 0 A_M_Refire;
			Goto Missile+1;
			PLAY A 0;
			Goto See;
	}
}

// Marin armado con la escopeta de plasma
// (Un spread de balas de plasma)
class PlasmaShotgunMarineEnemy : MarinePlasma{
	Default{
		Health 70;
		Monster;	
		+COUNTKILL;
		+NOINFIGHTING;
	}
	States{
		Missile:
			PLAY E 2 A_FaceTarget;
			PLAY E 0 A_FaceTarget;
			PLAY F 0 Bright{
				A_SpawnProjectile("PlasmaShotgunBall",32,0,random(-15,15));
				A_SpawnProjectile("PlasmaShotgunBall",32,0,random(-15,15));
				A_SpawnProjectile("PlasmaShotgunBall",32,0,random(-15,15));
				A_SpawnProjectile("PlasmaShotgunBall",32,0,random(-15,15));
				A_SpawnProjectile("PlasmaShotgunBall",32,0,random(-15,15));
			}
			PLAY A 10;
			Goto See;
	}
}

class BFGMarineEnemy : MarineBFG{
	Default{
		Health 70;
		Monster;
		+COUNTKILL;
		+NOINFIGHTING;
	}
	States{
		Missile:
			PLAY E 5 A_M_BFGSound;
			PLAY EEEEE 5 A_FaceTarget;
			PLAY F 6 Bright A_M_FireBFG;
			PLAY A 4 A_FaceTarget;
			PLAY A 0 A_M_Refire;
			Loop;
			PLAY A 0;
			Goto See;
	}
}

class ChainsawMarineEnemy : MarineChainsaw{
	Default{
		Health 70;
		Monster;
		+COUNTKILL;
		+NOINFIGHTING;
	}
	States{
		Meele:
			PLAY E 4 A_MarineNoise;
			PLAY E 4 A_M_Saw;
			PLAY E 0 A_M_SawRefire;
			Goto Melee+1;
			PLAY A 0;
			Goto See;
	}
}

class SShotgunMarineEnemy : MarineSSG{
	Default{
		Health 70;
		Monster;
		+COUNTKILL;
		+NOINFIGHTING;
	}
	States{
		Missile:
			PLAY E 3 A_M_CheckAttack;
			PLAY F 7 Bright A_M_FireShotgun2;
			Goto See;
	}
}

class RailgunMarineEnemy : MarineRailgun{
	Default{
		Health 70;
		Monster;
		+COUNTKILL;
		+NOINFIGHTING;
	}
	States{
		Missile:
			PLAY E 4 A_M_CheckAttack;
			PLAY F 6 Bright A_M_FireRailgun;
			Goto See;
	}
}


///////////////////CONTROLLED MONSTERS////////////////////////////

class ControlledImp : DoomImp{
	default{
		Translation "Ice";
		bloodcolor "00 FF 00";
		+NOINFIGHTING;
	}
	states{
		Melee:
		Missile:
			TROO EF 8 A_FaceTarget;
			TROO G 0 A_TroopAttack;
			TROO G 6 A_SpawnProjectile("DoomImpBall",32.0,0,random(-15,15));
			Goto See;
	}
}

class ControlledPinky : Demon{
	default{
		Translation "Ice";
		bloodcolor "00 FF 00";
		+NOINFIGHTING;
	}
}

class ControlledHellKnight : HellKnight{
	default{
		Translation "Ice";
		bloodcolor "00 FF 00";
		+NOINFIGHTING;
	}
}

class ControlledBaronOfHell : BaronOfHell{
	default{
		Translation "Ice";
		bloodcolor "00 FF 00";
		+NOINFIGHTING;
	}
}

class ControlledLostSoul : LostSoul{
	default{
		Translation "Ice";
		bloodcolor "00 FF 00";
		+NOINFIGHTING;
	}
}

class ControlledArachnotron : Arachnotron{
	default{
		Translation "Ice";
		bloodcolor "00 FF 00";
		+NOINFIGHTING;
	}
}

class ControlledArchvile : Archvile{
	default{
		Translation "Ice";
		bloodcolor "00 FF 00";
		+NOINFIGHTING;
	}
}

class ControlledCacodemon : Cacodemon{
	default{
		Translation "Ice";
		bloodcolor "00 FF 00";
		+NOINFIGHTING;
	}
}

class ControlledCyberdemon : Cyberdemon{
	default{
		Translation "Ice";
		bloodcolor "00 FF 00";
		+NOINFIGHTING;
	}
}

class ControlledFatso : Fatso{
	default{
		Translation "Ice";
		bloodcolor "00 FF 00";
		+NOINFIGHTING;
	}
}

class ControlledPainElemental : PainElemental{
	default{
		Translation "Ice";
		bloodcolor "00 FF 00";
		+NOINFIGHTING;
	}
}

class ControlledRevenant : Revenant{
	default{
		Translation "Ice";
		bloodcolor "00 FF 00";
		+NOINFIGHTING;
	}
}

class ControlledSpiderMastermind : SpiderMastermind{
	default{
		Translation "Ice";
		bloodcolor "00 FF 00";
		+NOINFIGHTING;
	}
}
