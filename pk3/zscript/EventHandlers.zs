class ShaderHandler : StaticEventHandler {
	override void RenderOverlay(RenderEvent e) {
		PlayerInfo p = players[consoleplayer];
		
		switch (CVar.GetCVar("Shader",p).GetInt()){
		case 0:
			Shader.SetEnabled(p, "Stereo3D", false);
			Shader.SetEnabled(p, "Contrast", false);
			Shader.SetEnabled(p, "Negative", false);
			break;
		
		case 1:
			Shader.SetEnabled(p, "Stereo3D", false);
			Shader.SetEnabled(p, "Contrast", false);
			Shader.SetEnabled(p, "Negative", true);
			break;
		
		case 2:
			Shader.SetEnabled(p, "Stereo3D", true);
			Shader.SetEnabled(p, "Contrast", false);
			Shader.SetEnabled(p, "Negative", false);
			Shader.SetUniform1f(p, "Stereo3D", "displacement", CVar.GetCVar("shd_s3d_disp",p).GetFloat());
			break;
			
		case 3:
			Shader.SetEnabled(p, "Contrast", true);
			Shader.SetEnabled(p, "Negative", false);
			Shader.SetEnabled(p, "Stereo3D", false);
			Shader.SetUniform1f(p, "Contrast", "contrast", CVar.GetCVar("shd_cntr_contrast",p).GetFloat());
			break;
		}
	}
}