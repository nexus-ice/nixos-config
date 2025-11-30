{pkgs, ...}:
{
  	nixpkgs.config.allowUnfree = true;

  	environment.systemPackages = with pkgs; [ mc just ];

  	programs.git.enable = true;
  	programs.git.config = {
  		user.name = "nexus-ice";
  		user.email = "nexusice1234@googlemail.com";
  	};

	services.openssh.enable = true;
	services.openssh.allowSFTP = true;
	services.openssh.openFirewall = true;
	services.openssh.settings.PermitRootLogin = "yes";
}
