{ config, pkgs, ... }:
{
	home.username = "corum";
	home.homeDirectory = "/home/corum";
	home.packages = with pkgs; [ keepassxc github-desktop thunderbird neofetch ];
	dconf.settings = {
		"org/gnome/desktop/interface" = {
			color-scheme = "prefer-dark";
		};
	};
	programs.firefox.enable = true;

	programs.bash.enable = true;
  	programs.bash.initExtra = ''${pkgs.neofetch}/bin/neofetch'';
	
	home.stateVersion = "25.05";
}
