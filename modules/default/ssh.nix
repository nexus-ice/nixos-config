{
	services.openssh.enable = true;
	services.openssh.allowSFTP = true;
	services.openssh.openFirewall = true;
	services.openssh.settings.PermitRootLogin = "yes";
}
