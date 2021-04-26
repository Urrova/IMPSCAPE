//Glass Junks
class GJunk : GlassJunk replaces GlassJunk{
	int frame;
	
	default{
		+NOCLIP;
		+NOBLOCKMAP;
		speed 8;
		vspeed 3;
	}	

	states{
		spawn:
			TNT1 A 0 {
				//Tres sprites aleatorios, el numero lo tiene la variable frame
				frame=random(0,2);
				
				if (frame==1){
					A_Jump(256,"spr2");
				}
				else if (frame==2){
					A_Jump(256,"spr2");
				}
				
			}
			JUNK A -1; //Si frame es 0
			stop;
		
		spr2:
			JUNK B -1; //1
			stop;
		
		spr3:
			JUNK B -1; //2
			stop;
	}
}