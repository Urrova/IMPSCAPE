class FirePowerUp : inventory{
	default{
		inventory.amount 1;
		inventory.maxamount 5;
		inventory.PickUpMessage "Firepower upgraded! Now you shoot faster";
	}
	states{
    Spawn:
      MANA ABC 5;
      loop;
     }
}