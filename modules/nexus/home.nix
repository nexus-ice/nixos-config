{ config, pkgs, ... }:
{
	home.username = "corum";
	home.homeDirectory = "/home/corum";
	home.packages = with pkgs; [ keepassxc ];
	dconf.settings = {
		"org/gnome/desktop/interface" = {
			color-scheme = "prefer-dark";
		};
	};
	home.stateVersion = "25.05";
}
