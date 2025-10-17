{ config, pkgs, ... }:
{
	home.username = "corum";
	home.homeDirectory = "/home/corum";
	home.packages = with pkgs; [ keepassxc github-desktop thunderbird ];
	dconf.settings = {
		"org/gnome/desktop/interface" = {
			color-scheme = "prefer-dark";
		};
	};
	programs.firefox.enable = true;
	
	home.stateVersion = "25.05";
}
